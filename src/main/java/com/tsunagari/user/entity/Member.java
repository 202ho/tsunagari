package com.tsunagari.user.entity;


import jakarta.persistence.*;
import lombok.Builder;
import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

@Getter
@Entity
public class Member implements UserDetails {

    // 유저 고유 아이디
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, unique = true)
    private Long id;

    @Column(name = "nickname")
    private String nickname;

//    @Column(name = "loginId", nullable = false, unique = true)
//    private String loginId;
 // email로 통일 한다고 했던거 같아서 일단 주석처리

    @Column(name = "password", nullable = false)
    private String password;

    // 자기소개
//    @Column(name = "intro")
//    private String intro;

//    @Column(name = "phone", nullable = false)
//    private String phone;

    @Column(name = "email", nullable = false,  unique = true)
    private String email;

    // 호스트 여부
    @Column(name = "ishost")
    private Long ishost;

    public Member() {
    }

    @Builder
    public Member(String email, String password, String nickname, Long ishost) {
        this.email = email;
        this.password = password;
        this.nickname = nickname;
        this.ishost = ishost;
    }

    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (ishost != null && ishost == 1) {
            return List.of(new SimpleGrantedAuthority("ROLE_HOST"));
        } else {
            return List.of(new SimpleGrantedAuthority("ROLE_GUEST"));
        }
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }

    // 계정 만료 여부 반환
    @Override
    public boolean isAccountNonExpired() {
        return true; // true -> 만료되지 않았음
    }

    // 계정 잠금 여부
    @Override
    public boolean isAccountNonLocked() {
        return true; // true -> 잠금되지 않았음
    }

    // 패스워드 만료 여부
    @Override
    public boolean isCredentialsNonExpired() {
        return true; // true -> 만료되지 않았음
    }

    // 계정 사용 가능 여부
    @Override
    public boolean isEnabled() {
        return true; // true -> 사용가능
    }

}
