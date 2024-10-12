package com.tsunagari.host.controller;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.activity.service.ActivityService;
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
@RequestMapping("/host")
public class HostController {

    @Autowired
    private UserService userService;

    @Autowired
    private ActivityService activityService;

    @GetMapping("/register")
    public String getRegister() {

        return "host/register";
    }

    @GetMapping("/activity")
    public String getHostActivity(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "0") int currentPage , Model model) {
        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        Optional<Member> user = userService.findByEmail(email);
        int pageGroupSize = 24;
        Page<Activity> activityPage = Page.empty();
        String title = "나의 액티비티";
        if(user.isPresent()){
            Long hostId = user.get().getId();
            activityPage = activityService.findByHostid(page, pageGroupSize, hostId);
        }

        List<Activity> activityList = activityPage.getContent();
        int activityCnt = activityList.size();
        int pageSize = 8;
        int pageCnt = activityCnt / pageSize;
        int remain = activityCnt % pageSize;
        if( remain == 0) pageCnt -= 1;
        int subMax = Math.min(pageSize * (currentPage + 1), activityList.size());
        List<Activity> subActivityList = activityList.subList( pageSize * currentPage  , subMax);

        model.addAttribute("title",title);
        model.addAttribute("page",page);
        model.addAttribute("currentPage",currentPage);
        model.addAttribute("pageCnt",pageCnt);
        model.addAttribute("prevDisabled", page == 0 ? "disabled" : "");
        model.addAttribute("nextDisabled", activityPage.isLast() ? "disabled" : "");
        model.addAttribute("activityList",subActivityList);
        model.addAttribute("activityCnt",activityCnt);
        model.addAttribute("pageLink","/host/activity");
        model.addAttribute("newActivity",true);

        return "host/activity";
    }

    @GetMapping("/reservation")
    public String getReservation() {

        return "host/reservation";
    }

    @GetMapping("/revenue")
    public String getRevenue() {

        return "host/revenue";
    }
}
