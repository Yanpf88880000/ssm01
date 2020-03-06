package com.jxau.service;

import com.jxau.model.Student;

import java.util.List;

public interface StudentService {

    List<Student> getAllStudent(int currentPage, int pageNum);

    //增加学生
    int studentAdd(Student student);

    //获取student表总页数
    int getTotalStudent();


    //通过id查询学生
    Student selectStudentById(int id);
}
