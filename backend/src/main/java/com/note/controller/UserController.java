package com.note.controller;
import com.note.dto.response.PageResult;
import com.note.dto.response.UserProfileResponse;
import com.note.dto.response.UserSimpleResponse;
import com.note.service.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
@RestController
@RequestMapping("/api/user")
public class UserController {

    public UserController(UserService userService) {
        this.userService = userService;
    }

    

    
    private final UserService userService;
    @GetMapping("/{id}")
    public ResponseEntity<UserProfileResponse> getUserProfile(
            @PathVariable Long id,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(userService.getUserProfile(id, currentUserId));
    }
    @GetMapping("/{id}/following")
    public ResponseEntity<PageResult<UserSimpleResponse>> getFollowing(
            @PathVariable Long id,
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(userService.getFollowing(id, page, size, currentUserId));
    }
    @GetMapping("/{id}/followers")
    public ResponseEntity<PageResult<UserSimpleResponse>> getFollowers(
            @PathVariable Long id,
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(userService.getFollowers(id, page, size, currentUserId));
    }
    @PostMapping("/follow/{id}")
    public ResponseEntity<?> follow(
            @PathVariable Long id,
            @AuthenticationPrincipal Long currentUserId) {
        userService.follow(currentUserId, id);
        return ResponseEntity.ok().build();
    }
    @DeleteMapping("/follow/{id}")
    public ResponseEntity<?> unfollow(
            @PathVariable Long id,
            @AuthenticationPrincipal Long currentUserId) {
        userService.unfollow(currentUserId, id);
        return ResponseEntity.ok().build();
    }
    @GetMapping("/search")
    public ResponseEntity<PageResult<UserSimpleResponse>> search(
            @RequestParam String keyword,
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size,
            @AuthenticationPrincipal Long currentUserId) {
        return ResponseEntity.ok(userService.search(keyword, page, size, currentUserId));
    }

}
