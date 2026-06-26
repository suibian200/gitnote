package com.note.dto.response;
import java.time.LocalDateTime;
import java.util.List;
public class NoteDetailResponse {

    public NoteDetailResponse() {}
    private Long id;
    private String title;
    private String content;
    private List<String> tags;
    private Long authorId;
    private String authorName;
    private String authorAvatar;
    private Integer likeCount;
    private Boolean isLiked;
    private Boolean isFavorited;
    private LocalDateTime createTime;

    public NoteDetailResponse(Long id, String title, String content, List<String> tags, Long authorId, String authorName, String authorAvatar, Integer likeCount, Boolean isLiked, Boolean isFavorited, LocalDateTime createTime) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.tags = tags;
        this.authorId = authorId;
        this.authorName = authorName;
        this.authorAvatar = authorAvatar;
        this.likeCount = likeCount;
        this.isLiked = isLiked;
        this.isFavorited = isFavorited;
        this.createTime = createTime;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
    public List<String> getTags() { return tags; }
    public void setTags(List<String> tags) { this.tags = tags; }
    public Long getAuthorId() { return authorId; }
    public void setAuthorId(Long authorId) { this.authorId = authorId; }
    public String getAuthorName() { return authorName; }
    public void setAuthorName(String authorName) { this.authorName = authorName; }
    public String getAuthorAvatar() { return authorAvatar; }
    public void setAuthorAvatar(String authorAvatar) { this.authorAvatar = authorAvatar; }
    public Integer getLikeCount() { return likeCount; }
    public void setLikeCount(Integer likeCount) { this.likeCount = likeCount; }
    public Boolean isLiked() { return isLiked; }
    public void setIsLiked(Boolean isLiked) { this.isLiked = isLiked; }
    public Boolean isFavorited() { return isFavorited; }
    public void setIsFavorited(Boolean isFavorited) { this.isFavorited = isFavorited; }
    public LocalDateTime getCreateTime() { return createTime; }
    public void setCreateTime(LocalDateTime createTime) { this.createTime = createTime; }
}
