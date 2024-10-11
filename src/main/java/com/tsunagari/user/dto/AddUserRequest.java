package com.tsunagari.user.dto;


import org.springframework.web.multipart.MultipartFile;

public class AddUserRequest {

    private String email;
    private String password;
    private String nickname;
    private String intro;
    private String phone;
    private String ishost;
    private MultipartFile memberimage;


    public AddUserRequest(String email, String password, String nickname, String intro, String phone, String ishost, MultipartFile memberimage) {
        this.email = email;
        this.password = password;
        this.nickname = nickname;
        this.intro = intro;
        this.phone = phone;
        this.ishost = ishost;
        this.memberimage = memberimage;
    }

    public AddUserRequest() {
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setIshost(String ishost) {
        this.ishost = ishost;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getNickname() {
        return nickname;
    }

    public String getIntro() {
        return intro;
    }

    public String getPhone() {
        return phone;
    }

    public String getIshost() {
        return ishost;
    }

    public MultipartFile getMemberimage() {return memberimage;}

    public void setMemberimage(MultipartFile memberimage) {this.memberimage = memberimage;}
}
