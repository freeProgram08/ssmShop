package com.git.shop.service;

import com.git.shop.dao.IUserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 用户相关业务
 */
@Service
public class UserService {
    @Resource
    private IUserDao userDao;

    //注册，登录


}
