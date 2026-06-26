package com.note.controller;
import com.note.dto.response.NoteListResponse;
import com.note.dto.response.UserSimpleResponse;
import com.note.service.RankService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;
@RestController
@RequestMapping("/api/rank")
public class RankController {

    public RankController(RankService rankService) {
        this.rankService = rankService;
    }

    

    
    private final RankService rankService;
    @GetMapping("/users")
    public ResponseEntity<List<UserSimpleResponse>> hotUsers(@AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(rankService.getHotUsers(currentUserId));
    }
    @GetMapping("/notes")
    public ResponseEntity<List<NoteListResponse>> hotNotes(@AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(rankService.getHotNotes(currentUserId));
    }



}
