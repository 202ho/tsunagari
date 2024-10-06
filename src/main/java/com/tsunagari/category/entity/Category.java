package com.tsunagari.category.entity;

import jakarta.persistence.*;

@Entity
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id", updatable = false)
    private int id;

    @Column(name ="name", nullable = false )
    private String name;

    //카테고리별 저장된 게시글의 수
    @Column
    private int postCount;

    public Category(int id, String name, int postCount) {
     this.id = id;
     this.name = name;
     this.postCount= postCount;
    }

    public int getId() {
        return id;
    }
    public String getName(){
        return name;
    }
    public int getPostCount(){
        return postCount;
    }
}