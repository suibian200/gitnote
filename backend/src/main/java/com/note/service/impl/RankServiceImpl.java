package com.note.service.impl;
import com.note.dto.response.NoteListResponse;
import com.note.dto.response.UserSimpleResponse;
import com.note.entity.Note;
import com.note.entity.User;
import com.note.mapper.NoteMapper;
import com.note.mapper.NoteTagMapper;
import com.note.mapper.UserMapper;
import com.note.redis.RedisService;
import com.note.service.RankService;
import org.springframework.stereotype.Service;
import java.util.*;
import java.util.stream.Collectors;
@Service
public class RankServiceImpl implements RankService {

    public RankServiceImpl(UserMapper userMapper, NoteMapper noteMapper, NoteTagMapper noteTagMapper, RedisService redis) {
        this.userMapper = userMapper;
        this.noteMapper = noteMapper;
        this.noteTagMapper = noteTagMapper;
        this.redis = redis;
    }
    private final UserMapper userMapper;
    private final NoteMapper noteMapper;
    private final NoteTagMapper noteTagMapper;
    private final RedisService redis;
    @Override
    public List<UserSimpleResponse> getHotUsers(Long currentUserId) {
        Set<String> top = redis.getTopN("rank:users:total_likes", 10);
        if (top == null || top.isEmpty()) {
            return userMapper.selectList(null).stream()
                    .sorted((a, b) -> Integer.compare(
                        b.getTotalLikes() == null ? 0 : b.getTotalLikes(),
                        a.getTotalLikes() == null ? 0 : a.getTotalLikes()))
                    .limit(10).map(u -> toSimple(u, currentUserId))
                    .collect(Collectors.toList());
        }
        return top.stream().map(id -> {
            User u = userMapper.selectById(Long.parseLong(id));
            return u == null ? null : toSimple(u, currentUserId);
        }).filter(Objects::nonNull).collect(Collectors.toList());
    }
    @Override
    public List<NoteListResponse> getHotNotes(Long currentUserId) {
        Set<String> top = redis.getTopN("rank:notes:like_count", 10);
        if (top == null || top.isEmpty()) {
            return noteMapper.selectList(null).stream()
                    .filter(n -> !Boolean.TRUE.equals(n.getDeleted()))
                    .sorted((a, b) -> Integer.compare(
                        b.getLikeCount() == null ? 0 : b.getLikeCount(),
                        a.getLikeCount() == null ? 0 : a.getLikeCount()))
                    .limit(10).map(n -> toSimpleNote(n, currentUserId))
                    .collect(Collectors.toList());
        }
        return top.stream().map(id -> {
            Note n = noteMapper.selectById(Long.parseLong(id));
            return n == null || n.getDeleted() ? null : toSimpleNote(n, currentUserId);
        }).filter(Objects::nonNull).collect(Collectors.toList());
    }
    private UserSimpleResponse toSimple(User u, Long currentUserId) {
        UserSimpleResponse r = new UserSimpleResponse();
        r.setUserId(u.getId());
        r.setUsername(u.getUsername());
        r.setAvatar(u.getAvatar() == null ? "" : u.getAvatar());
        r.setLikeCount(u.getTotalLikes() == null ? 0 : u.getTotalLikes());
        r.setIsFollowing(false);
        return r;
    }
    private NoteListResponse toSimpleNote(Note n, Long currentUserId) {
        User author = userMapper.selectById(n.getAuthorId());
        NoteListResponse r = new NoteListResponse();
        r.setId(n.getId());
        r.setTitle(n.getTitle());
        r.setAuthorId(author == null ? null : author.getId());
        r.setAuthorName(author == null ? "" : author.getUsername());
        r.setAuthorAvatar(author == null ? "" : (author.getAvatar() == null ? "" : author.getAvatar()));
        r.setLikeCount(n.getLikeCount());
        r.setCreateTime(n.getCreatedAt());
        return r;
    }

}
