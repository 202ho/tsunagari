package com.tsunagari.category.controller;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.activity.service.ActivityService; // 추가
import com.tsunagari.category.entity.Category;
import com.tsunagari.category.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/categories")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ActivityService activityService; // 액티비티 서비스 주입

    @GetMapping
    public String listCategories(Model model) {
        model.addAttribute("categories", categoryService.findAll());
        return "categories"; // categories.jsp로 이동
    }

    @GetMapping("/{categoryId}/activities")
    public String getActivitiesByCategory(@PathVariable Long categoryId, Model model) {
        List<Activity> activities = activityService.findByCategoryId(categoryId);
        model.addAttribute("activityList", activities);
        model.addAttribute("title", "카테고리 활동 리스트");
        model.addAttribute("activityCnt", activities.size());
        return "activityList"; // activityList.jsp로 이동
    }
}
