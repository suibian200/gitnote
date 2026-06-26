package com.note.service.impl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.note.dto.request.LoginRequest;
import com.note.dto.request.RegisterRequest;
import com.note.dto.response.LoginResponse;
import com.note.entity.User;
import com.note.exception.BusinessException;
import com.note.mapper.UserMapper;
import com.note.security.JwtUtil;
import com.note.service.AuthService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
@Service
public class AuthServiceImpl implements AuthService {
    private final UserMapper userMapper;
    private final PasswordEncoder passwordEncoder;
    private final JwtUtil jwtUtil;
    public AuthServiceImpl(UserMapper userMapper, PasswordEncoder passwordEncoder, JwtUtil jwtUtil) {
        this.userMapper = userMapper;
        this.passwordEncoder = passwordEncoder;
        this.jwtUtil = jwtUtil;
    }
    @Override
    public LoginResponse login(LoginRequest req) {
        User user = userMapper.selectOne(
                new LambdaQueryWrapper<User>().eq(User::getUsername, req.getUsername()));
        if (user == null || !passwordEncoder.matches(req.getPassword(), user.getPassword())) {
            throw new BusinessException(401, "用户名或密码错误");
        }
        String token = jwtUtil.generateToken(user.getId(), user.getUsername());
        return new LoginResponse(token, user.getId(), user.getUsername(),
                user.getEmail(), user.getAvatar() == null ? "" : user.getAvatar());
    }
    @Override
    public void register(RegisterRequest req) {
        if (userMapper.selectCount(new LambdaQueryWrapper<User>()
                .eq(User::getUsername, req.getUsername())) > 0) {
            throw new BusinessException("用户名已存在");
        }
        if (userMapper.selectCount(new LambdaQueryWrapper<User>()
                .eq(User::getEmail, req.getEmail())) > 0) {
            throw new BusinessException("邮箱已被注册");
        }
        User user = new User();
        user.setUsername(req.getUsername());
        user.setPassword(passwordEncoder.encode(req.getPassword()));
        user.setEmail(req.getEmail());
        user.setAvatar("");
        user.setBio("");
        user.setNoteCount(0);
        user.setFollowerCount(0);
        user.setFollowingCount(0);
        user.setTotalLikes(0);
        userMapper.insert(user);
    }
    @Override
    public void resetPassword(String username, String password) {
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>().eq(User::getUsername, username));
        if (user == null) {
            throw new BusinessException("用户不存在");
        }
        user.setPassword(passwordEncoder.encode(password));
        userMapper.updateById(user);
    }
}
