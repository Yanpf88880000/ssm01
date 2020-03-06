package com.jxau.controller;

import com.jxau.model.User;
import com.jxau.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping("/user")
@SessionAttributes(value = {"user"})
public class UserController {
    @Autowired
    UserService userService;


    @RequestMapping("/getAllUser")
    public String getAllUser(Model model){
        List<User> users = userService.getAllUser();
        model.addAttribute("users", users);
        return "userList";
    }

    @RequestMapping("/login")
    public String login(User user, Model model){
        User us = userService.login(user);
        if(us != null){
            model.addAttribute("user", us);
            return "success";
        }else {
            model.addAttribute("tips", "用户名或密码错误！");
            return "forward:/login.jsp";
        }

    }


    @RequestMapping("/userAdd")
    public String userAdd(User user,Model model){
        int result = userService.addUser(user);
        if(result > 0){
            return "redirect:/login.jsp";
        }else {
            model.addAttribute("tips", "注册失败");
            return "forward:/regist.jsp";
        }

    }
}
