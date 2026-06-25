package com.note.service;
import com.note.dto.request.LoginRequest;
import com.note.dto.request.RegisterRequest;
import com.note.dto.response.LoginResponse;
public interface AuthService {
    LoginResponse login(LoginRequest req);
    void register(RegisterRequest req);
}
