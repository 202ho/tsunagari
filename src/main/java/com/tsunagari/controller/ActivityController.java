package com.tsunagari.controller;

import com.tsunagari.domain.Activity;
import com.tsunagari.repository.ActivityRepository;
import com.tsunagari.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ActivityController {

    @Autowired
    ActivityService activityService;

    @GetMapping("/activity/list")
    public String getActivityList(@RequestParam(defaultValue = "") String category, @RequestParam(defaultValue = "") String search, @RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "0") int currentPage , Model model) {

        int pageGroupSize = 24;
        Page<Activity> activityPage = Page.empty();
        String title = "";
        if(!category.isEmpty()) {
            title = category;
        } else if(!search.isEmpty()) {
            title = search;
        } else {
            title = "인기 액티비티";
            activityPage = activityService.getActivitiesLikecountDesc(page, pageGroupSize);
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

        return "/activity/list";
    }

    @GetMapping("/activity/detail/{id}")
    public String getActivityDetail(@PathVariable Long id, Model model) {

        model.addAttribute("id",id);
        return "/activity/detail";
    }
}
