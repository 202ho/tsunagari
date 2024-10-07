package com.tsunagari.reservation;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.Optional;

@Controller
public class ReservationController {

    @Autowired
    ReservationService reservationService;

    @Autowired
    private UserService userService;


    //    @RequestParam("activityId")
//    @RequestParam("memberId")
    @GetMapping("/reservation/form")
    public String showResrvationForm(@RequestParam(defaultValue = "") Long activityId,
                                     Model model){

        Activity activity = reservationService.getActivityById(activityId);

        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        Optional<Member> user = userService.findByEmail(email);

        System.out.println("reservation form = > " + activity.getTitle());
        System.out.println("reservation form 2 => " + user.get().getId() );
        model.addAttribute("activity",activity);
        model.addAttribute("memberId", user.get().getId());
        return "reservation/form";
    }

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
        return "redirect:/guest/reservation";
    }


}
