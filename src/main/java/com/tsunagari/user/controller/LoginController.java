package com.tsunagari.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    // 로그인 페이지 출력
    @GetMapping("/signin")
    public String signin(
            Model model,
            @RequestParam(value="error", required = false) String error,
            @RequestParam(value = "exception", required = false) String exception
    ) {
        model.addAttribute("error", error);
        model.addAttribute("exception", exception);
        return "signin/signin";
    }
    // 회원가입 페이지 출력
    @GetMapping("/signup")
    public String signup() {
        return "signup/signup";
    }

}
