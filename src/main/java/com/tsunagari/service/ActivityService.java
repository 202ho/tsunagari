package com.tsunagari.service;

import com.tsunagari.domain.Activity;
import com.tsunagari.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

//찜이 많은 애들을 가져오되 내림차순 순으로 가져오기
@Service
public class ActivityService {

    @Autowired
    ActivityRepository activityRepository;

    public List<Activity> findAllByOrderByLikecountDesc(Pageable pageable) {
        return activityRepository.findAllByOrderByLikecountDesc(pageable).getContent();
    }

}
