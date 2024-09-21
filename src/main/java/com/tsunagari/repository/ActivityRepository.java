package com.tsunagari.repository;

import com.tsunagari.domain.Activity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActivityRepository extends JpaRepository<Activity, Long> {

    //인기 액티비티 조회
    Activity findTopByOrderByLikecountDesc();
}
