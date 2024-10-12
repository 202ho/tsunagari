package com.tsunagari.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

        boolean result = reservationService.createReservation(activityId, memberId, date);

        if(result) {

            System.out.println("## submitReservation success");
            Map<String,String > response = new HashMap<>();
            response.put("result ", "success");
            return ResponseEntity.ok(response);

        } else {
            System.out.println("## submitReservation eror");
            Map<String,String > response = new HashMap<>();
            response.put("result ", "fail");
            return  ResponseEntity.badRequest().body(response);
        }
    }
}

