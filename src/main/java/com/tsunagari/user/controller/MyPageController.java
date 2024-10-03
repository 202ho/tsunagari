package com.tsunagari.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {
    @GetMapping("/mypage")
    public String mypage() {

        return "mypage/mypage";
    }
}
