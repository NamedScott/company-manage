package com.java.manage.controller;

import com.java.manage.domain.User;
import com.java.manage.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * Created by xuguoyu on 2018/9/17.
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping(value = "/test")
    public String process() throws Exception {
        User user = new User();
        user.setCreateTime(new Date());
        user.setModifyTime(new Date());
        user.setUserName("test");
        user.setPassword("test");
        user.setMobile("test");
        user.setMail("test");
        user.setShowName("test");
        user.setDeleted((short)1);
        userService.addUser(user);
        return "test";
    }
}
