package com.note.dto.response;
import lombok.Data;
import java.time.LocalDateTime;
import java.util.List;
@Data
public class NoteDetailResponse {
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
}
