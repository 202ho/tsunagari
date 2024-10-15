package com.tsunagari.s3;

import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.ObjectMetadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;

@Component
public class S3Service {

    @Autowired
    private AmazonS3Client amazonS3Client;

    @Value("${cloud.aws.s3.bucketName}")
    private String bucket;

    public String uploadImageToS3(MultipartFile photo) {
        try{
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd-ss");
            Random random = new Random();
            int randomNumber = random.nextInt(90) + 10;
            String fileName = now.format(formatter) + String.valueOf(randomNumber);
            ObjectMetadata metadata= new ObjectMetadata();
            metadata.setContentType(photo.getContentType());
            metadata.setContentLength(photo.getSize());
            amazonS3Client.putObject(bucket,fileName, photo.getInputStream(), metadata);
            return  amazonS3Client.getUrl(bucket, fileName).toString();
        } catch(Exception e){
            e.printStackTrace();
            return "";
        }
    }
}
