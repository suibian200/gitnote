package com.note.dto.request;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import java.util.List;
@Data
public class NoteCreateRequest {
    @NotBlank private String title;
    @NotBlank private String content;
    private List<String> tags;
}
