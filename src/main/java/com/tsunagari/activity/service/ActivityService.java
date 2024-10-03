package com.tsunagari.activity.service;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.activity.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

//찜이 많은 애들을 가져오되 내림차순 순으로 가져오기
@Service
public class ActivityService {

    @Autowired
    ActivityRepository activityRepository;

    public Page<Activity> getActivitiesLikecountDesc(int pageNumber, int pageSize) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize, Sort.by(Sort.Order.desc("id"), Sort.Order.desc("likecount")));
        return activityRepository.findAll(pageable);
    }


    public Page<Activity> findByTitleContainingIgnoreCase(int pageNumber, int pageSize, String keyword) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize, Sort.by(Sort.Order.desc("id")));
        return activityRepository.findByTitleContainingIgnoreCase(keyword, pageable);
    }

    public Page<Activity> findByHostid(int pageNumber, int pageSize, Long hostId) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize, Sort.by(Sort.Order.desc("id")));
        return activityRepository.findByHostid(hostId, pageable);
    }

}
