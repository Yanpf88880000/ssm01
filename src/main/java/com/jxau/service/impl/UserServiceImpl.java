package com.jxau.service.impl;

import com.jxau.dao.UserDao;
import com.jxau.model.User;
import com.jxau.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    //获得某个对象要用这个注解
    @Autowired
    UserDao userDao;

    @Override
    public List<User> getAllUser(){
//        List<User> users = userDao.getAllUser();
//        for(User us : users){
//            System.out.println(us.toString());
//        }
       // userDao.getAllUser();
        System.out.println("UserServiceImpl");
        return userDao.getAllUser();
    }

    @Override
    public User login(User user) {

        return userDao.login(user);
    }

    @Override
    public int addUser(User user) {
        return userDao.userAdd(user);

    }

//    @Override
//    public List<User> getAllUser() {
//        System.out.println("UserServiceImpl...");
//        return null;
//    }
}
