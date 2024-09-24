package com.tsunagari.service;

import com.tsunagari.domain.User;
import com.tsunagari.dto.AddUserRequest;
import com.tsunagari.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
@RequiredArgsConstructor
@Service
public class UserService {

    private final UserRepository userRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    public Long save(AddUserRequest dto){
        return userRepository.save(User.builder()
                .email(dto.getEmail())
                // 패스워드를 저장할 때 시큐리티를 설정하며 패스워드 인코딩용으로 등록된 빈을 사용하여 암호화한 후에 저장
                .password(bCryptPasswordEncoder.encode(dto.getPassword()))
                .build()).getId();
    }

}
