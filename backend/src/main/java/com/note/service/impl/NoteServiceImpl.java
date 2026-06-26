package com.note.service.impl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
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
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.*;
import java.util.stream.Collectors;
@Service
public class NoteServiceImpl implements NoteService {

    public NoteServiceImpl(NoteMapper noteMapper, UserMapper userMapper, TagMapper tagMapper, NoteTagMapper noteTagMapper, NoteLikeMapper noteLikeMapper, NoteFavoriteMapper noteFavoriteMapper, RedisService redis) {
        this.noteMapper = noteMapper;
        this.userMapper = userMapper;
        this.tagMapper = tagMapper;
        this.noteTagMapper = noteTagMapper;
        this.noteLikeMapper = noteLikeMapper;
        this.noteFavoriteMapper = noteFavoriteMapper;
        this.redis = redis;
    }
    private final NoteMapper noteMapper;
    private final UserMapper userMapper;
    private final TagMapper tagMapper;
    private final NoteTagMapper noteTagMapper;
    private final NoteLikeMapper noteLikeMapper;
    private final NoteFavoriteMapper noteFavoriteMapper;
    private final RedisService redis;
    @Override
    public PageResult<NoteListResponse> getNoteList(int page, int size, String sort,
                                                    String tag, String keyword, Long currentUserId) {
        var wrapper = new LambdaQueryWrapper<Note>()
                .eq(Note::getDeleted, false);
        if (currentUserId != null) {
            wrapper.ne(Note::getAuthorId, currentUserId);
        }
        // Tag filter: resolve tag name to note IDs
        if (tag != null && !tag.isEmpty()) {
            Tag t = tagMapper.selectOne(new LambdaQueryWrapper<Tag>().eq(Tag::getName, tag));
            if (t != null) {
                List<Long> noteIds = noteTagMapper.selectList(
                    new LambdaQueryWrapper<NoteTag>().eq(NoteTag::getTagId, t.getId()))
                    .stream().map(NoteTag::getNoteId).collect(Collectors.toList());
                if (!noteIds.isEmpty()) {
                    wrapper.in(Note::getId, noteIds);
                } else {
                    wrapper.eq(Note::getId, 0L);
                }
            } else {
                wrapper.eq(Note::getId, 0L);
            }
        }
        if (keyword != null && !keyword.isEmpty()) {
            wrapper.like(Note::getTitle, keyword);
        }
        if ("hottest".equals(sort)) {
            wrapper.orderByDesc(Note::getLikeCount);
        } else {
            wrapper.orderByDesc(Note::getCreatedAt);
        }
        IPage<Note> notePage = noteMapper.selectPage(new Page<>(page, size), wrapper);
        var list = notePage.getRecords().stream().map(n -> toListResponse(n, currentUserId)).toList();
        return new PageResult(list, notePage.getTotal(), notePage.getCurrent(), notePage.getSize());
    }
    @Override
    public PageResult<NoteListResponse> getNoteDynamic(int page, int size, Long currentUserId) {
        // Safe: currentUserId comes from JWT token (server-issued), not user input
        IPage<Note> notePage = noteMapper.selectPage(new Page<>(page, size),
                new LambdaQueryWrapper<Note>()
                        .eq(Note::getDeleted, false)
                        .inSql(Note::getAuthorId, "SELECT followee_id FROM user_follow WHERE follower_id = " + currentUserId)
                        .orderByDesc(Note::getCreatedAt));
        var list = notePage.getRecords().stream().map(n -> toListResponse(n, currentUserId)).toList();
        return new PageResult(list, notePage.getTotal(), notePage.getCurrent(), notePage.getSize());
    }
    @Override
    public PageResult<NoteListResponse> getUserNotes(Long userId, int page, int size, Long currentUserId) {
        IPage<Note> notePage = noteMapper.selectPage(new Page<>(page, size),
                new LambdaQueryWrapper<Note>()
                        .eq(Note::getAuthorId, userId)
                        .eq(Note::getDeleted, false)
                        .orderByDesc(Note::getCreatedAt));
        var list = notePage.getRecords().stream().map(n -> toListResponse(n, currentUserId)).toList();
        return new PageResult(list, notePage.getTotal(), notePage.getCurrent(), notePage.getSize());
    }
    @Override
    public NoteDetailResponse getNoteDetail(Long noteId, Long currentUserId) {
        Note note = noteMapper.selectById(noteId);
        if (note == null || note.getDeleted()) throw new BusinessException("笔记不存在");
        User author = userMapper.selectById(note.getAuthorId());
        List<String> tags = getTagsByNoteId(noteId);
        boolean isLiked = currentUserId != null &&
            redis.isMember("like:note:" + noteId, String.valueOf(currentUserId));
        boolean isFavorited = currentUserId != null &&
            noteFavoriteMapper.selectCount(new LambdaQueryWrapper<NoteFavorite>()
                .eq(NoteFavorite::getNoteId, noteId)
                .eq(NoteFavorite::getUserId, currentUserId)) > 0;
        long todayLikes = redis.scard("like:note:" + noteId) == null ? 0L : redis.scard("like:note:" + noteId);
        int mysqlCount = note.getLikeCount() == null ? 0 : note.getLikeCount();
        int totalLikeCount = mysqlCount + (int) todayLikes;
        NoteDetailResponse resp = new NoteDetailResponse();
        resp.setId(note.getId());
        resp.setTitle(note.getTitle());
        resp.setContent(note.getContent());
        resp.setTags(tags);
        resp.setAuthorId(author.getId());
        resp.setAuthorName(author.getUsername());
        resp.setAuthorAvatar(author.getAvatar() == null ? "" : "/" + author.getAvatar());
        resp.setLikeCount(totalLikeCount);
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
        if (req.getTags() != null && !req.getTags().isEmpty()) {
            for (String tagName : req.getTags()) {
                Long tagId = ensureTag(tagName);
                NoteTag nt = new NoteTag();
                nt.setNoteId(note.getId());
                nt.setTagId(tagId);
                noteTagMapper.insert(nt);
            }
        }
        userMapper.update(null, new LambdaUpdateWrapper<User>()
                .eq(User::getId, userId)
                .setSql("note_count = note_count + 1"));
        return note.getId();
    }
    @Override
    @Transactional
    public void updateNote(Long noteId, NoteUpdateRequest req, Long userId) {
        Note note = noteMapper.selectById(noteId);
        if (note == null || note.getDeleted()) throw new BusinessException("笔记不存在");
        if (!note.getAuthorId().equals(userId)) throw new BusinessException("无权修改");
        note.setTitle(req.getTitle());
        note.setContent(req.getContent());
        noteMapper.updateById(note);
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
        redis.delete("note:" + noteId);
    }
    @Override
    @Transactional
    public void deleteNote(Long noteId, Long userId) {
        Note note = noteMapper.selectById(noteId);
        if (note == null || note.getDeleted()) throw new BusinessException("笔记不存在");
        if (!note.getAuthorId().equals(userId)) throw new BusinessException("无权删除");
        note.setDeleted(true);
        noteMapper.updateById(note);
        userMapper.update(null, new LambdaUpdateWrapper<User>()
                .eq(User::getId, userId)
                .setSql("note_count = GREATEST(0, note_count - 1)"));
        redis.delete("note:" + noteId);
    }
    @Override
    public List<String> getNoteTags() {
        return tagMapper.selectList(null).stream()
                .map(Tag::getName).collect(Collectors.toList());
    }
    @Override
    @Transactional
    public com.note.dto.response.LikeResponse likeNote(Long noteId, Long userId) {
        Note note = noteMapper.selectById(noteId);
        if (note == null || note.getDeleted()) {
            throw new BusinessException("笔记不存在");
        }
        if (note.getAuthorId().equals(userId)) {
            throw new BusinessException(400, "不能给自己点赞");
        }
        String redisKey = "like:note:" + noteId;
        if (redis.isMember(redisKey, String.valueOf(userId))) {
            throw new BusinessException(400, "今天已经点赞过了");
        }
        redis.addToSet(redisKey, String.valueOf(userId));
        long todayLikes = redis.scard(redisKey) == null ? 0L : redis.scard(redisKey);
        int mysqlCount = note == null ? 0 : (note.getLikeCount() == null ? 0 : note.getLikeCount());
        long totalLikes = mysqlCount + todayLikes;
        if (note != null) {
            redis.incrementScore("rank:notes:like_count", String.valueOf(noteId), 1);
            redis.incrementScore("rank:users:total_likes", String.valueOf(note.getAuthorId()), 1);
        }
        return new com.note.dto.response.LikeResponse(true, totalLikes);
    }
    @Override
    @Transactional
    public com.note.dto.response.LikeResponse unlikeNote(Long noteId, Long userId) {
        String redisKey = "like:note:" + noteId;
        if (!redis.isMember(redisKey, String.valueOf(userId))) {
            throw new BusinessException(400, "今天没有点赞过");
        }
        redis.removeFromSet(redisKey, String.valueOf(userId));
        long todayLikes = redis.scard(redisKey) == null ? 0L : redis.scard(redisKey);
        Note note = noteMapper.selectById(noteId);
        int mysqlCount = note == null ? 0 : (note.getLikeCount() == null ? 0 : note.getLikeCount());
        long totalLikes = mysqlCount + todayLikes;
        if (note != null) {
            redis.incrementScore("rank:notes:like_count", String.valueOf(noteId), -1);
            redis.incrementScore("rank:users:total_likes", String.valueOf(note.getAuthorId()), -1);
        }
        return new com.note.dto.response.LikeResponse(false, totalLikes);
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
        String summary = n.getContent()
                .replaceAll("!\\[[^\\]]*\\]\\([^)]+\\)", "")   // remove images
                .replaceAll("\\[[^\\]]*\\]\\([^)]+\\)", "")    // remove links
                .replaceAll("[#*>`~\\-|_]", "")                 // remove markdown symbols
                .replaceAll("\n{2,}", "\n")                    // collapse blank lines
                .replace('\n', ' ')                              // newlines to spaces
                .trim();
        if (summary.length() > 120) summary = summary.substring(0, 120) + "...";
        boolean isLiked = currentUserId != null &&
            redis.isMember("like:note:" + n.getId(), String.valueOf(currentUserId));
        long todayLikes = redis.scard("like:note:" + n.getId()) == null ? 0L : redis.scard("like:note:" + n.getId());
        int mysqlCount = n.getLikeCount() == null ? 0 : n.getLikeCount();
        int totalLikeCount = mysqlCount + (int) todayLikes;
        NoteListResponse resp = new NoteListResponse();
        resp.setId(n.getId());
        resp.setTitle(n.getTitle());
        resp.setSummary(summary);
        resp.setTags(tags);
        resp.setAuthorId(author.getId());
        resp.setAuthorName(author.getUsername());
        resp.setAuthorAvatar(author.getAvatar() == null ? "" : "/" + author.getAvatar());
        resp.setLikeCount(totalLikeCount);
        resp.setCommentCount(n.getCommentCount());
        resp.setIsLiked(isLiked);
        resp.setCreateTime(n.getCreatedAt());
        return resp;
    }

}
