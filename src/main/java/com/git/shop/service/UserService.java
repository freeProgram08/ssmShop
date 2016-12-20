package com.git.shop.service;

import com.git.shop.dao.IUserDao;
import com.git.shop.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 用户相关业务
 */
@Service
public class UserService {
    @Resource
    private IUserDao userDao;

    //注册，登录

    /**
     * 注册新用户
     * @param user 待注册用户信息
     * @param req  保存错误提示对象
     * @return true注册成功   false注册失败
     */
     public  boolean register(User user, HttpServletRequest req){
         //验证用户名
         User temp = userDao.selectByName(user.getUserName());
         if(temp!=null){//验证不通过
             req.setAttribute("error","用户名已存在");//保存错误信息
             return false;//注册失败
         }
         return  userDao.saveUser(user);//注册成功,保存进数据库
     }

    /**
     * 用户登录
     * @param user 待验证登录用户
     * @param req  存储用户到session
     * @return  true登录成功  false登录失败
     */
     public  boolean login(User user,HttpServletRequest req){}
}
