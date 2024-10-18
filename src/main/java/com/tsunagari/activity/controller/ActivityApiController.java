package com.tsunagari.activity.controller;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.activity.service.ActivityService;
import com.tsunagari.category.entity.Category;
import com.tsunagari.category.service.CategoryService;
import com.tsunagari.reservation.RevenueReservation;
import com.tsunagari.s3.S3Service;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.text.SimpleDateFormat;
import java.util.*;

@RestController
@RequestMapping("/api/activity")
public class ActivityApiController {

    @Autowired
    private UserService userService;

    @Autowired
    private ActivityService activityService;

    @Autowired
    private S3Service s3service;

    @Autowired
    private CategoryService categoryService;

    @PostMapping("/new")
    public ResponseEntity<?> createActivity(
            @RequestParam("new-activity-title") String title,
            @RequestParam("new-activity-content") String content,
            @RequestParam("new-activity-address") String address,
            @RequestParam("new-activity-address2") String address2,
            @RequestParam("new-activity-city") String city,
            @RequestParam("new-activity-price") int price,
            @RequestParam("new-activity-photo") MultipartFile photo,
            @RequestParam("new-activity-category") String categoryid,
            @RequestParam("new-activity-x") String longitude,
            @RequestParam("new-activity-y") String latitude
    ) {


        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        Optional<Member> user = userService.findByEmail(email);
        if(user.isEmpty()) return ResponseEntity.badRequest().build();
        Member member = user.get();
        Long hostId= member.getId();
        Date now = new Date();
        Date end = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        try { end = formatter.parse("2099-12-30"); }
        catch (Exception e){ end = new Date(); }
        Optional<Category> category = categoryService.findById(categoryid);
        if(category.isEmpty()) return ResponseEntity.badRequest().build();

        System.out.println("new category => " + categoryid);
        String addr = address+address2;
        Activity activity = new Activity(hostId, title, content, addr, now, end, price,0, 100,"", city ,latitude,longitude, "",category.get());
        int newActivyId = activityService.saveActivity(activity);

        String s3url = s3service.uploadImageToS3(photo);
        if(s3url.isEmpty()) ResponseEntity.badRequest().build();

        boolean result = activityService.updateActivityThumbnail(newActivyId,s3url);
        if(result) {
            return ResponseEntity.ok().build();
        } else{
            return ResponseEntity.badRequest().build();
        }
    }
}
