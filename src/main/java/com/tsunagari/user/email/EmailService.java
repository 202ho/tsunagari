package com.tsunagari.user.email;


import com.tsunagari.user.entity.VerificationCode;
import com.tsunagari.user.repository.EmailRepository;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.concurrent.ThreadLocalRandom;

@Slf4j
@Transactional
@Service

public class EmailService {

    @Autowired
    private JavaMailSender emailSender;

    @Autowired
    private EmailRepository emailRepository;

    public void sendEmail(String toEmail,String title, String content) throws MessagingException {
        MimeMessage message = emailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        helper.setTo(toEmail);
        helper.setSubject(title);
        helper.setText(content, true); // true를 설정해서 HTML을 사용 가능하게 함
        helper.setReplyTo("nkwnsgh@gmail.com"); // 회신 불가능한 주소 설정
        try {
            emailSender.send(message);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new RuntimeException("Unable to send email in sendEmail", e); // 원인 예외를 포함시키기
        }
    }

    public SimpleMailMessage createEmailForm(String toEmail, String title, String text) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(toEmail);
        message.setSubject(title);
        message.setText(text);
        return message;
    }


    public void sendCodeToEmail(String email) {
        emailRepository.deleteByEmail(email);
        VerificationCode createdCode = createVerificationCode(email);
        String title = "tsunagari 이메일 인증 번호";

        String content = "<html>"
                + "<body>"
                + "<h1>tsunagari 인증 코드: " + createdCode.getCode() + "</h1>"
                + "<p>해당 코드를 홈페이지에 입력하세요.</p>"
                + "<footer style='color: grey; font-size: small;'>"
                + "<p>※본 메일은 자동응답 메일이므로 본 메일에 회신하지 마시기 바랍니다.</p>"
                + "</footer>"
                + "</body>"
                + "</html>";
        try {
            sendEmail(email, title, content);
        } catch (RuntimeException | MessagingException e) {
            e.printStackTrace(); // 또는 로거를 사용하여 상세한 예외 정보 로깅
            throw new RuntimeException("Unable to send email in sendCodeToEmail", e); // 원인 예외를 포함시키기
        }
    }

    // 인증 코드 생성 및 저장
    public VerificationCode createVerificationCode(String email) {
        String randomCode = generateRandomCode(6);
        VerificationCode code = VerificationCode.builder()
                .email(email)
                .code(randomCode) // 랜덤 코드 생성
                .expiresTime(LocalDateTime.now().plusMinutes(5)) // 5분 후 만료
                .build();

        return emailRepository.save(code);
    }

    public String generateRandomCode(int length) {
        String characters = "0123456789";
        StringBuilder sb = new StringBuilder();
        ThreadLocalRandom random = ThreadLocalRandom.current();

        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            sb.append(characters.charAt(index));
        }

        return sb.toString();
    }

    // 인증 코드 유효성 검사
    public boolean verifyCode(String email, String code) {
        return emailRepository.findByEmailAndCode(email, code)
                .map(vc -> vc.getExpiresTime().isAfter(LocalDateTime.now()))
                .orElse(false);
    }

    @Transactional
    @Scheduled(cron = "0 0 12 * * ?") // 매일 정오에 해당 만료 코드 삭제
    public void deleteExpiredVerificationCodes() {
        emailRepository.deleteByExpiresTimeBefore(LocalDateTime.now());
    }

}