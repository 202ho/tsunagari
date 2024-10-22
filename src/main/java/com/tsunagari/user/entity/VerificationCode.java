package com.tsunagari.user.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@NoArgsConstructor
public class VerificationCode {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String email; // 이메일 주소
    private String code; // 인증 코드
    private LocalDateTime expiresTime; // 만료 시간

    // 모든 필드를 초기화하는 생성자
    public VerificationCode(String email, String code, LocalDateTime expiresTime) {
        this.email = email;
        this.code = code;
        this.expiresTime = expiresTime;
    }

    // 수동 빌더 패턴을 위한 메서드 추가
    public static Builder builder() {
        return new Builder();
    }

    public static class Builder {
        private String email;
        private String code;
        private LocalDateTime expiresTime;

        public Builder email(String email) {
            this.email = email;
            return this;
        }

        public Builder code(String code) {
            this.code = code;
            return this;
        }

        public Builder expiresTime(LocalDateTime expiresTime) {
            this.expiresTime = expiresTime;
            return this;
        }

        public VerificationCode build() {
            return new VerificationCode(email, code, expiresTime);
        }
    }

    public Long getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getCode() {
        return code;
    }

    public LocalDateTime getExpiresTime() {
        return expiresTime;
    }
}
