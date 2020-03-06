package com.jxau.controller;


import com.jxau.model.Reserve;
import com.jxau.model.Student;
import com.jxau.model.Teacher;
import com.jxau.service.ReserveService;
import com.jxau.service.StudentService;
import com.jxau.service.TeacherService;
import com.jxau.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/reserve")
@SessionAttributes(value={"reserves"})
public class ReserveController {

    @Autowired
    ReserveService reserveService;
    @Autowired
    StudentService studentService;
    @Autowired
    TeacherService teacherService;

//
//    @RequestMapping("/getAllReserve")
//    public String getAllReserve(Model model){
//        List<Student> students=new ArrayList<Student>();
//        List<Teacher> teachers=new ArrayList<Teacher>();
//        List<Reserve> reserves=reserveService.getAllReserve();
//        for(Reserve re:reserves){
//            int teacherId=re.getTeacherId();
//            Teacher teacher=teacherService.selectTeacherById(teacherId);
//            teachers.add(teacher);
//            int studentId=re.getStudentId();
//            Student student=studentService.selectStudentById(studentId);
//            students.add(student);
//        }
//
//        model.addAttribute("reserves",reserves);
//        model.addAttribute("students",students);
//        model.addAttribute("teachers",teachers);
//        return "/admin/reserveList.jsp";
//    }
//
//

    @RequestMapping("/getReserveByPage")
    public String getReserveByPage(HttpServletRequest request, Model model){

        List<Student> students=new ArrayList<Student>();
        List<Teacher> teachers=new ArrayList<Teacher>();
        String currentPage=request.getParameter("currentPage");
        if(currentPage==null){
            currentPage="1";
        }
        int current=Integer.parseInt(currentPage);
        int pageNum = 5;
        List<Reserve> reserves = reserveService.getReserveByPage((current-1)*pageNum,pageNum);
        for (Reserve re:reserves){
            int teacherId=re.getTeacherId();
            Teacher teacher=teacherService.lookCurrentTeacher(teacherId);
            teachers.add(teacher);
            int studentId=re.getStudentId();
            Student student=studentService.selectStudentById(studentId);
            students.add(student);
        }
        int totals = reserveService.getTotalReserve();
        Page page = new Page(current,pageNum);
        page.setResult(reserves,totals);
        model.addAttribute("page",page);
        model.addAttribute("reserves",reserves);
        model.addAttribute("students",students);
        model.addAttribute("teachers",teachers);
        return "reserveList";

    }

    @RequestMapping("/getReserveByPage2")
    public String getReserveByPage2(HttpServletRequest request, Model model){

        List<Student> students=new ArrayList<Student>();
        List<Teacher> teachers=new ArrayList<Teacher>();
        String currentPage=request.getParameter("currentPage");
        if(currentPage==null){
            currentPage="1";
        }
        int current=Integer.parseInt(currentPage);
        int pageNum = 1;
        List<Reserve> reserves = reserveService.getReserveByPage((current-1)*pageNum,pageNum);
        for (Reserve re:reserves){
            int teacherId=re.getTeacherId();
            Teacher teacher=teacherService.lookCurrentTeacher(teacherId);
            teachers.add(teacher);
            int studentId=re.getStudentId();
            Student student=studentService.selectStudentById(studentId);
            students.add(student);
        }
        int totals = reserveService.getTotalReserve();
        Page page = new Page(current,pageNum);
        page.setResult(reserves,totals);
        model.addAttribute("page",page);
        model.addAttribute("reserves",reserves);
        model.addAttribute("students",students);
        model.addAttribute("teachers",teachers);
        return "reserveDetail";

    }


//
//
//    @RequestMapping("/deleteReserve")
//    public String deleteReserve(HttpServletRequest request,int id,Model model){
//            Reserve res=reserveService.getReserveById(id);
//            if(res.getReserveStatus().equals("预约成功")){
//                int teacherId=res.getTeacherId();
//                Teacher teacher=teacherService.selectTeacherById(teacherId);
//                teacher.setTeacherStatus("预约中");
//                teacherService.updateTeacherStatus(teacher);
//                int studentId=res.getStudentId();
//                Student student=studentService.selectStudentById(studentId);
//                student.setStudentStatus("预约中");
//                studentService.updateStudentStatus(student);
//            }
//            reserveService.deleteReserve(id);
//            return "/admin/reserveList.jsp";
//    }
//
//
//    @RequestMapping("/updateReserve")
//    public String updateReserve(HttpServletRequest request,Model model){
//
//        Reserve res=reserveService.getReserveById(Integer.parseInt(request.getParameter("id")));
//        //res.setReserveStatus(request.getParameter("reserveStatus"));
//
//        if(res.getReserveStatus().equals("预约成功")){
//            if(!(request.getParameter("reserveStatus").equals("预约成功"))){
//                int teacherId=res.getTeacherId();
//                Teacher teacher=teacherService.selectTeacherById(teacherId);
//                teacher.setTeacherStatus("预约中");
//                teacherService.updateTeacherStatus(teacher);
//                int studentId=res.getStudentId();
//                Student student=studentService.selectStudentById(studentId);
//                student.setStudentStatus("预约中");
//                studentService.updateStudentStatus(student);
//            }
//        }
//
//        if(!(res.getReserveStatus().equals("预约成功"))){
//            if((request.getParameter("reserveStatus").equals("预约成功"))){
//                int teacherId=res.getTeacherId();
//                Teacher teacher=teacherService.selectTeacherById(teacherId);
//                teacher.setTeacherStatus("已有学生");
//                teacherService.updateTeacherStatus(teacher);
//                int studentId=res.getStudentId();
//                Student student=studentService.selectStudentById(studentId);
//                student.setStudentStatus("已有家教");
//                studentService.updateStudentStatus(student);
//
//            }
//        }
//
//        res.setReserveStatus(request.getParameter("reserveStatus"));
//        reserveService.updateReserve(res);
//        return "redirect:/reserve/getReserveByPage";
//    }


    @RequestMapping("/getReserveById")
    public String getReserveById(int id,Model model){
        Reserve reserves =reserveService.getReserveById(id);
        model.addAttribute("reserves",reserves);
        return "reserveDetail";

    }

    @RequestMapping("/getReserveByTeacherId")
    public String getReserveByTeacherId(int teacherId,Model model){
        Reserve reserves =reserveService.getReserveByTeacherId(teacherId);
        model.addAttribute("reserves",reserves);
        return "reserveDetail";

    }

    @RequestMapping("/getReserveByStatus")
    public String getReserveByStatus(String reserveStatus,Model model){
        List<Reserve> reserves =reserveService.getReserveByStatus(reserveStatus);
        model.addAttribute("reserves",reserves);
        return "reserveList";

    }


}
