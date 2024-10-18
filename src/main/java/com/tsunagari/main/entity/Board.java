package com.tsunagari.main.entity;

import jakarta.persistence.*;


@Entity
public class Board {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false)
    private Long id;

    @Column(name = "image", nullable = false)
    private String image;

    @Column(name = "link", nullable = false)
    private String link;

    public Board() {
    }

    public Board(Long id, String image, String link) {
        this.id = id;
        this.image = image;
        this.link = link;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
