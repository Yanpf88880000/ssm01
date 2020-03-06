package com.jxau.test;

import com.jxau.dao.UserDao;
import com.jxau.model.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class TestDao {
    public static void main(String[] args) {
        getAllUsers();
    }

    private static void getAllUsers(){
        try {
            //获取输入流对象
            InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
            //创建SqlSessionFactory工厂对象
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
            //创建SqlSession
            SqlSession session = sqlSessionFactory.openSession(true);
            //通过代理对象获取UserDao----反射
            UserDao userDao = session.getMapper(UserDao.class);
            List<User> users = userDao.getAllUser();
            for(User u : users){
                System.out.println(u.toString());
            }
            //关闭
            session.close();
            is.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
