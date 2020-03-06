package com.jxau.service.impl;

import com.jxau.dao.ParentDao;
import com.jxau.model.Parent;
import com.jxau.service.ParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ParentServiceImpl implements ParentService {
    @Autowired
    ParentDao parentDao;
    @Override
    public List<Parent> getParent() {
        return parentDao.getParent();
    }

    @Override
    public Parent parentLogin(Parent parent) {
        return parentDao.parentLogin(parent);
    }

    @Override
    public int parentRegister(Parent parent) {
        return parentDao.parentRegister(parent);
    }

    @Override
    public int parentUpdate(Parent parent) {
        return parentDao.parentUpdate(parent);
    }

    @Override
    public int parentDelete(int id) {
//        int result =
//        try{
//            return parentDao.parentDelete(id);
//        }catch(Exception e){
//
//        }
        return parentDao.parentDelete(id);
    }

    @Override
    public List<Parent> getParentByTelOrAddress(Parent parent) {
        return parentDao.getParentByTelOrAddress(parent);
    }

    @Override
    public List<Parent> getParentDetail(int id) {
        return parentDao.getParentDetail(id);
    }

    @Override
    public List<Parent> getAllParent(int currentPage,int pageNum) {
        int current = (currentPage-1)*pageNum;
        return parentDao.getAllParent(current,pageNum);
    }

    @Override
    public Parent getParentById(int id) {
        return parentDao.getParentById(id);

    }
    @Override
    public int getTotalParent() {
        return parentDao.getTotalParent();
    }

}
