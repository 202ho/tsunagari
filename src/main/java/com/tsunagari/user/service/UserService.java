package com.tsunagari.user.service;

import com.tsunagari.user.dto.RegisterRequest;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.dto.AddUserRequest;
import com.tsunagari.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    public Long save(AddUserRequest dto) {
        // 패스워드를 암호화하고 Member 객체를 생성
        Member member = new Member(
                dto.getEmail(),
                bCryptPasswordEncoder.encode(dto.getPassword()),
                dto.getNickname(),
                dto.getIshost(),
                dto.getIntro(),
                dto.getPhone()
        );
        return userRepository.save(member).getId();
    }
    public Long save(RegisterRequest dto) {
        // 패스워드를 암호화하고 Member 객체를 생성
        Member member = new Member(
                dto.getEmail(),
                bCryptPasswordEncoder.encode(dto.getPassword()),
                dto.getNickname()
        );
        return userRepository.save(member).getId();
    }
    public Optional<Member> findByEmail(String email){
        return userRepository.findByEmail(email);
    }

    @Transactional
    public boolean updateIsHostToYes(Long memberId) {
        return userRepository.findById(memberId)
                .map(member -> {
                    member.setIshost("Y");
                    userRepository.save(member);
                    return true;
                })
                .orElse(false);
    }
}
