package com.tsunagari.category.repository;

import com.tsunagari.category.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category,Long> {

    //게시글이 많은 상위 4개의 카테고리들을 가져옴
    List<Category> findTopNByOrderByPostCountDesc();
}

