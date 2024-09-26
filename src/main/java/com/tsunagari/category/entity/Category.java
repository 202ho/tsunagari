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