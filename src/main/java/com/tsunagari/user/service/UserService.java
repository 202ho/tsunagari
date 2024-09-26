package com.tsunagari.user.service;

import com.tsunagari.user.dto.RegisterRequest;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.dto.AddUserRequest;
import com.tsunagari.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public Long save(AddUserRequest dto){
        return userRepository.save(Member.builder()
                .email(dto.getEmail())
                // 패스워드를 저장할 때 시큐리티를 설정하며 패스워드 인코딩용으로 등록된 빈을 사용하여 암호화한 후에 저장
                .password(bCryptPasswordEncoder.encode(dto.getPassword()))
                .build()).getId();
    }

    public Long save(RegisterRequest dto){
        return userRepository.save(Member.builder()
                .email(dto.getEmail())
                .password(bCryptPasswordEncoder.encode(dto.getPassword()))
                .nickname(dto.getNickname())
                .ishost(0L)
                .build()).getId();
    }

    public Optional<Member> findByEmail(String email){
        return userRepository.findByEmail(email);
    }

}
