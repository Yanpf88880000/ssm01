package com.jxau.service.impl;

import com.jxau.dao.StudentDao;
import com.jxau.model.Student;
import com.jxau.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDao studentDao;

    @Override
    public List<Student> getAllStudent(int currentPage, int pageNum) {
        int current = (currentPage-1)*pageNum;
        return studentDao.getAllStudent(current,pageNum);

    }


    @Override
    public Student selectStudentById(int id) {
        return studentDao.selectStudentById(id);
    }

    @Override
    public int studentAdd(Student student) {
        return studentDao.studentAdd(student);
    }

    @Override
    public int getTotalStudent() {
        return studentDao.getTotalStduent();
    }
}
