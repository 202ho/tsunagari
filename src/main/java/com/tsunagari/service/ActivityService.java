package com.tsunagari.service;

import com.tsunagari.domain.Activity;
import com.tsunagari.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

//레퍼지토리에서 저장되어있는 애들 가져오기 -findAll()
@Service
public class ActivityService {

    @Autowired
    ActivityRepository activityRepository;


    public List<Activity> findAllByOrderByLikecountDesc(Pageable pageable) {
        return activityRepository.findAllByOrderByLikecountDesc(pageable).getContent();
    }


}
