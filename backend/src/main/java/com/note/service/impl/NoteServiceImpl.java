package com.note.service.impl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.note.dto.request.NoteCreateRequest;
import com.note.dto.request.NoteUpdateRequest;
import com.note.dto.response.NoteDetailResponse;
import com.note.dto.response.NoteListResponse;
import com.note.dto.response.PageResult;
import com.note.entity.*;
import com.note.exception.BusinessException;
import com.note.mapper.*;
import com.note.redis.RedisService;
import com.note.service.NoteService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;
@Service
@RequiredArgsConstructor
public class NoteServiceImpl implements NoteService {
    private final NoteMapper noteMapper;
    private final UserMapper userMapper;
    private final TagMapper tagMapper;
    private final NoteTagMapper noteTagMapper;
    private final NoteLikeMapper noteLikeMapper;
    private final NoteFavoriteMapper noteFavoriteMapper;
    private final UserFollowMapper userFollowMapper;
    private final RedisService redis;
    @Override
    public PageResult<NoteListResponse> getNoteList(int page, int size, String sort,
                                                    String tag, String keyword, Long currentUserId) {
        IPage<Note> notePage = noteMapper.selectPage(new Page<>(page, size),
                new LambdaQueryWrapper<Note>()
                        .eq(Note::getDeleted, false)
                        .eq(tag != null && !tag.isEmpty(), Note::getId, null) // filtered via subquery
                        .like(keyword != null && !keyword.isEmpty(), Note::getTitle, keyword)
                        .orderByDesc("hottest".equals(sort), Note::getLikeCount)
                        .orderByDesc(!"hottest".equals(sort), Note::getCreatedAt));
        var list = notePage.getRecords().stream().map(n -> toListResponse(n, currentUserId)).toList();
        return new PageResult<>(list, notePage.getTotal(), notePage.getCurrent(), notePage.getSize());
    }
    @Override
    public PageResult<NoteListResponse> getNoteDynamic(int page, int size, Long currentUserId) {
        IPage<Note> notePage = noteMapper.selectPage(new Page<>(page, size),
                new LambdaQueryWrapper<Note>()
                        .eq(Note::getDeleted, false)
                        .inSql(Note::getAuthorId,
                            "SELECT followee_id FROM user_follow WHERE follower_id = " + currentUserId)
                        .orderByDesc(Note::getCreatedAt));
        var list = notePage.getRecords().stream().map(n -> toListResponse(n, currentUserId)).toList();
        return new PageResult<>(list, notePage.getTotal(), notePage.getCurrent(), notePage.getSize());
    }
    @Override
    public PageResult<NoteListResponse> getUserNotes(Long userId, int page, int size, Long currentUserId) {
        IPage<Note> notePage = noteMapper.selectPage(new Page<>(page, size),
                new LambdaQueryWrapper<Note>()
                        .eq(Note::getAuthorId, userId)
                        .eq(Note::getDeleted, false)
                        .orderByDesc(Note::getCreatedAt));
        var list = notePage.getRecords().stream().map(n -> toListResponse(n, currentUserId)).toList();
        return new PageResult<>(list, notePage.getTotal(), notePage.getCurrent(), notePage.getSize());
    }
    @Override
    public NoteDetailResponse getNoteDetail(Long noteId, Long currentUserId) {
        Note note = noteMapper.selectById(noteId);
        if (note == null || note.getDeleted()) throw new BusinessException("?????");
        User author = userMapper.selectById(note.getAuthorId());
        List<String> tags = getTagsByNoteId(noteId);
        boolean isLiked = currentUserId != null && 
            redis.isMember("liked:" + currentUserId, String.valueOf(noteId));
        boolean isFavorited = currentUserId != null &&
            noteFavoriteMapper.selectCount(new LambdaQueryWrapper<NoteFavorite>()
                .eq(NoteFavorite::getNoteId, noteId)
                .eq(NoteFavorite::getUserId, currentUserId)) > 0;
        NoteDetailResponse resp = new NoteDetailResponse();
        resp.setId(note.getId());
        resp.setTitle(note.getTitle());
        resp.setContent(note.getContent());
        resp.setTags(tags);
        resp.setAuthorId(author.getId());
        resp.setAuthorName(author.getUsername());
        resp.setAuthorAvatar(author.getAvatar() == null ? "" : author.getAvatar());
        resp.setLikeCount(note.getLikeCount());
        resp.setIsLiked(isLiked);
        resp.setIsFavorited(isFavorited);
        resp.setCreateTime(note.getCreatedAt());
        return resp;
    }
    @Override
    @Transactional
    public Long createNote(NoteCreateRequest req, Long userId) {
        Note note = new Note();
        note.setAuthorId(userId);
        note.setTitle(req.getTitle());
        note.setContent(req.getContent());
        note.setLikeCount(0);
        note.setCommentCount(0);
        note.setFavoriteCount(0);
        note.setDeleted(false);
        noteMapper.insert(note);
        // Tags
        if (req.getTags() != null && !req.getTags().isEmpty()) {
            for (String tagName : req.getTags()) {
                Long tagId = ensureTag(tagName);
                NoteTag nt = new NoteTag();
                nt.setNoteId(note.getId());
                nt.setTagId(tagId);
                noteTagMapper.insert(nt);
            }
        }
        // Update user note count
        userMapper.updateById(new User() {{ 
            setId(userId); 
            setNoteCount(userMapper.selectById(userId).getNoteCount() + 1); 
        }});
        return note.getId();
    }
    @Override
    @Transactional
    public void updateNote(Long noteId, NoteUpdateRequest req, Long userId) {
        Note note = noteMapper.selectById(noteId);
        if (note == null || note.getDeleted()) throw new BusinessException("?????");
        if (!note.getAuthorId().equals(userId)) throw new BusinessException("????");
        note.setTitle(req.getTitle());
        note.setContent(req.getContent());
        noteMapper.updateById(note);
        // Rebuild tags
        noteTagMapper.delete(new LambdaQueryWrapper<NoteTag>().eq(NoteTag::getNoteId, noteId));
        if (req.getTags() != null) {
            for (String tagName : req.getTags()) {
                Long tagId = ensureTag(tagName);
                NoteTag nt = new NoteTag();
                nt.setNoteId(noteId);
                nt.setTagId(tagId);
                noteTagMapper.insert(nt);
            }
        }
        // Clear cache
        redis.delete("note:" + noteId);
    }
    @Override
    @Transactional
    public void deleteNote(Long noteId, Long userId) {
        Note note = noteMapper.selectById(noteId);
        if (note == null || note.getDeleted()) throw new BusinessException("?????");
        if (!note.getAuthorId().equals(userId)) throw new BusinessException("????");
        note.setDeleted(true);
        noteMapper.updateById(note);
        userMapper.updateById(new User() {{
            setId(userId);
            setNoteCount(Math.max(0, userMapper.selectById(userId).getNoteCount() - 1));
        }});
        redis.delete("note:" + noteId);
    }
    @Override
    public List<String> getNoteTags() {
        return tagMapper.selectList(null).stream()
                .map(Tag::getName).collect(Collectors.toList());
    }
    @Override
    @Transactional
    public void likeNote(Long noteId, Long userId) {
        if (noteLikeMapper.selectCount(new LambdaQueryWrapper<NoteLike>()
                .eq(NoteLike::getNoteId, noteId)
                .eq(NoteLike::getUserId, userId)) > 0) return;
        NoteLike nl = new NoteLike();
        nl.setNoteId(noteId);
        nl.setUserId(userId);
        noteLikeMapper.insert(nl);
        noteMapper.updateById(new Note() {{
            setId(noteId);
            setLikeCount(noteMapper.selectById(noteId).getLikeCount() + 1);
        }});
        Note note = noteMapper.selectById(noteId);
        if (note != null) {
            userMapper.updateById(new User() {{
                setId(note.getAuthorId());
                setTotalLikes(userMapper.selectById(note.getAuthorId()).getTotalLikes() + 1);
            }});
            redis.incrementScore("rank:notes:like_count", String.valueOf(noteId), 1);
            redis.incrementScore("rank:users:total_likes", String.valueOf(note.getAuthorId()), 1);
        }
        redis.addToSet("liked:" + userId, String.valueOf(noteId));
    }
    @Override
    @Transactional
    public void unlikeNote(Long noteId, Long userId) {
        noteLikeMapper.delete(new LambdaQueryWrapper<NoteLike>()
                .eq(NoteLike::getNoteId, noteId)
                .eq(NoteLike::getUserId, userId));
        noteMapper.updateById(new Note() {{
            setId(noteId);
            setLikeCount(Math.max(0, noteMapper.selectById(noteId).getLikeCount() - 1));
        }});
        Note note = noteMapper.selectById(noteId);
        if (note != null) {
            userMapper.updateById(new User() {{
                setId(note.getAuthorId());
                setTotalLikes(Math.max(0, userMapper.selectById(note.getAuthorId()).getTotalLikes() - 1));
            }});
            redis.incrementScore("rank:notes:like_count", String.valueOf(noteId), -1);
            redis.incrementScore("rank:users:total_likes", String.valueOf(note.getAuthorId()), -1);
        }
        redis.removeFromSet("liked:" + userId, String.valueOf(noteId));
    }
    private List<String> getTagsByNoteId(Long noteId) {
        return noteTagMapper.selectList(
                new LambdaQueryWrapper<NoteTag>().eq(NoteTag::getNoteId, noteId))
                .stream().map(nt -> {
                    Tag t = tagMapper.selectById(nt.getTagId());
                    return t == null ? "" : t.getName();
                }).filter(s -> !s.isEmpty()).collect(Collectors.toList());
    }
    private Long ensureTag(String tagName) {
        Tag existing = tagMapper.selectOne(new LambdaQueryWrapper<Tag>().eq(Tag::getName, tagName));
        if (existing != null) return existing.getId();
        Tag tag = new Tag();
        tag.setName(tagName);
        tagMapper.insert(tag);
        return tag.getId();
    }
    private NoteListResponse toListResponse(Note n, Long currentUserId) {
        User author = userMapper.selectById(n.getAuthorId());
        List<String> tags = getTagsByNoteId(n.getId());
        String summary = n.getContent().replaceAll("(?s)<[^>]*>", "")
                .replaceAll("[#*>`~\-|]", "").replaceAll("\n+", " ").trim();
        if (summary.length() > 120) summary = summary.substring(0, 120) + "...";
        boolean isLiked = currentUserId != null &&
            redis.isMember("liked:" + currentUserId, String.valueOf(n.getId()));
        NoteListResponse resp = new NoteListResponse();
        resp.setId(n.getId());
        resp.setTitle(n.getTitle());
        resp.setSummary(summary);
        resp.setTags(tags);
        resp.setAuthorId(author.getId());
        resp.setAuthorName(author.getUsername());
        resp.setAuthorAvatar(author.getAvatar() == null ? "" : author.getAvatar());
        resp.setLikeCount(n.getLikeCount());
        resp.setCommentCount(n.getCommentCount());
        resp.setIsLiked(isLiked);
        resp.setCreateTime(n.getCreatedAt());
        return resp;
    }
}
