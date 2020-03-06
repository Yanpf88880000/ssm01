package com.jxau.service.impl;

import com.jxau.dao.LoginDao;
import com.jxau.model.Parent;
import com.jxau.model.Teacher;
import com.jxau.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    LoginDao loginDao;


    @Override
    public Teacher getTeacher(Teacher teacher) {
        return loginDao.getTeacher(teacher);
    }

    @Override
    public Parent getParent(Parent parent) {
        return loginDao.getParent(parent);
    }
}
