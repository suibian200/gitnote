package com.note.controller;
import com.note.dto.request.LoginRequest;
import com.note.dto.request.RegisterRequest;
import com.note.dto.response.LoginResponse;
import com.note.service.AuthService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.Map;
@RestController
@RequestMapping("/api/user")
public class AuthController {
    private final AuthService authService;
    public AuthController(AuthService authService) {
        this.authService = authService;
    }
    @PostMapping("/login")
    public ResponseEntity<LoginResponse> login(@Valid @RequestBody LoginRequest req) {
        return ResponseEntity.ok(authService.login(req));
    }
    @PostMapping("/register")
    public ResponseEntity<Map<String, String>> register(@Valid @RequestBody RegisterRequest req) {
        authService.register(req);
        return ResponseEntity.ok(Map.of("message", "注册成功"));
    }
    @PostMapping("/reset-pwd")
    public ResponseEntity<Map<String, String>> resetPwd(@Valid @RequestBody RegisterRequest req) {
        authService.resetPassword(req.getUsername(), req.getPassword());
        return ResponseEntity.ok(Map.of("message", "密码已重置"));
    }
}
