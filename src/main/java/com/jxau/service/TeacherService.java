package com.jxau.service;

import com.jxau.model.Teacher;

import java.util.List;
import java.util.Map;

/**
 * service
 * 一个service对应一个dao和impl和controller
 */
public interface TeacherService {

    //修改teacher内容
    int updateTeacher(Teacher teacher);

    //删除teacher表中的数据
    int teacherDelete(int id);

    //增加教师
    int teacherAdd(Teacher teacher);


    //测试
    //查询所有教师
    List<Teacher> getAllTeacher(int currentPage, int pageNum);

    //查看当前id得教师信息
    Teacher lookCurrentTeacher(int id);

    //模糊查询，根据任教科目，地址和性别模糊查询
    List<Teacher> getAllTeacherBySubjectAddressSex(Map<String, Object> map);


    //获取teacher表总页数
    int getTotalTeacher();
}
