package com.tsunagari.user.dto;

public class NicknameCheckRequest {
    private String nickname;
    private String email;
    public NicknameCheckRequest() { }

    public NicknameCheckRequest(String nickname, String email) {
        this.nickname = nickname;
        this.email = email;
    }

    public String getNickname() {
        return nickname;
    }
    public String getEmail() {
        return email;
    }

}