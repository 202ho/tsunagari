package com.tsunagari.repository;

import com.tsunagari.domain.Activity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActivityRepository extends JpaRepository<Activity, Long> {

    Activity findTopByOrderByLikecountDesc();

    Page<Activity> findAllOrderByLikecount(Pageable pageable);

}
