package com.tsunagari.service;

import com.tsunagari.domain.Activity;
import com.tsunagari.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

    private ActivityRepository activityRepository;

    @Autowired
    public CategoryService(ActivityRepository activityRepository){
        this.activityRepository = activityRepository;
    }


    //액티비티에서 찜을 가져오고 찜이 많은 순서대로 오름차순
    public Activity findTopByOrderByLikecountDesc() {
        return activityRepository.findTopByOrderByLikecountDesc();
    }


}
