package com.jxau.service.impl;

import com.jxau.dao.ModifyPWDDao;
import com.jxau.model.User;
import com.jxau.service.ModifyPWDService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ModifyPWDServiceImpl implements ModifyPWDService {

    @Autowired
    ModifyPWDDao modifyPWDDao;


    @Override
    public int modifyPassword(User user) {

        return modifyPWDDao.ModifyPassword(user);
    }
}
