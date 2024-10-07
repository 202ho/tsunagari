package com.tsunagari.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.parameters.P;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
        if(id.isEmpty()){
            return ResponseEntity.badRequest().build();
        }
        boolean result = reservationService.deleteReservationById(Long.valueOf(id));
        if(result) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.badRequest().build();
        }
    }
}
