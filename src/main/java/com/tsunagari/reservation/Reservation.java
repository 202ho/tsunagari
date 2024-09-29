package com.tsunagari.reservation;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.user.entity.Member;
import jakarta.persistence.*;

import java.util.Date;

@Entity
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false)
    private int id;


    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id", nullable = false)// member에 id 외래키 설정
    private Member member;

    @ManyToOne
    @JoinColumn(name = "activity_id", referencedColumnName = "id", nullable = false) // 엑티비티에 id 외래키 설정
    private Activity activity;

    @Column(name = "date", nullable = false)
    private Date date;

    //정산금액
    @Column(name = "money", nullable = false)
    private int money;


    public Reservation(int id, Member member, Activity activity, Date date, int money){
    this.id =id;
    this.member =member;
    this.activity =activity;
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