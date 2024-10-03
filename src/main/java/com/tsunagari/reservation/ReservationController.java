package com.tsunagari.reservation;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.user.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;

@Controller
public class ReservationController {

    @Autowired
    ReservationService reservationService;


//    @RequestParam("activityId")
//    @RequestParam("memberId")
    @GetMapping("/reservation/form")
    public String showResrvationForm(Long activityId,
                                     Long memberId, Model model){

        Activity activity = reservationService.getActivityById(activityId);
        Member member = reservationService.getmemberById(memberId);
        model.addAttribute("activityId",activity);
        model.addAttribute("memberId", member);
        return "reservation/form";
    }
/*
    @PostMapping("/reservation/submit")
    public String submitReservation(@RequestParam("activityId") Long activityId,
                                    @RequestParam("memberId")Long memberId,
                                    @RequestParam("date")String date, Model model) {
        try {
            reservationService.createReservation(memberId, activityId, date);
        }catch (ParseException e){
            model.addAttribute("errorMessage", "날짜 형식이 올바르지 않습니다.");
            return "reservation/form";
        }
        return "redirect:/reservation/history";
    }
*/

}
