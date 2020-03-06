package com.jxau.dao;

import com.jxau.model.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    @Select("select * from user")
    List<User> getAllUser();

    @Select("select * from user where userName = #{userName} and password = #{password}")
    User login(User user);

    @Insert("insert into user(userName, password, sex, tel, age) " +
            "values(#{userName}, #{password}, #{sex}, #{tel}, #{age})")
    int userAdd(User user);


}
