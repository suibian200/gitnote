package com.note.controller;
import com.note.dto.request.NoteCreateRequest;
import com.note.dto.request.NoteUpdateRequest;
import com.note.dto.response.NoteDetailResponse;
import com.note.dto.response.NoteListResponse;
import com.note.dto.response.PageResult;
import com.note.dto.response.LikeResponse;
import com.note.service.NoteService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Map;
@RestController
@RequestMapping("/api/note")
public class NoteController {

    public NoteController(NoteService noteService) {
        this.noteService = noteService;
    }

    

    
    private final NoteService noteService;
    @GetMapping("/list")
    public ResponseEntity<PageResult<NoteListResponse>> list(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(defaultValue = "latest") String sort,
            @RequestParam(required = false) String tag,
            @RequestParam(required = false) String keyword,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(noteService.getNoteList(page, size, sort, tag, keyword, currentUserId));
    }
    @GetMapping("/dynamic")
    public ResponseEntity<PageResult<NoteListResponse>> dynamic(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(noteService.getNoteDynamic(page, size, currentUserId));
    }
    @GetMapping("/user/{id}")
    public ResponseEntity<PageResult<NoteListResponse>> userNotes(
            @PathVariable Long id,
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(noteService.getUserNotes(id, page, size, currentUserId));
    }
    @GetMapping("/{id}")
    public ResponseEntity<NoteDetailResponse> detail(
            @PathVariable Long id,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(noteService.getNoteDetail(id, currentUserId));
    }
    @PostMapping("/create")
    public ResponseEntity<Map<String, Long>> create(
            @Valid @RequestBody NoteCreateRequest req,
            @AuthenticationPrincipal Long currentUserId) {
        Long noteId = noteService.createNote(req, currentUserId);
        return ResponseEntity.ok(Map.of("id", noteId));
    }
    @PutMapping("/{id}")
    public ResponseEntity<?> update(
            @PathVariable Long id,
            @Valid @RequestBody NoteUpdateRequest req,
            @AuthenticationPrincipal Long currentUserId) {
        noteService.updateNote(id, req, currentUserId);
        return ResponseEntity.ok().build();
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(
            @PathVariable Long id,
            @AuthenticationPrincipal Long currentUserId) {
        noteService.deleteNote(id, currentUserId);
        return ResponseEntity.ok().build();
    }
    @GetMapping("/tags")
    public ResponseEntity<List<String>> tags() {
        return ResponseEntity.ok(noteService.getNoteTags());
    }
    @PostMapping("/like/{id}")
    public ResponseEntity<LikeResponse> like(
            @PathVariable Long id,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(noteService.likeNote(id, currentUserId));
    }
    @DeleteMapping("/like/{id}")
    public ResponseEntity<LikeResponse> unlike(
            @PathVariable Long id,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(noteService.unlikeNote(id, currentUserId));
    }



}
