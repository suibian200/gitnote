package com.note.dto.response;
public class UserProfileResponse {

    public UserProfileResponse() {}
    private Long userId;
    private String username;
    private String avatar;
    private String bio;
    private Integer noteCount;
    private Integer followingCount;
    private Integer followerCount;
    private Integer totalLikes;
    private Boolean isFollowing;

    public UserProfileResponse(Long userId, String username, String avatar, String bio, Integer noteCount, Integer followingCount, Integer followerCount, Integer totalLikes, Boolean isFollowing) {
        this.userId = userId;
        this.username = username;
        this.avatar = avatar;
        this.bio = bio;
        this.noteCount = noteCount;
        this.followingCount = followingCount;
        this.followerCount = followerCount;
        this.totalLikes = totalLikes;
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
    public Integer getNoteCount() { return noteCount; }
    public void setNoteCount(Integer noteCount) { this.noteCount = noteCount; }
    public Integer getFollowingCount() { return followingCount; }
    public void setFollowingCount(Integer followingCount) { this.followingCount = followingCount; }
    public Integer getFollowerCount() { return followerCount; }
    public void setFollowerCount(Integer followerCount) { this.followerCount = followerCount; }
    public Integer getTotalLikes() { return totalLikes; }
    public void setTotalLikes(Integer totalLikes) { this.totalLikes = totalLikes; }
    public Boolean isFollowing() { return isFollowing; }
    public void setIsFollowing(Boolean isFollowing) { this.isFollowing = isFollowing; }
}
