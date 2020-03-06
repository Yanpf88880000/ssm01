package com.jxau.service;

import com.jxau.dao.LoginDao;
import com.jxau.model.Parent;
import com.jxau.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;

public interface LoginService {
    //老师登录
    Teacher getTeacher(Teacher teacher);

    //家长登录
    Parent getParent(Parent parent);
}
