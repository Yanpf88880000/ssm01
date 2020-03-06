package com.jxau.controller;

import com.jxau.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

    @Autowired
    UserService userService;

    @RequestMapping("/testHello")
    public String testHello(){
        System.out.println("testHello...");
        userService.getAllUser();
        return "success";
    }
}
