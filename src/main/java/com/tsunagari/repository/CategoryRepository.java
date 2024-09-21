package com.tsunagari.repository;

import com.tsunagari.domain.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

// 레퍼지토리에서 조회
@Repository
public interface CategoryRepository extends JpaRepository<Category,Long> {

    List<Category> findAll();

}

