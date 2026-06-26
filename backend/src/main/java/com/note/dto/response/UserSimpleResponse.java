package com.note.dto.response;
public class UserSimpleResponse {

    public UserSimpleResponse() {}
    private Long userId;
    private String username;
    private String avatar;
    private String bio;
    private Integer likeCount;
    private Boolean isFollowing;

    public UserSimpleResponse(Long userId, String username, String avatar, String bio, Integer likeCount, Boolean isFollowing) {
        this.userId = userId;
        this.username = username;
        this.avatar = avatar;
        this.bio = bio;
        this.likeCount = likeCount;
        this.isFollowing = isFollowing;
    }

    public Long getUserId() { return userId; }
    public void setUserId(Long userId) { this.userId = userId; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getAvatar() { return avatar; }
    public void setAvatar(String avatar) { this.avatar = avatar; }
    public String getBio() { return bio; }
    public void setBio(String bio) { this.bio = bio; }
    public Integer getLikeCount() { return likeCount; }
    public void setLikeCount(Integer likeCount) { this.likeCount = likeCount; }
    public Boolean isFollowing() { return isFollowing; }
    public void setIsFollowing(Boolean isFollowing) { this.isFollowing = isFollowing; }
}
