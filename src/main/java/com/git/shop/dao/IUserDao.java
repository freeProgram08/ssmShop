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
    //若user对象属性值不为空
    //那么就做为查询条件
    List<User> selectByUser(User user);

    /**
     * 保存user对象到数据库
     * @param user 待保存user对象
     * @return true保存成 false保存失败
     */
    boolean saveUser(User user);
}
