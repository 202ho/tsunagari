package com.tsunagari.main.controller;


import com.tsunagari.activity.entity.Activity;
import com.tsunagari.activity.repository.ActivityRepository;
import com.tsunagari.category.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/*
* 1. 액티비티 키워드 검색
* 2. 인기 액티비티 조회
* 3. 주요 카테고리 리스트
*/
@Controller
public class MainController {

    //좋아요 수가 많은 순으로 액티비티 검색
    @Autowired
    private ActivityRepository activityRepository;

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/main")
    public String getPouplarActivity(Model model){
        Activity pouplarActivity = activityRepository.findTopByOrderByLikecountDesc();
        model.addAttribute("pouplarActivity", pouplarActivity);
    return "main/main";
    }
}