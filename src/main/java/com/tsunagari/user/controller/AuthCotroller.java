package com.tsunagari.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthCotroller {

    @GetMapping("/login")
    public String getLogin() {

        return "auth/login";
    }

    @GetMapping("/register")
    public String getRegister() {
        return "auth/register";
    }

//    @GetMapping("/logout")
//    public String logout(HttpServletRequest request, HttpServletResponse response) {
//        new SecurityContextLogoutHandler().logout(request, response, SecurityContextHolder.getContext().getAuthentication());
//
//        return "redirect:/register";
//    }
}
