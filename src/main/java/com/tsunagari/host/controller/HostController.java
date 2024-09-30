package com.tsunagari.host.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HostController {

    @GetMapping("/host/activity")
    public String getActivity() {

        return "host/activity";
    }

    @GetMapping("/host/reservation")
    public String getReservation() {

        return "host/reservation";
    }

    @GetMapping("/host/register")
    public String getRegister() {

        return "host/register";
    }

    @GetMapping("/host/revenue")
    public String getRevenue() {

        return "host/revenue";
    }
}
