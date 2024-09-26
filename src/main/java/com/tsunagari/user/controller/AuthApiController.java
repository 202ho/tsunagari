package com.tsunagari.user.controller;

import com.tsunagari.user.dto.EmailCheckRequest;
import com.tsunagari.user.dto.RegisterRequest;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/auth")
public class AuthApiController {

    @Autowired
    private UserService userService;

    @PostMapping("/emailCheck")
    public ResponseEntity<?> emailCheck(@RequestBody EmailCheckRequest request) {
        String email = request.getEmail();
        Optional<Member> user = userService.findByEmail(email);
        Map<String, Boolean> response = new HashMap<>();
        if(user.isPresent()) response.put("available", false);
        else response.put("available", true);
        return ResponseEntity.ok(response);
    }

    @PostMapping("/register")
    public ResponseEntity<?> registerUser(@RequestBody RegisterRequest request) {
        userService.save(request);
        Map<String, Boolean> response = new HashMap<>();
        response.put("available", true);
        return ResponseEntity.ok(response);

    }
}
