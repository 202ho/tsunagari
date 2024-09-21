package com.tsunagari;

import com.tsunagari.domain.Test;
import com.tsunagari.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class TestController {

    @Autowired
    TestService testService;

    @GetMapping("/hello")
    public String getTest(Model model) {
        ArrayList<String> msgList = new ArrayList<>();
        msgList.add("hello");
        msgList.add("springBoot");
        msgList.add("jsp");
        model.addAttribute("msgList",msgList);
        model.addAttribute("hello","hello jsp");

        List<Test> testList = testService.findAll();
        System.out.println("###");
        System.out.println(testList.get(1).toString());
        System.out.println(testList.get(2).toString());
        model.addAttribute("testList",testList);
        return "/test/hello"; // hello.jsp
    }

    @GetMapping("/index")
    public String getIndex(Model model) {
        return "index"; // index.jsp
    }
}
