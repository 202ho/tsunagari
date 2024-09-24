package com.tsunagari.service;

import com.tsunagari.domain.Activity;
import com.tsunagari.domain.Category;
import com.tsunagari.repository.ActivityRepository;
import com.tsunagari.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository){
        this.categoryRepository=categoryRepository;

    }
    public List<Category> getAllCategories(){
        return categoryRepository.findAll();
    }
}
