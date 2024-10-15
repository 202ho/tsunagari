package com.tsunagari.reservation;

import java.util.Date;

public class MonthDayReservation {

    public Integer activityId;
    Date date;
    String title;
    String address;
    Long count;

    public MonthDayReservation() {
    }

    public MonthDayReservation(Integer activityId, Date date, String title, String address, Long count) {
        this.activityId = activityId;
        this.date = date;
        this.title = title;
        this.address = address;
        this.count = count;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }
}
