package com.tsunagari.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    // 로그인 페이지 출력
    @GetMapping("/signin")
    public String signin() {

        return "signin/signin";
    }
    // 회원가입 페이지 출력
    @GetMapping("/signup")
    public String signup() {
        return "signup/signup";
    }

}
