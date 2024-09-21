package com.tsunagari.controller;


import com.tsunagari.repository.ActivityRepository;
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

    //액티비티 키워드 검색
    @Autowired
    private ActivityRepository activityRepository;

    @GetMapping("/main")
    public String SearchKeyword(Model model){


    return "/main/main";
    }

    // 검했을때 - 컨텐츠 화면으로 보내주는 기능
}
