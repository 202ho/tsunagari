package com.tsunagari.category.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.ColumnDefault;

@Entity
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id", updatable = false)
    private Long id;

    @Column(name ="name", nullable = false )
    private String name;

    @Column(name ="image" )
    private String image;

    //카테고리별 저장된 게시글의 수
    @Column
    @ColumnDefault("0")
    private int postCount;

    public Category() {
    }

    public Category(Long id, String name, String image, int postCount) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.postCount = postCount;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPostCount() {
        return postCount;
    }

    public void setPostCount(int postCount) {
        this.postCount = postCount;
    }
}