package com.tsunagari.domain;

import jakarta.persistence.*;

import java.util.Date;

// 엑티비티 키워드에서 키워드를 조회,
@Entity
public class Activity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false)
    private int id;

    @Column(name = "hostid",nullable = false)
    private int hostid;
    @Column(name = "title",nullable = false)
    private String title;
    @Column(name = "content",nullable = false)
    private String content;
    @Column(name = "address",nullable = false)
    private String address;
    @Column(name = "regdate",nullable = false)
    private Date regdate;
    @Column(name = "enddate",nullable = false)
    private Date enddate;
    @Column(name = "price",nullable = false)
    private int price;
    @Column(name = "likecount",nullable = false)
    private int likecount;
    @Column(name = "maxpeople",nullable = false)
    private int maxpeople;
    @Column(name = "keyword", nullable = false)
    private String keyword;

    public Activity(int id, String title, String content, String address, Date regdate, Date enddate, int price, int likecount, int maxpeople, String keyword ) {
        this.id =id;
        this.hostid =hostid;
        this.title=title;
        this.content=content;
        this.address=address;
        this.regdate=regdate;
        this.enddate=enddate;
        this.price=price;
        this.likecount=likecount;
        this.maxpeople=maxpeople;
        this.keyword=keyword;
    }

    public int getId() {
        return id;
    }

    public int getHostid() {
        return hostid;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getAddress() {
        return address;
    }

    public Date getRegdate() {
        return regdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public int getPrice() {
        return price;
    }

    public int getLikecount() {
        return likecount;
    }

    public int getMaxpeople() {
        return maxpeople;
    }

    public String getKeyword() {
        return keyword;
    }
}