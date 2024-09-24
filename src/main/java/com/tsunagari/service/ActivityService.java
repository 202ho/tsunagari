package com.tsunagari.service;

import com.tsunagari.domain.Activity;
import com.tsunagari.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

//레퍼지토리에서 저장되어있는 애들 가져오기 -findAll()
@Service
public class ActivityService {

    @Autowired
    ActivityRepository activityRepository;

    public Page<Activity> getActivitiesLikecountDesc(int pageNumber, int pageSize) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize, Sort.by(Sort.Order.desc("id"), Sort.Order.desc("likecount")));
        return activityRepository.findAll(pageable);
    }

    public Page<Activity> findAllByOrderByLikecountDesc(int pageNumber, int pageSize) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize);
        return activityRepository.findAllByOrderByLikecountDesc(pageable);
    }


}
