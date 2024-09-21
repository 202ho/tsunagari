package com.tsunagari.repository;

import com.tsunagari.domain.Activity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActivityRepository extends JpaRepository<Activity, Long> {

    Activity findTopByOrderByLikecountDesc();
}
