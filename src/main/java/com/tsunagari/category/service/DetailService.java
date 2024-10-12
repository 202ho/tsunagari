package com.tsunagari.category.service;

import com.tsunagari.category.entity.Detail;
import com.tsunagari.category.repository.DetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetailService {

    @Autowired
    private DetailRepository detailRepository;

    public List<Detail> findByCategoryId(int categoryId) {
        return detailRepository.findByCategoryId((long) categoryId); // 카테고리 ID로 디테일 찾기
    }
}
