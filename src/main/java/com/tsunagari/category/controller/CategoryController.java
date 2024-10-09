package com.tsunagari.category.controller;

import com.tsunagari.category.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

// 스프링 MVC에서 컨트롤러로 사용될 클래스를 나타내는 애너테이션
@Controller
// '/categories' 경로에 대한 모든 요청을 처리하는 컨트롤러임을 정의
@RequestMapping("/categories")
public class CategoryController {

    // CategoryService를 주입받아 카테고리 관련 비즈니스 로직을 처리할 수 있도록 설정
    @Autowired
    private CategoryService categoryService;

    // GET 요청으로 '/categories' 경로가 호출되면 카테고리 목록을 보여주는 메서드
    @GetMapping
    public String listCategories(Model model) {
        // 모든 카테고리 데이터를 가져와서 모델에 추가 (View로 전달됨)
        model.addAttribute("categories", categoryService.findAll());
        // 'categories.jsp' 파일을 반환하여 카테고리 목록을 보여줌
        return "categories";  // JSP 파일은 'categories.jsp'로 연결됨
    }

}
