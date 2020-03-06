package com.jxau.service.impl;

import com.jxau.dao.TeacherDao;
import com.jxau.model.Teacher;
import com.jxau.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("teacherServiceImpl")
public class TeacherServiceImpl implements TeacherService {

    //获得对象，先在TeacherDao配置@Repository
    @Autowired
    TeacherDao teacherDao;

    public int updateTeacher(Teacher teacher){
        return teacherDao.updateTeacher(teacher);
    }

    @Override
    public int teacherDelete(int id) {
        return teacherDao.teacherDelete(id);
    }

    @Override
    public int teacherAdd(Teacher teacher) {
        return teacherDao.teacherAdd(teacher);
    }

    @Override
    public List<Teacher> getAllTeacher(int currentPage,int pageNum) {
        int current = (currentPage-1)*pageNum;
        return teacherDao.getAllTeacher(current,pageNum);
    }

    @Override
    public Teacher lookCurrentTeacher(int id) {
        return teacherDao.lookCurrentTeacher(id);
    }

    @Override
    public List<Teacher> getAllTeacherBySubjectAddressSex(Map<String, Object> map) {
        return teacherDao.getAllTeacherBySubjectAddressSex(map);
    }

    @Override
    public int getTotalTeacher() {
        return teacherDao.getTotalTeacher();
    }
}
