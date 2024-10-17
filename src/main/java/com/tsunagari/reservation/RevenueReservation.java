package com.tsunagari.reservation;

public class RevenueReservation {
    public Integer activityId;
    String title;
    Long count;
    Long priceTotal;

    public RevenueReservation() {
    }

    public RevenueReservation(Integer activityId, String title, Long count, Long priceTotal) {
        this.activityId = activityId;
        this.title = title;
        this.count = count;
        this.priceTotal = priceTotal;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Long getPriceTotal() {
        return priceTotal;
    }

    public void setPriceTotal(Long priceTotal) {
        this.priceTotal = priceTotal;
    }
}
