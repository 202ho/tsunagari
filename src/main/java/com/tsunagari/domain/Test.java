package com.tsunagari.domain;

import jakarta.persistence.*;

@Entity
public class Test {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false)
    private Long id;

    @Column(name = "title", nullable = false)
    private String title;

    @Override
    public String toString() {
        return "Test : " + id + ", " + title;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }
}
