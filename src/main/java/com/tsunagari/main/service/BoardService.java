package com.tsunagari.main.service;

import com.tsunagari.main.entity.Board;
import com.tsunagari.main.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class BoardService {

    @Autowired
    BoardRepository boardRepository;

    public List<Board> findAll() {
        return boardRepository.findAll();
    }
}