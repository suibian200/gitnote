package com.note.entity;
import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import java.time.LocalDateTime;
@Data
@TableName("note")
public class Note {
    @TableId(type = IdType.AUTO)
    private Long id;
    private Long authorId;
    private String title;
    private String content;
    private Integer likeCount;
    private Integer commentCount;
    private Integer favoriteCount;
    @TableField("is_deleted")
    private Boolean deleted;
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createdAt;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updatedAt;
}
