package com.jxau.test;

import com.jxau.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;


public class TestService {
    public static void main(String[] args) {
        //读取配置文件
        ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
        //获取对象
        UserService userService = context.getBean(UserService.class);
        //调用方法
        userService.getAllUser();
    }
}
