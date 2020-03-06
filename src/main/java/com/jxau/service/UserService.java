package com.jxau.service;

import com.jxau.model.User;

import java.util.List;

public interface UserService {
    //获取所有的用户信息
    List<User> getAllUser();
    //用户登录
    User login(User user);
    //用户注册
    int addUser(User user);
}
