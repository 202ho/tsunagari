package com.tsunagari.user.repository;

import com.tsunagari.user.entity.VerificationCode;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDateTime;
import java.util.Optional;

public interface EmailRepository extends JpaRepository<VerificationCode, Long> {
    Optional<VerificationCode> findByEmailAndCode(String email, String code);
    void deleteByEmail(String email); // 특정 이메일의 인증번호 삭제
    void deleteByExpiresTimeBefore(LocalDateTime now); // 만료된 인증번호 삭제
}
