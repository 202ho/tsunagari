package com.tsunagari.user.entity;


import jakarta.persistence.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import java.util.Collection;
import java.util.List;

@Entity
public class Member implements UserDetails {

    // 유저 고유 아이디
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, unique = true)
    private Long id;

    @Column(name = "nickname")
    private String nickname;

    @Column(name = "password", nullable = false)
    private String password;

    // 자기소개
    @Column(name = "intro")
    private String intro;

    @Column(name = "phone", nullable = false)
    private String phone;

    @Column(name = "email", nullable = false,  unique = true)
    private String email;

    // 호스트 여부
    @Column(name = "ishost")
    private String ishost;

    @Column(name = "memberimage")
    private String memberimage;

    public Member() {
    }


    public Member(String email, String password, String nickname, String ishost, String intro, String phone, String memberimage) {
        this.email = email;
        this.password = password;
        this.nickname = nickname;
        this.ishost = ishost;
        this.intro = intro;
        this.phone = phone;
        this.memberimage = memberimage;
    }

    public Member(String email, String password, String nickname) {
        this.email = email;
        this.password = password;
        this.nickname = nickname;
    }

    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (ishost != null && ishost.equals("Y")) {
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

    public String getNickname() {
        return nickname;
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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIshost() {
        return ishost;
    }

    public void setIshost(String ishost) {
        this.ishost = ishost;
    }

    public String getMemberimage() {return memberimage;}

    public void setMemberimage(String memberimage) {this.memberimage = memberimage;}
}
