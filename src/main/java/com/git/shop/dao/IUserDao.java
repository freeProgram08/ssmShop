package com.git.shop.dao;

import com.git.shop.entity.User;

import java.util.List;

/**
 * user表 dao层
 */
public interface IUserDao {
    //查询User表所有数据
    List<User> selectAll();
    //根据id查询User
    User selectById(Integer id);
    //根据Name查询User
    User selectByName(String name);
    //根据User查询User
    List<User> selectByUser(User user);
}
