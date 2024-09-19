package com.tsunagari;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;

@Controller
public class TestController {

    @GetMapping("/hello")
    public String getTest(Model model) {
        ArrayList<String> msgList = new ArrayList<>();
        msgList.add("hello");
        msgList.add("springBoot");
        msgList.add("jsp");
        model.addAttribute("msgList",msgList);
        model.addAttribute("hello","hello jsp");
        return "/test/hello"; // hello.jsp
    }

    @GetMapping("/index")
    public String getIndex(Model model) {
        return "index"; // index.jsp
    }
}
