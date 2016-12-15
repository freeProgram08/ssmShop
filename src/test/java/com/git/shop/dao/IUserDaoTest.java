package com.git.shop.dao;


import com.git.shop.BaseTest;
import com.git.shop.entity.User;
import org.junit.Test;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.util.List;

public class IUserDaoTest  extends BaseTest{
    @Resource
    private IUserDao userDao;
    //所有的测试方法必须加@Test
    //所有的被测试方法必须是void
    @Test
    public  void selectAllTest(){
        List<User> list = userDao.selectAll();
        //断言结果为真，那么结果为false，就是测试失败
        Assert.isTrue(list!=null&&list.size()>0,"用户表不能为空");
    }
}
