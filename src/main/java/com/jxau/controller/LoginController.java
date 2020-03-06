package com.jxau.controller;

import com.jxau.model.Parent;
import com.jxau.model.Teacher;
import com.jxau.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/login")
@SessionAttributes(value = {"show","tips"})
public class LoginController {
    @Autowired
    LoginService loginService;

    @RequestMapping("teacherLogin")
    public String getTeacher(Teacher teacher, Model model){
        Teacher show = loginService.getTeacher(teacher);
        if(show != null){
            model.addAttribute("teahcer1", show);
            return "success";
        }else {
            model.addAttribute("tips", "账号或密码错误！");
            return "redirect:/login.jsp";
        }

    }

    @RequestMapping("/login")
    public String login(String name, String role, Model model, Teacher teacher, Parent parent){

        if(role.equals("教师")){

            Teacher show = loginService.getTeacher(teacher);
            //System.out.println(show.getName());
            //System.out.println(role);
            if(show != null){
                model.addAttribute("show", show);
                //System.out.println(show.toString());
                return "redirect:/index/isLoginIndex.jsp";
            }else {
                model.addAttribute("tips", "账号或密码错误！");
                return "redirect:/index/index.jsp";
            }
        }else {
            //System.out.println(role);
            Parent parent1 = loginService.getParent(parent);
            if(parent1 != null){
                model.addAttribute("show", parent1);
                return "redirect:/index/isLoginIndex2.jsp";
            }else {
                model.addAttribute("tips", "账号或密码错误！");
                return "redirect:/index/index.jsp";
            }
        }
    }

}
