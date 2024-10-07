package com.tsunagari.user.controller;

import com.tsunagari.user.dto.AddUserRequest;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.repository.UserRepository;
import com.tsunagari.user.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Optional;


@Controller
public class UserApiController {

    @Autowired
    private UserService userService;
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @PostMapping("/signup")
    public String signup(AddUserRequest request) {
        userService.save(request); // 회원 가입 메서드 호출
        return "redirect:/signin"; // 회원 가입이 완료된 이후에 로그인 페이지로 이동
    }

    @PostMapping("/signin")
    public String signin(@RequestParam String email, @RequestParam String password, RedirectAttributes redirectAttributes) {
        try {
            password = password.trim();
            Optional<Member> optionalMember = userRepository.findByEmail(email);

            if (optionalMember.isEmpty()) {
                redirectAttributes.addFlashAttribute("errorMessage", "존재하지 않는 아이디입니다."); // 존재하지 않는 아이디
                return "redirect:/signin";
            }

            Member member = optionalMember.get();

            if (!bCryptPasswordEncoder.matches(password, member.getPassword())) {
                redirectAttributes.addFlashAttribute("errorMessage", "비밀번호가 틀렸습니다."); // 비밀번호 불일치
                return "redirect:/signin";
            }

            Authentication authentication = new UsernamePasswordAuthenticationToken(email, password);
            SecurityContextHolder.getContext().setAuthentication(authentication);

            return "redirect:/main"; // 로그인 성공 후 리다이렉트
        } catch (Exception e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("errorMessage", "로그인 중 오류가 발생했습니다."); // 로그인 실패 시 리다이렉트
            return "redirect:/signin";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response,
                         @RequestParam(required = false, defaultValue = "/") String redirectURL) {
        new SecurityContextLogoutHandler().logout(request, response, SecurityContextHolder.getContext().getAuthentication());

        return "redirect:" + redirectURL; // 로그아웃 버튼을 클릭할때의 현재 페이지 URL로 이동
                                          // 로그아웃 버튼에 <a href="/logout?redirectURL=${pageContext.request.requestURI}">Logout</a> 넣어서 구현
    }

}