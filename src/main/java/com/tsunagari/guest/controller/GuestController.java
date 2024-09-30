package com.tsunagari.guest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GuestController {

    @GetMapping("/guest/mypage")
    public String getMypage() {

        return "guest/mypage";
    }

    @GetMapping("/guest/reservation")
    public String getReservation() {

        return "guest/reservation";
    }
}
