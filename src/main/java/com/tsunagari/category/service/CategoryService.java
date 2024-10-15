package com.tsunagari.category.service;

import com.tsunagari.category.entity.Category;
import com.tsunagari.category.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;



    public List<Category> findAll() {
        return categoryRepository.findAll(); // 모든 카테고리 데이터를 가져옴
    }

    public Optional<Category> findById(String id) {
        return  categoryRepository.findById(Long.valueOf(id));
    }

    public  List<Category> findTop4NByOrderByPostCountDesc() {
        return categoryRepository.findTop4NByOrderByPostCountDesc();
    }


}
