package com.tsunagari.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.parameters.P;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/reservation")
public class ReservationApiController {

    @Autowired
    private ReservationService reservationService;

    @DeleteMapping("/delete")
    public ResponseEntity<?> deleteReservation(@RequestParam(defaultValue = "") String id) {
        if (id.isEmpty()) {
            return ResponseEntity.badRequest().build();
        }
        boolean result = reservationService.deleteReservationById(Long.valueOf(id));
        if (result) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.badRequest().build();
        }
    }

    @PostMapping("/new")
    private ResponseEntity<?> submitReservation(
            @RequestParam("activityId") Long activityId,
            @RequestParam("memberId") Long memberId,
            @RequestParam("reservationDate") String date) {

        System.out.println("Creating reservation for memberId: " + memberId + ", activityId: " + activityId + ", date: " + date);


        try {
            reservationService.createReservation(activityId, memberId, date);
            return ResponseEntity.ok().build();
        } catch (ParseException e) {
            return ResponseEntity.badRequest().body("날짜 형식이 올바르지 않습니다.");
        }
    }
}

