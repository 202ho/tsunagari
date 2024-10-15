package com.tsunagari.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AuthCotroller {

    @GetMapping("/login")
    public String getLogin(Model model,
                           @RequestParam(value="error", required = false) String error,
                           @RequestParam(value = "exception", required = false) String exception
    ) {
        model.addAttribute("error", error);
        model.addAttribute("exception", exception);
//        return "auth/login";
        return "signin/signin";
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
