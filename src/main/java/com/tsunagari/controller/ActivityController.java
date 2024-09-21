package com.tsunagari.controller;

import com.tsunagari.domain.Activity;
import com.tsunagari.repository.ActivityRepository;
import com.tsunagari.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ActivityController {

    @Autowired
    ActivityService activityService;

    @GetMapping("/activity/list")
    public String getActivityList(@PageableDefault(size = 8) Pageable pageable, Model model) {

        List<Activity> activityList = activityService.findAllByOrderByLikecountDesc(pageable);
        model.addAttribute("activityList",activityList);

        return "/activity/list";
    }
}
