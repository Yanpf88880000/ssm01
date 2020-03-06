package com.jxau.controller;

import com.jxau.model.User;
import com.jxau.service.ModifyPWDService;
import com.jxau.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/modifyPassword")
public class ModifyPWDController {
    @Autowired
    ModifyPWDService modifyPWDService;


    @RequestMapping("/modifyPassword")
    public String modifyPassword(User user, Model model){
        int result = modifyPWDService.modifyPassword(user);
        if(result > 0){
            model.addAttribute("result", result);
            return "success";
        }else {
            model.addAttribute("tips", "修改密码错误！");
            return "forward:/login.jsp";
        }


    }


}
