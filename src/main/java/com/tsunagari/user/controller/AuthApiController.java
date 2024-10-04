package com.tsunagari.user.controller;

import com.tsunagari.user.dto.EmailCheckRequest;
import com.tsunagari.user.dto.RegisterRequest;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.service.UserDetailService;
import com.tsunagari.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/auth")
public class AuthApiController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserDetailService userDetailService;

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

    @GetMapping("/host-register")
    public  ResponseEntity<?> hostRegister() {
        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        Optional<Member> user = userService.findByEmail(email);
        Map<String, String> response = new HashMap<>();

        if(user.isEmpty()) {
            response.put("result", "fail");
            response.put("message", "호스트 신청을 할 수 없습니다.");
            return ResponseEntity.ok(response);
        }

        Member member = user.get();

        if(member.getIshost() != null && member.getIshost().equals("Y")) {
            response.put("result", "fail");
            response.put("message", "이미 호스트 등록이 되었습니다.");
        } else {
            boolean updated = userService.updateIsHostToYes(user.get().getId());
            if (updated) {

                // role 업데이트
                UserDetails userDetails = userDetailService.loadUserByUsername(email);
                UsernamePasswordAuthenticationToken authentication =
                        new UsernamePasswordAuthenticationToken(
                                userDetails,
                                userDetails.getPassword(),
                                userDetails.getAuthorities()
                        );
                SecurityContextHolder.getContext().setAuthentication(authentication);

                response.put("result", "success");
                response.put("message", "호스트로 등록되었습니다.");
            } else {
                response.put("result", "fail");
                response.put("message", "호스트 신청을 할 수 없습니다.");
            }
        }
        
        return ResponseEntity.ok(response);
    }
}
