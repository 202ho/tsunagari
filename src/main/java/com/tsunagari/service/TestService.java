package com.tsunagari.service;

import com.tsunagari.domain.Test;
import com.tsunagari.repository.TestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService {

    @Autowired
    TestRepository testRepository;

    public List<Test> findAll() {
        return testRepository.findAll();
    }
}
