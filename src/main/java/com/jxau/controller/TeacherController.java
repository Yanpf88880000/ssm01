package com.jxau.controller;


import com.jxau.model.Teacher;
import com.jxau.service.TeacherService;
import com.jxau.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teacher")//定义类级别的
public class TeacherController {

    //通过spring获取对象,调用方法测试
    @Autowired
    TeacherService teacherService;

    //修改教师数据
    @RequestMapping("/updateTeacher")
    public String updateTeacher(Teacher teacher,Model model){
        int result = teacherService.updateTeacher(teacher);
        if (result>0){
            System.out.println("是否修改成功："+result);
            return "success";//redirect:/login.jsp
        }else {
            System.out.println("是否修改成功："+result);
            model.addAttribute("tips","修改失败");
            return "fail";//forward:/regist.jsp
        }
    }

    //增加教师
    @RequestMapping("/teacherAdd")
    public String teacherAdd(Teacher teacher,Model model,MultipartFile multifile){
        String photo="";//定义照片路径
        //照片存放的绝对路径，每个人的电脑的路径不一样，要修改
        File file = new File("D:\\Shenzhen\\ssm01\\src\\main\\webapp\\index\\photo");

        String fileName = multifile.getOriginalFilename();//获取文件(照片)的名字
        try {
            //文件写入
            multifile.transferTo(new File(file,fileName));
            photo = file.getAbsolutePath();
        } catch (IOException e) {
            e.printStackTrace();
        }
        teacher.setPhoto(photo);

        int result = teacherService.teacherAdd(teacher);
        if (result>0){
            System.out.println("是否增加成功："+result);
            return "redirect:/index/index.jsp";
        }else {
            //model.addAttribute("tips","error");
            return "redirect:/index/index.jsp";
        }

    }

    //删除教师
    @RequestMapping("/teacherDelete")
    public String teacherDelete(int id, Model model){
        int result = teacherService.teacherDelete(id);
        if (result>0){
            System.out.println("是否删除成功："+result);
            return "success";//redirect:/login.jsp
        }else {
            System.out.println("是否删除成功："+result);
            model.addAttribute("tips","增加失败");
            return "fail";//forward:/regist.jsp
        }
    }

    //查

    //查看当前id得教师信息,并将该老师信息放到model设置得属性teacher中
    @RequestMapping("/lookCurrentTeacher")
    public String lookCurrentTeacher(int id, Model model){
        Teacher t = teacherService.lookCurrentTeacher(id);
        if (t!=null){
            //测试输出
            System.out.println(t.toString() );
            model.addAttribute("teacher",t);
            return "forward:/index/isLoginIndex.jsp";//回到一个页面
        }else {
            System.out.println("查看失败!!!");
            model.addAttribute("tips","查看失败");
            return "fail";//返回到一个页面中
        }
    }

    //模糊查询,将该老师信息放到model设置得属性teachers中
    @RequestMapping(path = "/getAllTeacherBySubjectAddressSex")
    public String getAllTeacherBySubjectAddressSex(String subject,String address,String sex,Model model){
        Map<String ,Object> map = new HashMap<String ,Object>();
        //map的名字要和sql里面的名字一致  "%"++"%"
        map.put("subject","%"+subject+"%");
        map.put("address","%"+address+"%");
        map.put("sex","%"+sex+"%");
        List<Teacher> teachers = teacherService.getAllTeacherBySubjectAddressSex(map);
        if (teachers!=null){
            for (Teacher t:teachers){
                System.out.println(t.toString() );
            }
            model.addAttribute("teachers",teachers);
            return "/admin/billList.jsp";//查询成功，返回到一个页面
        }else {
            model.addAttribute("tips","查询错误");
            return "/admin/index.jsp";//查询成功，返回到一个页面
        }

    }

    //查询所有教师信息显示在教师管理页面
    @RequestMapping("/getAllTeacher")
    public String getAllTeacher(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception{
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html;charset=utf-8");
        String currentPage=request.getParameter("currentPage");
        if(currentPage==null){
            currentPage="1";
        }
        int current=Integer.parseInt(currentPage);
        int pageNum = 6;
        List<Teacher> teachers = teacherService.getAllTeacher(current,pageNum);
        System.out.println(teachers);

        int totals = teacherService.getTotalTeacher();
        Page page = new Page(current,pageNum);
        page.setResult(teachers,totals);
        model.addAttribute("page",page);
        model.addAttribute("teachers",teachers);
        return "forward:/index/teacherList.jsp";//查询成功，返回到一个页面
    }

    //获取teacher记录总数
    public String getTotalTeacher(Model model){
        int result = teacherService.getTotalTeacher();
        System.out.println("teacher表中记录数是："+result+"条");
        return "";
    }

}
