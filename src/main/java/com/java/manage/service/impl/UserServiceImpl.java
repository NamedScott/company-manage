package com.java.manage.service.impl;

import com.java.manage.dao.UserMapper;
import com.java.manage.domain.User;
import com.java.manage.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by xuguoyu on 2018/9/17.
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public void addUser(User user) {
        userMapper.insert(user);
    }
}
