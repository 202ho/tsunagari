
package com.tsunagari.user.repository;

import com.tsunagari.user.entity.Member;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<Member, Long> {
    Optional<Member> findByEmail(String email); // email로 사용자 정보를 가져옴
    Optional<Member> findByNickname(String nickname);
    List<Member> findAll();
}

