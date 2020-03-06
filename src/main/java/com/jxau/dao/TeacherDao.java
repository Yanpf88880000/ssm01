package com.jxau.dao;

import com.jxau.model.Teacher;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface TeacherDao {

    //增 （点击"+"跳到教师注册页面）
    @Insert("insert into teacher(name,password,realName,sex,age,tel,address,subject,grade,identity,education,introduce,photo,teacherStatus) " +
            "values(#{name},#{password},#{realName},#{sex},#{age},#{tel}," +
            "#{address},#{subject},#{grade},#{identity},#{education},#{introduce},#{photo},#{teacherStatus})")
    int teacherAdd(Teacher teacher);

    //删
    @Delete("delete from teacher where id=#{id}")
    int teacherDelete(int id);

    //改（当前id的全部内容要显示到修改页面）,这个id是分页查询中查得每一条数据的id
    @Update("<script>"+
            "update teacher " +
            "<set>"+
            "<if test='name!=null'>name=#{name},</if>"+
            "<if test='password!=null'>password=#{password},</if>"+
            "<if test='realName!=null'>realName=#{realName},</if>"+
            "<if test='sex!=null'>sex=#{sex},</if>"+
            "<if test='age!=null'>age=#{age},</if>"+
            "<if test='tel!=null'>tel=#{tel},</if>"+
            "<if test='address!=null'>address=#{address},</if>"+
            "<if test='subject!=null'>subject=#{subject},</if>"+
            "<if test='grade!=null'>grade=#{grade},</if>"+
            "<if test='identity!=null'>identity=#{identity},</if>"+
            "<if test='education!=null'>education=#{education},</if>"+
            "<if test='introduce!=null'>introduce=#{introduce},</if>"+
            "<if test='photo!=null'>photo=#{photo},</if>"+
            "<if test='teacherStatus!=null'>teacherStatus=#{teacherStatus},</if>"+
            "</set>"+
            "where id=#{id}"+
            "</script>")
    int updateTeacher(Teacher teacher);


    //查 （包括查看功能，即查询当前id的教师的全部信息"select * from teacher where id=#{id}"）
    @Select("select * from teacher where id=#{id}")
    Teacher lookCurrentTeacher(int id);

    //模糊查询（无字段的话就查询全部）
    //传入多个参数要用集合
    //把查询得内容分页显示到教师管理页面
    @Select("select * from teacher " +
            "where subject like #{subject} and address like #{address} and sex like #{sex} ")
    List<Teacher> getAllTeacherBySubjectAddressSex(Map<String, Object> map);

    /**
     *  查看所有教师
     * @param currentPage     从第start条数据开始
     * @param pageNum      每页显示page条数据
     * @return  Teacher对象集合
     */
    @Select("select * from teacher limit #{currentPage},#{pageNum}")
    List<Teacher> getAllTeacher(@Param("currentPage") int currentPage, @Param("pageNum") int pageNum);

    //查看教师总记录数
    @Select("select count(*) from teacher")
    int getTotalTeacher();
}
