package com.jxau.controller;

import com.jxau.model.Parent;
import com.jxau.service.ParentService;
import com.jxau.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/parent")
public class ParentController {
    @Autowired
    ParentService parentService;

    @RequestMapping("/getAllParent")
    public String getAllParent(HttpServletRequest request, HttpServletResponse response, Model model){
        String currentPage=request.getParameter("currentPage");
        if(currentPage==null){
            currentPage="1";
        }
        int current=Integer.parseInt(currentPage);
        int pageNum = 5;
        List<Parent> parents = parentService.getAllParent(current,pageNum);

        int totals = parentService.getTotalParent();
        Page page = new Page(current,pageNum);
        page.setResult(parents,totals);
        model.addAttribute("page",page);
        model.addAttribute("parents",parents);
        return "parentList";
    }

    @RequestMapping("/parentLogin")
    public String parentLogin(Parent parent,Model model){
        Parent pa = parentService.parentLogin(parent);
        System.out.println(pa);
        if(pa != null){
            // 登录成功
            model.addAttribute("parent",pa);
            return "forward:/success.jsp";
        }else{
            // 登录失败
            model.addAttribute("tips","用户名或密码错误");
            return "forward:/login.jsp";
        }
    }

    @RequestMapping("/parentRegister")
    public String parentRegister(Parent parent,Model model){
        int result = parentService.parentRegister(parent);
        if(result>0){
            return "redirect:/parent/getAllParent";
        }else {
            model.addAttribute("tips","注册失败");
            return "redirect:/parent/getAllParent";
        }
    }

    @RequestMapping("/parentUpdate")
    public String parentUpdate(Parent parent,Model model){
        int result = parentService.parentUpdate(parent);
        if(result > 0){
            model.addAttribute("tips","删除成功");
            return "redirect:/parent/getAllParent";
        }else {
            model.addAttribute("tips","修改失败");
            return "redirect:/parent/getAllParent";
        }
    }

    @RequestMapping("/parentDelete")
    public String  parentDelete(int id,Model model){
        int result = parentService.parentDelete(id);
        if(result>0){

            return "redirect:/parent/getAllParent";
        }else {
            model.addAttribute("tips","删除失败");
            return "redirect:/parent/getAllParent";
        }
    }

    @RequestMapping("/getParentByTelOrAddress")
    public String getParentByTelOrAddress(Parent parent,Model model){
        List<Parent> parents = parentService.getParentByTelOrAddress(parent);
        model.addAttribute("parents",parents);
        return "parentList";
    }

//    @RequestMapping("/getParentDetail")
//    public String getParentDetail(int id,Model model){
//        List<Parent> parents = parentService.getParentDetail(id);
//        model.addAttribute("parents",parents);
//        return "parentView";
//    }

    @RequestMapping("/getParentById")
    public String getParentById(int id,Model model,String update){
        Parent parent = parentService.getParentById(id);
        model.addAttribute("parent",parent);
        if(update != null){
            return "parentUpdate";
        }else{
            return "parentView";
        }

    }

    @RequestMapping("/getTotalParent")
    public String getTotalParent(){
        int rs = parentService.getTotalParent();
        System.out.println("家长总记录数："+rs);
        return "parentList";
    }

}
