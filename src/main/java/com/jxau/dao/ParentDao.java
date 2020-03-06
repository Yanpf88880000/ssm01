package com.jxau.dao;

import com.jxau.model.Parent;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Repository
public interface ParentDao {
    // 查询所有parent
    @Select("select * from parent")
    List<Parent> getParent();

    // 查询分页
    @Select("select * from parent limit #{currentPage},#{pageNum}")
    List<Parent> getAllParent(@Param("currentPage") int currentPage, @Param("pageNum") int pageNum);

    // parent登录
    @Select("select * from parent where name=#{name} and password=#{password}")
    Parent parentLogin(Parent parent);

    // parent注册
    @Insert("insert into parent(name,password,realName,sex,age,address,tel) " +
            "values (#{name},#{password},#{realName},#{sex},#{age},#{address},#{tel})")
    int parentRegister(Parent parent);

    // parent修改
    @Update("update parent set name=#{name},password=#{password},realName=#{realName}," +
            "sex=#{sex},age=#{age},address=#{address},tel=#{tel} where id=#{id}")
    int parentUpdate(Parent parent);

    // parent删除
    @Delete("delete from parent where id=#{id}")
    int parentDelete(int parentId);

    // 通过指定条件获取所有用户
    @Select("<script>" +
            "select * from parent where 1=1" +
            "<if test='tel!=null'> and tel like CONCAT(CONCAT('%',#{tel}),'%')</if>" +
            "<if test='address!=null'> and address like CONCAT(CONCAT('%',#{address}),'%')</if>" +
            "</script>")
    List<Parent> getParentByTelOrAddress(Parent parent);


    // 通过家长id查孩子信息
    @Select("select * from parent")
    @Results({
            @Result(property = "student",column = "id",
                    one = @One(select = "com.jxau.dao.StudentDao.getStudentByParentId")),
            @Result(property = "id",column = "id")
    })
    List<Parent> getParentDetail(int id);

    // 通过家长id查家长
    @Select("select * from parent where id=#{id}")
    Parent getParentById(int id);

    // 查询家长总记录数
    @Select("select count(*) from parent")
    int getTotalParent();
}
