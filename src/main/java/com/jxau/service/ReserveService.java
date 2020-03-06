package com.jxau.service;

import com.jxau.model.Reserve;

import java.util.List;

public interface ReserveService {

    //获取所有的预约信息
    List<Reserve> getAllReserve();

    //删除预约信息
    int deleteReserve(int id);

    //修改预约状态
    int updateReserve(Reserve reserve);

    //通过分页获取预约信息
    List<Reserve> getReserveByPage(int currentPage, int pageNum);

    //获取预约信息的总数
    int getTotalReserve();

    //通过id获取预约信息
    Reserve getReserveById(int id);

    //通过id获取预约信息
    Reserve getReserveByTeacherId(int teacherId);

    //通过状态获取预约信息
    List<Reserve> getReserveByStatus(String reserveStatus);

}
