package com.tsunagari.user.controller;

import com.tsunagari.user.dto.AddUserRequest;
import com.tsunagari.user.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequiredArgsConstructor
@Controller
public class UserApiController {
    private final UserService userService;

    @PostMapping("/user")
    public String signup(AddUserRequest request) {
        userService.save(request); // 회원 가입 메서드 호출
        return "redirect:/signin"; // 회원 가입이 완료된 이후에 로그인 페이지로 이동
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response,
                         @RequestParam(required = false, defaultValue = "/") String redirectURL) {
        new SecurityContextLogoutHandler().logout(request, response, SecurityContextHolder.getContext().getAuthentication());

        return "redirect:" + redirectURL; // 로그아웃 버튼을 클릭할때의 현재 페이지 URL로 이동
                                          // 로그아웃 버튼에 <a href="/logout?redirectURL=${pageContext.request.requestURI}">Logout</a> 넣어서 구현?
    }

}