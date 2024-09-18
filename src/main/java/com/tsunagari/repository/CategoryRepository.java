package com.tsunagari.repository;

import com.tsunagari.domain.Category;
import org.springframework.data.jpa.repository.JpaRepository;

// 레퍼지토리 기능 - save find get 기능을 사용하기 위해서
public interface CategoryRepository extends JpaRepository<Category,Long> {


}
