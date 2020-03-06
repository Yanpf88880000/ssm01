package com.jxau.service;


import com.jxau.model.Notice;

import java.util.List;
import java.util.Map;

public interface NoticeService {


    //查询所有公告分页显示
    List<Notice> getAllNoticeByPage(int currentPage, int pageNum);
    //获取notice表总页数
    int getTotalNotice();

//-------------------------------------------
    //查看当前id得notice信息
    Notice lookCurrentNotice(int id);
//----------------------------------------------

//模糊查询--->通过content，title
List<Notice> getAllNoticeByContentTitle(Map<String, Object> map);


    //增加-------------------------------
    int  addNotice(Notice notice);

//删除---------------------------------
    int deleteNotice(int id);

//修改---------------------------------
    int noticeUpdate(Notice notice);


    //根据categoryid查询title
       List<Notice> getAllTitleByCategoryId(Notice notice);

}
