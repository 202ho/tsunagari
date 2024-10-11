package com.tsunagari.activity.controller;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.activity.repository.ActivityRepository;
import com.tsunagari.activity.service.ActivityService;
import com.tsunagari.category.entity.Category;
import com.tsunagari.category.service.CategoryService;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ActivityController {

    @Autowired
    private ActivityService activityService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    ActivityRepository activityRepository;

    @Autowired
    UserRepository userRepository;


    @GetMapping("/activity/list")
    public String getActivityList(@RequestParam(defaultValue = "") String category, @RequestParam(defaultValue = "") String search, @RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "0") int currentPage , Model model) {

        int pageGroupSize = 40;
        Page<Activity> activityPage = Page.empty();
        String title = "";
        if(!category.isEmpty()) {
            title = category + " 카테고리";
            activityPage = activityService.findByCategoryContainingIgnoreCase(page,pageGroupSize,category);
        } else if(!search.isEmpty()) {
            title = search + " 검색 결과";
            activityPage = activityService.findByTitleContainingIgnoreCase( page, pageGroupSize, search);
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
        model.addAttribute("activityCnt",activityCnt);
        model.addAttribute("pageLink","/activity/list");

        return "activity/list";
    }

    @GetMapping("/activity/detail/{id}")
    public String getActivityDetail(@PathVariable Long id, Model model) {
        Activity activity = activityRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid activity ID: " + id));

        List<Member> member = userRepository.findAll();


        model.addAttribute("activity", activity);
        model.addAttribute("id", id);
        model.addAttribute("member", member);
        return "activity/detail";
    }

    @GetMapping("/activity/new")
    public String getNewActivity( Model model) {
        List<Category> categoryList = categoryService.getAllCategories();
        model.addAttribute("categoryList", categoryList);
        return "activity/new";
    }
}
