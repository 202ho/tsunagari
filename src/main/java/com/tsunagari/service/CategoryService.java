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

/*
    private final ActivityRepository activityRepository;
    //액티비티에서 찜을 가져오고 찜이 많은 순서대로 오름차순
    @Autowired
    public CategoryService(ActivityRepository activityRepository){
        this.activityRepository = activityRepository;
    }
    public Activity findTopByOrderByLikecountDesc() {
        return activityRepository.findTopByOrderByLikecountDesc();
    }
*/

    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository){
        this.categoryRepository=categoryRepository;

    }
    public List<Category> getAllCategories(){
        return categoryRepository.findAll();
    }




}
