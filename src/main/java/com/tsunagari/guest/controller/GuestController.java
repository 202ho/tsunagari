package com.tsunagari.guest.controller;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.reservation.Reservation;
import com.tsunagari.reservation.ReservationService;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/guest")
public class GuestController {

    @Autowired
    private UserService userService;

    @Autowired
    private ReservationService reservationService;

    @GetMapping("/mypage")
    public String getMypage(Model model) {


        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        Optional<Member> user = userService.findByEmail(email);
        model.addAttribute("user", user);
        return "guest/mypage";
    }

    @GetMapping("/reservation")
    public String getReservation(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "0") int currentPage , Model model) {

        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        Optional<Member> user = userService.findByEmail(email);
        int pageGroupSize = 30;
        Page<Reservation> reservationPage = Page.empty();
        if(user.isPresent()){
            Long guestId = user.get().getId();
            reservationPage = reservationService.getReservationsByGuestId(guestId, page, pageGroupSize);
        }
        List<Reservation> reservationList = reservationPage.getContent();
        int reservationCnt = reservationList.size();
        int pageSize = 6;
        int pageCnt = reservationCnt / pageSize;
        int remain = reservationCnt % pageSize;
        if( remain == 0) pageCnt -= 1;
        int subMax = Math.min(pageSize * (currentPage + 1), reservationList.size());
        List<Reservation> subList = reservationList.subList( pageSize * currentPage  , subMax);




        model.addAttribute("page",page);
        model.addAttribute("currentPage",currentPage);
        model.addAttribute("pageCnt",pageCnt);
        model.addAttribute("prevDisabled", page == 0 ? "disabled" : "");
        model.addAttribute("nextDisabled", reservationPage.isLast() ? "disabled" : "");
        model.addAttribute("list",subList);
        model.addAttribute("listCnt",reservationCnt);
        model.addAttribute("pageLink","/guest/reservation");

        return "guest/reservation";
    }
}
