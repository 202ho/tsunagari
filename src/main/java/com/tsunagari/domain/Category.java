package com.tsunagari.domain;

import jakarta.persistence.*;

@Entity
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id", updatable = false)
    private int id;

    @Column(name ="name", nullable = false )
    private String name;

    @Column(name ="image", nullable = false )
    private String image;

    //카테고리 이미지  추가 필요

    public Category(int id, String name, String image) {
     this.id = id;
     this.name = name;
     this.image = image;

    }

    public Category() {

    }

    public int getId() {
        return id;
    }
    public String getName(){
        return name;
    }
    public String getImage(){
        return image;
    }
}