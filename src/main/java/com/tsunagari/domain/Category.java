package com.tsunagari.domain;

import jakarta.persistence.*;

//롬복문제? 게터, 생성자가 안생김
// 데이터베이스 연결해서 id와 name의 맞는 애들 조회하고 정보를 가져와야함
@Entity
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id", updatable = false)
    private int id;

    @Column(name ="name", nullable = false )
    private String name;


    public Category(int id, String name) {
     this.id = id;
     this.name = name;
    }

    public Category() {

    }

    public int getId() {
        return id;
    }
    public String getName(){
        return name;
    }

}
