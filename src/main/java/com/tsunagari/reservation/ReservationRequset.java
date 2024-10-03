package com.tsunagari.reservation;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.user.entity.Member;

import java.util.Date;

public class ReservationRequset {

    private int id;
    private Member member;
    private Activity activity;
    private Date date;

    // 정산금? / 액티비티 참가금액?
    private int money;

    public ReservationRequset(int id, Member member, Activity activity, Date date, int money){
        this.id =id;
        this.member =member;
        this.activity=activity;
        this.date=date;
        this.money=money;

    }

    public int getId() {
        return id;
    }

    public Member getMember() {
        return member;
    }

    public Activity getActivity() {
        return activity;
    }

    public Date getDate() {
        return date;
    }

    public int getMoney() {
        return money;
    }

}
