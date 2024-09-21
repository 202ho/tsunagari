package com.tsunagari.controller;


import com.tsunagari.domain.Activity;
import com.tsunagari.repository.ActivityRepository;
import com.tsunagari.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;

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

    @GetMapping("/main")
    public String getPouplarActivity(Model model){

        Activity pouplarActivity = activityRepository.findTopByOrderByLikecountDesc();
        //결과를 모델-> 뷰
        model.addAttribute("pouplarActivity", pouplarActivity);
    return "/main/main";
    }

    // 검색했을때 - 컨텐츠 화면으로 보내주는 기능-js
    @Autowired
    private CategoryService categoryService;
/*
    @GetMapping("")
    public String getSearch
*/
}
