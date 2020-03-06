package com.jxau.dao;

import com.jxau.model.Student;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentDao {

    //增 （点击"+"跳到学生注册页面）
    @Insert("insert into student(name,password,realName,sex,age,tel,address,subject,situation,demand) " +
            "values(#{name},#{password},#{realName},#{sex},#{age},#{tel}," +
            "#{address},#{subject},#{situation},#{demand})")
    int studentAdd(Student student);


    @Select("select * from student limit #{currentPage},#{pageNum}")
    List<Student> getAllStudent(@Param("currentPage") int currentPage, @Param("pageNum") int pageNum);

    //查看教师总记录数
    @Select("select count(*) from student")
    int getTotalStduent();

    @Select("select * from student where id =#{id}")
    Student selectStudentById(int id);

}
