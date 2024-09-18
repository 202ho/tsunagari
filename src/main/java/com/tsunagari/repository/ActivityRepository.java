package com.tsunagari.repository;

import com.tsunagari.domain.ActivityKeyword;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// 우리는 PK를 int로 했는데 long 타입으로 받는이유?
@Repository
public interface ActivityRepository extends JpaRepository<ActivityKeyword, Long> {

    //액티비티 키워드 엔티티에서 keyword가 포함된 것을 찾는다.
    ActivityKeyword findByKeywordContaining(String keyword);
}
