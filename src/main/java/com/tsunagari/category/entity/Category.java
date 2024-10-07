package com.tsunagari.category.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.ColumnDefault;

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
    @ColumnDefault("0")
    private int postCount;

    public Category() {
    }

    public Category(int id, String name, int postCount) {
     this.id = id;
     this.name = name;
     this.postCount= postCount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPostCount() {
        return postCount;
    }

    public void setPostCount(int postCount) {
        this.postCount = postCount;
    }
}