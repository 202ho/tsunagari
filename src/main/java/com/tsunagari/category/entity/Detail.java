package com.tsunagari.category.entity;

import jakarta.persistence.*;

@Entity
public class Detail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false)
    private Long id;

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "content", nullable = false)
    private String content;

    @ManyToOne // 여러 디테일이 하나의 카테고리에 속함
    @JoinColumn(name = "category_id", nullable = false) // 외래 키 설정
    private Category category;

    public Detail() {
    }

    public Detail(Long id, String title, String content, Category category) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.category = category;
    }

    // Getter 및 Setter 생략
}
