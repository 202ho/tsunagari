package com.tsunagari.repository;

import com.tsunagari.domain.ActivityKeyword;
import org.springframework.data.jpa.repository.JpaRepository;

// 우리는 PK를 int로 했는데 long 타입으로 받는이유?
public interface ActivityRepository extends JpaRepository<ActivityKeyword, Long> {

}
