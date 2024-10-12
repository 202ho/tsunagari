package com.tsunagari.activity.entity;

import com.tsunagari.category.entity.Category;
import jakarta.persistence.*;

import java.util.Date;

@Entity
public class Activity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false)
    private int id;

    @Column(name = "hostid", nullable = false)
    private Long hostid;

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "content", nullable = false)
    private String content;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "regdate", nullable = false)
    private Date regdate;

    @Column(name = "enddate", nullable = false)
    private Date enddate;

    @Column(name = "price", nullable = false)
    private int price;

    @Column(name = "likecount", nullable = false)
    private int likecount;

    @Column(name = "maxpeople", nullable = false)
    private int maxpeople;

    @Column(name = "keyword", nullable = false)
    private String keyword;

    @Column(name = "city", nullable = false)
    private String city;

    @Column(name = "x", nullable = false)
    private String x; // 위도

    @Column(name = "y", nullable = false)
    private String y; // 경도

    @Column(name = "thumbnail", nullable = false)
    private String thumbnail;

    @ManyToOne // Many activities can belong to one category
    @JoinColumn(name = "category_id") // foreign key
    private Category category; // Category 객체로 변경

    // 생성자
    public Activity(Long hostid, String title, String content, String address, Date regdate, Date enddate,
                    int price, int likecount, int maxpeople, String keyword, String city, String x, String y,
                    String thumbnail, Category category) { // Category 인자를 추가
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
        this.category = category; // Category 속성 초기화
    }

    public Activity() {
    }

    public Activity(Long hostId, String title, String content, String addr, Date now, Date end, int price, int likecount, int maxpeople, String keyword, String city, String longitude, String latitude, String thumbnail, String category) {
    }

    // Getter 및 Setter 메서드
    public int getId() {
        return id; //
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

    public Category getCategory() {
        return category; // 추가된 Getter
    }

    public void setCategory(Category category) { // 추가된 Setter
        this.category = category;
    }
}
