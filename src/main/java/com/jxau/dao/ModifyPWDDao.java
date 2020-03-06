package com.jxau.dao;

import com.jxau.model.User;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface ModifyPWDDao {

    @Update("update user set password = #{password} where userId = #{userId}")
    int ModifyPassword(User user);
}
