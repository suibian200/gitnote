package com.note.service;
import com.note.dto.response.NoteListResponse;
import com.note.dto.response.UserSimpleResponse;
import java.util.List;
public interface RankService {
    List<UserSimpleResponse> getHotUsers(Long currentUserId);
    List<NoteListResponse> getHotNotes(Long currentUserId);
}
