package com.jxau.dao;

import com.jxau.model.Parent;
import com.jxau.model.Teacher;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginDao {
    @Select("select * from teacher where name=#{name} and password=#{password}")
    Teacher getTeacher(Teacher teacher);

    @Select("select * from parent where name=#{name} and password=#{password}")
    Parent getParent(Parent parent);
}
