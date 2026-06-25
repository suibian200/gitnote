package com.note.dto.response;
import lombok.Data;
@Data
public class UserProfileResponse {
    private Long userId;
    private String username;
    private String avatar;
    private String bio;
    private Integer noteCount;
    private Integer followingCount;
    private Integer followerCount;
    private Integer totalLikes;
    private Boolean isFollowing;
}
