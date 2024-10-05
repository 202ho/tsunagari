package com.tsunagari.host.controller;

import com.tsunagari.reservation.MonthDayReservation;
import com.tsunagari.reservation.ReservationService;
import com.tsunagari.reservation.RevenueReservation;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/host")
public class HostApiController {

    @Autowired
    private UserService userService;

    @Autowired
    private ReservationService reservationService;

    @GetMapping("/reservation")
    public ResponseEntity<?> getReservation(@RequestParam(defaultValue = "") String date) {
//        String email = SecurityContextHolder.getContext().getAuthentication().getName();
//        Optional<Member> user = userService.findByEmail(email);
//        if(user.isEmpty()) return ResponseEntity.badRequest().build();

        Map<String, List<MonthDayReservation>> response = new HashMap<>();
//        Member member = user.get();
        // Long hostId= member.getId();
        Long hostId = 3L;

        List<MonthDayReservation> reservationList = reservationService.getGroupedReservations(hostId,date);
        response.put("reservation",reservationList);
        return ResponseEntity.ok(response);
    }

    @GetMapping("/revenue")
    public  ResponseEntity<?> getRevenue(@RequestParam(defaultValue = "") String date) {
//        String email = SecurityContextHolder.getContext().getAuthentication().getName();
//        Optional<Member> user = userService.findByEmail(email);
//        if(user.isEmpty()) return ResponseEntity.badRequest().build();

        Map<String, List<RevenueReservation>> response = new HashMap<>();
//        Member member = user.get();
        // Long hostId= member.getId();
        Long hostId = 3L;
        List<RevenueReservation> reservationList = reservationService.findGroupedByActivity(hostId,date);
        response.put("reservation",reservationList);
        return ResponseEntity.ok(response);
    }
}
