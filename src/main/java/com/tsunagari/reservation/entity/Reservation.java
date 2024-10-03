package com.tsunagari.reservation.entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false)
    private Long id;
    @Column(name = "guestid",nullable = false)
    private Long guestid;
    @Column(name = "activityid",nullable = false)
    private Long activityid;
    @Column(name = "hostid",nullable = false)
    private Long hostid;
    @Column(name = "title",nullable = false)
    private String title;
    @Column(name = "address",nullable = false)
    private String address;
    @Column(name = "date",nullable = false)
    private Date date;
    @Column(name = "price",nullable = false)
    private int price;
    @Column(name = "thumbnail",nullable = false)
    private String thumbnail;

    public Reservation() {
    }

    public Reservation(Long id, Long guestid, Long activityid, Long hostid, String title, String address, Date date, int price, String thumbnail) {
        this.id = id;
        this.guestid = guestid;
        this.activityid = activityid;
        this.hostid = hostid;
        this.title = title;
        this.address = address;
        this.date = date;
        this.price = price;
        this.thumbnail = thumbnail;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getGuestid() {
        return guestid;
    }

    public void setGuestid(Long guestid) {
        this.guestid = guestid;
    }

    public Long getActivityid() {
        return activityid;
    }

    public void setActivityid(Long activityid) {
        this.activityid = activityid;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }
}
