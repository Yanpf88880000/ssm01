package com.jxau.dao;

import com.jxau.model.Notice;


import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Map;

@Repository
public interface NoticeDao {

    //查看notice分页--------------
    @Select("select * from notice limit #{currentPage},#{pageNum}")
    List<Notice> getAllNoticeByPage(@Param("currentPage") int currentPage, @Param("pageNum") int pageNum);

    //查看notice总记录数
    @Select("select count(*) from notice")
    int getTotalNotice();

    //查看当前id的公告信息
    @Select("select * from notice where id=#{id}")
    Notice lookCurrentNotice(int id);

    //模糊查询-->通过content
    @Select("select * from notice " +
            "where content like #{content} and title like #{title} " +
            "limit #{currentPage},#{pageNum}")
    List<Notice> getAllNoticeByContentTitle(Map<String, Object> map);

    //插入公告信息
    @Insert("insert into notice(title,content,sendTime) values(#{title},#{content},#{sendTime})")
    int addNotice(Notice notice);

    //删除公告信息--->通过id删除
    @Delete("delete from notice where id=#{id}")
    int deleteNotice(int id);

    //修改---------------------------------
    @Update("update notice set title=#{title},content=#{content},sendTime=#{sendTime} where id =#{id}")
    int noticeUpdate(Notice notice);

    //根据categoryid查询title
    @Select("select * from notice where categoryId = #{categoryId}")
    List<Notice> getAllTitleByCategoryId(Notice notice);
}
