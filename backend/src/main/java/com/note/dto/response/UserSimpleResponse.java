package com.note.dto.response;
import lombok.Data;
@Data
public class UserSimpleResponse {
    private Long userId;
    private String username;
    private String avatar;
    private String bio;
    private Integer likeCount;
    private Boolean isFollowing;
}
