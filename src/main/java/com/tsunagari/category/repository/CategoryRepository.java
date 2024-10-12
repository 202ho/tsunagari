package com.tsunagari.category.repository;

import com.tsunagari.category.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category,Long> {

    List<Category> findTop4NByOrderByPostCountDesc();

}

