package com.tsunagari.user.service;

import com.tsunagari.s3.S3Service;
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

    @Autowired
    private S3Service s3service;



    public Long save(AddUserRequest dto) {
        // S3에 이미지 업로드 및 URL 객체 생성
        String memberImageUrl = dto.getMemberimage() != null ? s3service.uploadImageToS3(dto.getMemberimage()) : "";

        // 패스워드를 암호화하고 Member 객체를 생성
        Member member = new Member(
                dto.getEmail(),
                bCryptPasswordEncoder.encode(dto.getPassword()),
                dto.getNickname(),
                dto.getIshost(),
                dto.getIntro(),
                dto.getPhone(),
                memberImageUrl
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
    public Optional<Member> findByNickname(String nickname) { return userRepository.findByNickname(nickname); }


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

    public void updateMember(Long memberId, String nickname, String password, String phone, String intro, String memberimage) {
        Optional<Member> optionalMember = userRepository.findById(memberId);

        if (optionalMember.isPresent()) {
            Member member = optionalMember.get();
            member.setNickname(nickname);
            member.setPhone(phone);
            member.setIntro(intro);
            member.setMemberimage(memberimage);

            // 비밀번호가 비어있지 않은 경우에만 업데이트
            if (password != null && !password.isEmpty()) {
                member.setPassword(bCryptPasswordEncoder.encode(password)); // 비밀번호 암호화
            }

            userRepository.save(member); // 변경된 사용자 정보 저장
        } else {
            throw new RuntimeException("사용자를 찾을 수 없습니다.");
        }
    }
}
