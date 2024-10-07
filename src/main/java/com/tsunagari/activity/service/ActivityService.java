package com.tsunagari.activity.service;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.activity.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ActivityService {

    @Autowired
    ActivityRepository activityRepository;

    //좋아요 내림차순
    public Page<Activity> getActivitiesLikecountDesc(int pageNumber, int pageSize) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize, Sort.by(Sort.Order.desc("id"), Sort.Order.desc("likecount")));
        return activityRepository.findAll(pageable);
    }

    //검색
    public Page<Activity> findByTitleContainingIgnoreCase(int pageNumber, int pageSize, String keyword) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize, Sort.by(Sort.Order.desc("id")));
        return activityRepository.findByTitleContainingIgnoreCase(keyword, pageable);
    }

    public Page<Activity> findByCategoryContainingIgnoreCase(int pageNumber, int pageSize, String keyword) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize, Sort.by(Sort.Order.desc("id")));
        return activityRepository.findByCategoryContainingIgnoreCase(keyword, pageable);
    }

    public Page<Activity> findByHostid(int pageNumber, int pageSize, Long hostId) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize, Sort.by(Sort.Order.desc("id")));
        return activityRepository.findByHostid(hostId, pageable);
    }

    @Transactional
    public int saveActivity(Activity activity) {
        Activity savedActivity = activityRepository.save(activity);
        return savedActivity.getId(); // Return the ID of the saved activity
    }

    public boolean updateActivityThumbnail(int activityId, String thumbnail) {
        int updatedCount = activityRepository.updateThumbnail(activityId, thumbnail);
        return updatedCount > 0;
    }
}
