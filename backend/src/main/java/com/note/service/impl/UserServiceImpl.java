package com.note.service.impl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.note.dto.response.PageResult;
import com.note.dto.response.UserProfileResponse;
import com.note.dto.response.UserSimpleResponse;
import com.note.entity.User;
import com.note.entity.UserFollow;
import com.note.exception.BusinessException;
import com.note.mapper.UserFollowMapper;
import com.note.mapper.UserMapper;
import com.note.redis.RedisService;
import com.note.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class UserServiceImpl implements UserService {

    public UserServiceImpl(UserMapper userMapper, UserFollowMapper userFollowMapper, RedisService redisService) {
        this.userMapper = userMapper;
        this.userFollowMapper = userFollowMapper;
        this.redisService = redisService;
    }
    private final UserMapper userMapper;
    private final UserFollowMapper userFollowMapper;
    private final RedisService redisService;
    @Override
    public UserProfileResponse getUserProfile(Long targetUserId, Long currentUserId) {
        User user = userMapper.selectById(targetUserId);
        if (user == null) throw new BusinessException("用户不存在");
        boolean isFollowing = currentUserId != null &&
            redisService.isMember("following:" + currentUserId, String.valueOf(targetUserId));
        UserProfileResponse resp = new UserProfileResponse();
        resp.setUserId(user.getId());
        resp.setUsername(user.getUsername());
        resp.setAvatar(user.getAvatar() == null ? "" : "/" + user.getAvatar());
        resp.setBio(user.getBio() == null ? "" : user.getBio());
        resp.setNoteCount(user.getNoteCount());
        resp.setFollowingCount(user.getFollowingCount());
        resp.setFollowerCount(user.getFollowerCount());
        resp.setTotalLikes(user.getTotalLikes());
        resp.setIsFollowing(isFollowing);
        return resp;
    }
    @Override
    public PageResult<UserSimpleResponse> getFollowing(Long userId, int page, int size, Long currentUserId) {
        IPage<UserFollow> followPage = userFollowMapper.selectPage(
                new Page<>(page, size),
                new LambdaQueryWrapper<UserFollow>()
                        .eq(UserFollow::getFollowerId, userId)
                        .orderByDesc(UserFollow::getCreatedAt));
        var list = followPage.getRecords().stream().map(f -> {
            User u = userMapper.selectById(f.getFolloweeId());
            return toSimple(u, currentUserId);
        }).toList();
        return new PageResult(list, followPage.getTotal(), followPage.getCurrent(), followPage.getSize());
    }
    @Override
    public PageResult<UserSimpleResponse> getFollowers(Long userId, int page, int size, Long currentUserId) {
        IPage<UserFollow> followPage = userFollowMapper.selectPage(
                new Page<>(page, size),
                new LambdaQueryWrapper<UserFollow>()
                        .eq(UserFollow::getFolloweeId, userId)
                        .orderByDesc(UserFollow::getCreatedAt));
        var list = followPage.getRecords().stream().map(f -> {
            User u = userMapper.selectById(f.getFollowerId());
            return toSimple(u, currentUserId);
        }).toList();
        return new PageResult(list, followPage.getTotal(), followPage.getCurrent(), followPage.getSize());
    }
    @Override
    @Transactional
    public void follow(Long followerId, Long followeeId) {
        if (followerId.equals(followeeId)) throw new BusinessException("不能关注自己");
        if (userFollowMapper.selectCount(new LambdaQueryWrapper<UserFollow>()
                .eq(UserFollow::getFollowerId, followerId)
                .eq(UserFollow::getFolloweeId, followeeId)) > 0) {
            throw new BusinessException("已关注该用户");
        }
        UserFollow uf = new UserFollow();
        uf.setFollowerId(followerId);
        uf.setFolloweeId(followeeId);
        userFollowMapper.insert(uf);
        // In-place increment avoids extra SELECT
        userMapper.update(null, new LambdaUpdateWrapper<User>()
                .eq(User::getId, followerId)
                .setSql("following_count = following_count + 1"));
        userMapper.update(null, new LambdaUpdateWrapper<User>()
                .eq(User::getId, followeeId)
                .setSql("follower_count = follower_count + 1"));
        redisService.addToSet("following:" + followerId, String.valueOf(followeeId));
        redisService.addToSet("followers:" + followeeId, String.valueOf(followerId));
    }
    @Override
    @Transactional
    public void unfollow(Long followerId, Long followeeId) {
        userFollowMapper.delete(new LambdaQueryWrapper<UserFollow>()
                .eq(UserFollow::getFollowerId, followerId)
                .eq(UserFollow::getFolloweeId, followeeId));
        userMapper.update(null, new LambdaUpdateWrapper<User>()
                .eq(User::getId, followerId)
                .setSql("following_count = GREATEST(0, following_count - 1)"));
        userMapper.update(null, new LambdaUpdateWrapper<User>()
                .eq(User::getId, followeeId)
                .setSql("follower_count = GREATEST(0, follower_count - 1)"));
        redisService.removeFromSet("following:" + followerId, String.valueOf(followeeId));
        redisService.removeFromSet("followers:" + followeeId, String.valueOf(followerId));
    }
    @Override
    public PageResult<UserSimpleResponse> search(String keyword, int page, int size, Long currentUserId) {
        IPage<User> userPage = userMapper.selectPage(new Page<>(page, size),
                new LambdaQueryWrapper<User>()
                        .like(User::getUsername, keyword)
                        .orderByDesc(User::getTotalLikes));
        var list = userPage.getRecords().stream()
                .map(u -> toSimple(u, currentUserId)).toList();
        return new PageResult(list, userPage.getTotal(), userPage.getCurrent(), userPage.getSize());
    }
    private UserSimpleResponse toSimple(User u, Long currentUserId) {
        UserSimpleResponse r = new UserSimpleResponse();
        r.setUserId(u.getId());
        r.setUsername(u.getUsername());
        r.setAvatar(u.getAvatar() == null ? "" : "/" + u.getAvatar());
        r.setBio(u.getBio() == null ? "" : u.getBio());
        r.setLikeCount(u.getTotalLikes() == null ? 0 : u.getTotalLikes());
        if (currentUserId != null) {
            boolean following = redisService.isMember("following:" + currentUserId, String.valueOf(u.getId()));
            if (!following) {
                following = userFollowMapper.selectCount(
                    new LambdaQueryWrapper<UserFollow>()
                        .eq(UserFollow::getFollowerId, currentUserId)
                        .eq(UserFollow::getFolloweeId, u.getId())) > 0;
                if (following) {
                    redisService.addToSet("following:" + currentUserId, String.valueOf(u.getId()));
                }
            }
            r.setIsFollowing(following);
        }
        return r;
    }

}
