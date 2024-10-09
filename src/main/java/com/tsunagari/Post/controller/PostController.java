package com.tsunagari.Post.controller;

import com.tsunagari.Post.entity.Post;
import com.tsunagari.Post.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
@RequestMapping("/posts")
public class PostController {

    private final PostService postService;

    @Autowired
    public PostController(PostService postService) {
        this.postService = postService;
    }

    // 게시글 작성 폼을 보여주는 메서드
    @GetMapping("/new")
    public String showCreatePostForm(Model model) {
        model.addAttribute("post", new Post());
        return "post/createPost"; // post 폴더 안의 createPost.jsp로 이동
    }

    // 게시글 작성 요청을 처리하는 메서드
    @PostMapping
    public String createPost(@ModelAttribute Post post,
                             @RequestParam("image") MultipartFile image,
                             Model model) {

        // 이미지 저장 경로 설정
        if (!image.isEmpty()) {
            try {
                Path path = Paths.get("src/main/resources/static/uploads/" + image.getOriginalFilename());
                Files.write(path, image.getBytes()); // 파일 저장

                post.setImagePath("/uploads/" + image.getOriginalFilename()); // 게시물에 이미지 경로 설정
            } catch (IOException e) {
                model.addAttribute("errorMessage", "파일 업로드 중 오류가 발생했습니다.");
                return "post/createPost"; // 오류 발생 시 다시 폼으로 돌아가기
            }
        }

        // 게시글 저장
        postService.createPost(post);
        return "redirect:/posts";  // 게시글 목록 페이지로 리다이렉트
    }

    // 게시글 목록 조회
    @GetMapping
    public String listPosts(Model model) {
        model.addAttribute("posts", postService.getAllPosts());
        return "post/list"; // post 폴더 안의 list.jsp로 이동
    }

    // 게시글 조회
    @GetMapping("/{id}")
    public String viewPost(@PathVariable Long id, Model model) {
        Post post = postService.getPostById(id);
        model.addAttribute("post", post);
        return "post/view"; // post 폴더 안의 view.jsp로 이동
    }

    // 게시글 삭제 요청 처리
    @PostMapping("/{id}/delete")
    public String deletePost(@PathVariable Long id) {
        postService.deletePost(id);
        return "redirect:/posts"; // 게시글 목록 페이지로 리다이렉트
    }
}
