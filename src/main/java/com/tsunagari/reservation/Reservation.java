package com.tsunagari.reservation;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.user.entity.Member;
import jakarta.persistence.*;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;
import java.util.Date;

@Entity
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false)
    private int id;

    @ManyToOne
    @JoinColumn(name = "memberid", referencedColumnName = "id", nullable = false)// member에 id 외래키 설정
    private Member member;


    @ManyToOne
    @JoinColumn(name = "activityid", referencedColumnName = "id", nullable = false) // 엑티비티에 id 외래키 설정
    private Activity activity;

    @Column(name = "date", nullable = false)
    private Date date;

    public Reservation() {
    }

    public Reservation(int id, Member member, Activity activity, Date date) {
        this.id = id;
        this.member = member;
        this.activity = activity;
        this.date = date;
    }

    public Reservation( Member member, Activity activity, Date date) {

        this.member = member;
        this.activity = activity;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDateStr() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
        return  sdf.format(this.date);
    }

    public String getDday() {
        Date targetDate = this.date;
        // Convert Date to LocalDate
        LocalDate target = targetDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        // Get today's date
        LocalDate today = LocalDate.now();
        // Calculate the difference in days
        long dDay = ChronoUnit.DAYS.between(today, target);

        if (dDay > 0) {
            return "D-" + dDay ;
        } else if (dDay == 0) {
            return "D-day";
        } else {
            return "End";
        }
    }
}