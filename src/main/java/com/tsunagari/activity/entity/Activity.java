package com.tsunagari.activity.entity;

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
    private Long hostid;
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
    //찜
    @Column(name = "likecount",nullable = false)
    private int likecount;

    @Column(name = "maxpeople",nullable = false)
    private int maxpeople;
    @Column(name = "keyword", nullable = false)
    private String keyword;
    @Column(name = "city",nullable = false)
    private String city;
    @Column(name = "x", nullable = false)
    private String x; // 위도
    @Column(name = "y",nullable = false)
    private String y; // 경도
    @Column(name = "thumbnail",nullable = false)
    private String thumbnail;
    @Column(name = "category",nullable = false)
    private String category;


    public Activity(int id, Long hostid, String title, String content, String address, Date regdate, Date enddate, int price, int likecount, int maxpeople, String keyword, String city, String x, String y, String thumbnail, String category) {
        this.id = id;
        this.hostid = hostid;
        this.title = title;
        this.content = content;
        this.address = address;
        this.regdate = regdate;
        this.enddate = enddate;
        this.price = price;
        this.likecount = likecount;
        this.maxpeople = maxpeople;
        this.keyword = keyword;
        this.city = city;
        this.x = x;
        this.y = y;
        this.thumbnail = thumbnail;
        this.category = category;
    }

    public Activity() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Long getHostid() {
        return hostid;
    }

    public void setHostid(Long hostid) {
        this.hostid = hostid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getLikecount() {
        return likecount;
    }

    public void setLikecount(int likecount) {
        this.likecount = likecount;
    }

    public int getMaxpeople() {
        return maxpeople;
    }

    public void setMaxpeople(int maxpeople) {
        this.maxpeople = maxpeople;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getX() {
        return x;
    }

    public void setX(String x) {
        this.x = x;
    }

    public String getY() {
        return y;
    }

    public void setY(String y) {
        this.y = y;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}