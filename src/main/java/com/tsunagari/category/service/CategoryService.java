package com.tsunagari.category.service;

import com.tsunagari.category.entity.Category;
import com.tsunagari.category.entity.Detail; // 추가
import com.tsunagari.category.repository.CategoryRepository;
import com.tsunagari.category.repository.DetailRepository; // 추가
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private DetailRepository detailRepository; // DetailRepository 주입

    public List<Category> findAll() {
        return categoryRepository.findAll(); // 모든 카테고리 데이터를 가져옴
    }


    public List<Detail> getDetailsByCategoryId(Long categoryId) {
        return categoryRepository.findDetailsByCategoryId(categoryId); // 레포지토리 메서드 호출
    }

    @Query("SELECT d FROM Detail d WHERE d.category.id = :categoryId")
    List<Detail> findDetailsByCategoryId(@Param("categoryId") Long categoryId) {
        return null;
    }

}
