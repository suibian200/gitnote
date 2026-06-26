package com.note.service;
import com.note.dto.request.NoteCreateRequest;
import com.note.dto.request.NoteUpdateRequest;
import com.note.dto.response.NoteDetailResponse;
import com.note.dto.response.NoteListResponse;
import com.note.dto.response.PageResult;
import java.util.List;
public interface NoteService {
    PageResult<NoteListResponse> getNoteList(int page, int size, String sort, String tag, String keyword, Long currentUserId);
    PageResult<NoteListResponse> getNoteDynamic(int page, int size, Long currentUserId);
    PageResult<NoteListResponse> getUserNotes(Long userId, int page, int size, Long currentUserId);
    NoteDetailResponse getNoteDetail(Long noteId, Long currentUserId);
    Long createNote(NoteCreateRequest req, Long userId);
    void updateNote(Long noteId, NoteUpdateRequest req, Long userId);
    void deleteNote(Long noteId, Long userId);
    List<String> getNoteTags();
    com.note.dto.response.LikeResponse likeNote(Long noteId, Long userId);
    com.note.dto.response.LikeResponse unlikeNote(Long noteId, Long userId);
}
