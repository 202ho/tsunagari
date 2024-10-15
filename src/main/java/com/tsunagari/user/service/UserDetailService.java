package com.tsunagari.user.service;

import com.tsunagari.user.entity.Member;
import com.tsunagari.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

// 스프링 시큐리티에서 사용자 정보를 가져오는 인터페이스
@Service
public class UserDetailService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    // 사용자 email로 사용자의 정보를 가져오는 메서드
    @Override
    public Member loadUserByUsername(String email) {
        return userRepository.findByEmail(email)
                .orElseThrow(() -> new IllegalArgumentException(("User not found with email: " + email))); // UserRepository의 Optional<User>가 존재하지 않을경우
                                                                            // 예외 메세지 IllegalArgumentException((email)) 발생
    }
}
