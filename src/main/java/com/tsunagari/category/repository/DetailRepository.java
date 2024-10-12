package com.tsunagari.category.repository;

import com.tsunagari.category.entity.Detail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DetailRepository extends JpaRepository<Detail, Long> {
    List<Detail> findByCategoryId(Long categoryId); // 특정 카테고리 ID로 디테일 찾기

    List<Detail> findByCategory_Id(Long categoryId);
}
