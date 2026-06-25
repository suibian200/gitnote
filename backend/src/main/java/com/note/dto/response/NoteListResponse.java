package com.note.dto.response;
import lombok.Data;
import java.time.LocalDateTime;
import java.util.List;
@Data
public class NoteListResponse {
    private Long id;
    private String title;
    private String summary;
    private List<String> tags;
    private Long authorId;
    private String authorName;
    private String authorAvatar;
    private Integer likeCount;
    private Integer commentCount;
    private Boolean isLiked;
    private LocalDateTime createTime;
}
