package com.tsunagari.service;

// 아래 도메인- 임폴트 이유?
import com.tsunagari.domain.ActivityKeyword;
import com.tsunagari.repository.ActivityRepository;
import org.springframework.stereotype.Service;
import java.util.List;

//레퍼지토리에서 저장되어있는 애들 가져오기 -findAll()
@Service
public class ActivityService {

    private ActivityRepository activityRepository;

    //조회 - activitykeyword에 있는 데이터 조회
    public List<ActivityKeyword> findAll(){

        return activityRepository.findAll();
    }
    //검색
    

}
