package com.tsunagari.activity.controller;

import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.tsunagari.activity.service.ActivityService;
import com.tsunagari.s3.S3Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/activity")
public class ActivityApiController {

    @Autowired
    private ActivityService activityService;

    @Autowired
    private S3Service s3service;

    @PostMapping("/new")
    public ResponseEntity<?> createActivity(
            @RequestParam("new-activity-title") String title,
            @RequestParam("new-activity-content") String content,
            @RequestParam("new-activity-address") String address,
            @RequestParam("new-activity-address2") String address2,
            @RequestParam("new-activity-city") String city,
            @RequestParam("new-activity-price") int price,
            @RequestParam("new-activity-photo") MultipartFile photo,
            @RequestParam("new-activity-category") String category,
            @RequestParam("new-activity-x") String longitude,
            @RequestParam("new-activity-y") String latitude
    ) {

        String s3url = s3service.uploadImageToS3(photo);

        System.out.println("");
        System.out.println("title => " + title);
        System.out.println("s3url => " + s3url);
        System.out.println("content => " + content);
        System.out.println("address => " + address);
        System.out.println("address2 => " + address2);
        System.out.println("price => " + price);
        System.out.println("category => " + category);
        System.out.println("photo => " + photo.getOriginalFilename());

        System.out.println("latitude => " + latitude);
        System.out.println("longitude => " + longitude);



        return  null;
    }
}
