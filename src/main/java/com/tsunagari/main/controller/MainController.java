package com.tsunagari.main.controller;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.activity.service.ActivityService;
import com.tsunagari.category.entity.Category;
import com.tsunagari.category.service.CategoryService;
import com.tsunagari.main.entity.Board;
import com.tsunagari.main.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/*
* 1. 액티비티 키워드 검색
* 2. 인기 액티비티 조회
* 3. 주요 카테고리 리스트
*/
@Controller
public class MainController {

    @Autowired
    private ActivityService activityService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private BoardService boardService;

    @GetMapping("/")
    public String home(Model model) {
        List<Activity> aclist = activityService.findTop4ByOrderByLikecountDesc();
        List<Category> categoryList = categoryService.findAll();
        List<Board> boardList = boardService.findAll();

        model.addAttribute("accList", aclist );
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("boardList", boardList);

        return "main/main";
    }

    @GetMapping("/main")
    public String getPouplarActivity(Model model){
        List<Activity> aclist = activityService.findTop4ByOrderByLikecountDesc();
        List<Category> categoryList = categoryService.findAll();
        List<Board> boardList = boardService.findAll();

        model.addAttribute("accList", aclist );
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("boardList", boardList);

        return "main/main";
    }

    @GetMapping("/index")
    public String getIndex(Model model) {
        return getPouplarActivity(model);
    }
}