package com.tsunagari.category.repository;

import com.tsunagari.category.entity.Category;
import com.tsunagari.category.entity.Detail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category,Long> {

    List<Category> findTop4NByOrderByPostCountDesc();

    @Query("SELECT d FROM Detail d WHERE d.category.id = :categoryId")
    List<Detail> findDetailsByCategoryId(@Param("categoryId") Long categoryId);

}

