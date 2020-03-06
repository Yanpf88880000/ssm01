package com.jxau.service;

import com.jxau.model.Parent;

import java.util.List;
import java.util.Map;

public interface ParentService {
    // 获取所有parent信息
    List<Parent> getParent();
    // parent登录
    Parent parentLogin(Parent parent);
    // parent注册
    int parentRegister(Parent parent);
    // parent修改
    int parentUpdate(Parent parent);
    // parent删除
    int parentDelete(int id);

    //通过电话号码和住址模糊查询
    List<Parent> getParentByTelOrAddress(Parent parent);

    // 根据家长id查孩子信息
    List<Parent> getParentDetail(int id);

    // 分页
    List<Parent> getAllParent(int currentPage, int pageNum);

    // 根据家长id
    Parent getParentById(int id);

    // 查询总记录数
    int getTotalParent();
}
