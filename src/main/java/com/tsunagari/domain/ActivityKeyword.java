package com.tsunagari.domain;

import jakarta.persistence.*;

// 엑티비티 키워드에서 키워드를 조회,
@Entity
public class ActivityKeyword {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id" , updatable = false)
    private int id;

    @Column(name = "activityid", nullable = false)
    private int activityid;

    @Column(name = "keyword", nullable = false)
    private String keyword;

    public ActivityKeyword(int id, int activity, String keyword){
        this.id =id;
        this.activityid =activityid;
        this.keyword =keyword;

    }

    public int getId() {
        return id;
    }

    public String getKeyword() {
        return keyword;
    }

    public int getActivity() {
        return activityid;
    }

}
