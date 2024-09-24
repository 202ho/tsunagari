package com.tsunagari.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AddUserRequest {

    private String email;
    private String password;
    private String nickname;
    private String intro;
    private String phone;
    private String ishost;
}
