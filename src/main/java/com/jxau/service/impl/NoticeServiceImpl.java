package com.jxau.service.impl;

import com.jxau.dao.NoticeDao;
import com.jxau.model.Notice;
import com.jxau.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    NoticeDao noticeDao;




    //获取所有信息并分页显示
    @Override
    public List<Notice> getAllNoticeByPage(int currentPage,int pageNum) {
        int current = (currentPage-1)*pageNum;
        return noticeDao.getAllNoticeByPage(current,pageNum);

    }
    //获取总的notice数量
    @Override
    public int getTotalNotice() {
        return noticeDao.getTotalNotice();
    }
    //根据当前id显示notice信息
    @Override
    public Notice lookCurrentNotice(int id) {
        return noticeDao.lookCurrentNotice(id);
    }


    //模糊查询----------------

    @Override
    public List<Notice> getAllNoticeByContentTitle(Map<String, Object> map) {
        return noticeDao.getAllNoticeByContentTitle(map);
    }
    //增加-------------------------------
    @Override
    public int addNotice(Notice notice) {
        return noticeDao.addNotice(notice);
    }

    //删除---------------------------------
    @Override
    public int deleteNotice(int id) {
        return noticeDao.deleteNotice(id);
    }


    //修改---------------------------------
    @Override
    public int noticeUpdate(Notice notice) {
        return noticeDao.noticeUpdate(notice);
    }

    //根据categoryid查询title
    @Override
     public List<Notice> getAllTitleByCategoryId(Notice notice) {
        return noticeDao.getAllTitleByCategoryId(notice);
    }

}
