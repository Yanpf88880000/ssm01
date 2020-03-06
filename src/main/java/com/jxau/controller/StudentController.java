package com.jxau.controller;

import com.jxau.model.Student;
import com.jxau.service.StudentService;
import com.jxau.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    StudentService studentService;

    //增加学生
    @RequestMapping("/studentAdd")
    public String studentAdd(Student student,Model model){
        int result = studentService.studentAdd(student);
        if (result>0){
            System.out.println("是否增加成功："+result);
            return "redirect:/index/index.jsp";//
        }else {
            System.out.println("是否增加成功："+result);
            //model.addAttribute("tips","增加失败");
            return "fail";//forward:/regist.jsp
        }
    }


    //查询所有学生信息显示在学生管理页面
    @RequestMapping("/getAllStudent")
    public String getAllStudent(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception{
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html;charset=utf-8");
        String currentPage=request.getParameter("currentPage");
        if(currentPage==null){
            currentPage="1";
        }
        int current=Integer.parseInt(currentPage);
        int pageNum = 5;
        List<Student> students = studentService.getAllStudent(current,pageNum);
        System.out.println(students);

        int totals = studentService.getTotalStudent();
        Page page = new Page(current,pageNum);
        page.setResult(students,totals);
        model.addAttribute("page",page);
        System.out.println(page);
        model.addAttribute("students",students);
        return "forward:/index/studentList.jsp";//查询成功，返回到一个页面
    }

    //获取学生记录总数
    public String getTotalStudent(Model model){
        int result = studentService.getTotalStudent();
        System.out.println("student表中记录数是："+result+"条");
        return "";
    }
}
