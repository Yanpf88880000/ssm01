package com.jxau.service;

import com.jxau.model.User;
import org.springframework.stereotype.Service;


public interface ModifyPWDService {
    int modifyPassword(User user);
}
