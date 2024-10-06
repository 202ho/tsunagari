package com.tsunagari.activity.repository;

import com.tsunagari.activity.entity.Activity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ActivityRepository extends JpaRepository<Activity, Long> {

    //인기 액티비티 조회
    Activity findTopByOrderByLikecountDesc();

    Page<Activity> findAllByOrderByLikecountDesc(Pageable pageable);

    Page<Activity> findByTitleContainingIgnoreCase(String keyword, Pageable pageable);

    Page<Activity> findByHostid(Long hostid, Pageable pageable);

    //좋아요 상위 4개 컨텐츠만
    List<Activity> findTop4ByOrderByLikecountDesc();

    List<Activity> findAll();
}
