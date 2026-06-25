package com.note.service;
import com.note.dto.response.PageResult;
import com.note.dto.response.UserProfileResponse;
import com.note.dto.response.UserSimpleResponse;
public interface UserService {
    UserProfileResponse getUserProfile(Long targetUserId, Long currentUserId);
    PageResult<UserSimpleResponse> getFollowing(Long userId, int page, int size, Long currentUserId);
    PageResult<UserSimpleResponse> getFollowers(Long userId, int page, int size, Long currentUserId);
    void follow(Long followerId, Long followeeId);
    void unfollow(Long followerId, Long followeeId);
    PageResult<UserSimpleResponse> search(String keyword, int page, int size, Long currentUserId);
}
