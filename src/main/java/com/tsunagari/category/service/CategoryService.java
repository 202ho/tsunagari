package com.tsunagari.category.service;

import com.tsunagari.category.entity.Category;
import com.tsunagari.category.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    private  CategoryRepository categoryRepository;

    public List<Category> findAll(){
        return categoryRepository.findAll();
    }

    public List<Category> getAllCategories(){
        return categoryRepository.findAll();
    }

}
