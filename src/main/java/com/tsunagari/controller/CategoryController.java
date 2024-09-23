package com.tsunagari.controller;

import com.tsunagari.controller.CategoryController;
import com.tsunagari.domain.Category;
import com.tsunagari.service.CategoryService;
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
        model.addAttribute("categories", categoryService.getAllCategories());
        // 'categories.jsp' 파일을 반환하여 카테고리 목록을 보여줌
        return "categories";  // JSP 파일은 'categories.jsp'로 연결됨
    }

    // 새로운 카테고리를 추가하는 폼을 보여주는 메서드
    @GetMapping("/new")
    public String showNewCategoryForm(Model model) {
        // 새로운 빈 카테고리 객체를 모델에 추가하여 View로 전달 (폼에 바인딩됨)
        model.addAttribute("category", new Category());
        // 'category_form.jsp' 파일을 반환하여 카테고리 추가 폼을 보여줌
        return "category_form";
    }

    // POST 요청으로 새로운 카테고리를 저장하는 메서드 (폼에서 전송된 데이터 처리)
    @PostMapping
    public String saveCategory(@ModelAttribute("category") Category category) {
        // 전송된 카테고리 데이터를 서비스 계층을 통해 저장
        categoryService.saveCategory(category);
        // 카테고리 목록 페이지로 리다이렉트 (목록이 갱신됨)
        return "redirect:/categories";
    }

    // 카테고리를 삭제하는 메서드 (카테고리 ID를 URL에서 추출하여 처리)
    @GetMapping("/delete/{id}")
    public String deleteCategory(@PathVariable("id") Long id) {
        // 서비스 계층을 통해 해당 ID의 카테고리를 삭제
        categoryService.deleteCategory(id);
        // 카테고리 목록 페이지로 리다이렉트 (삭제 후 목록이 갱신됨)
        return "redirect:/categories";
    }
}
