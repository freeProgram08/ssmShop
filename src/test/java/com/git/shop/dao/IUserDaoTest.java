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
    @Test
    public void selectByIdTest(){
        //单元测试
        //定义一个假设值
        //并调用测试方法
        //判断是否是预期结果
        //若不是 测试不通过 是 测试通过
        //保证该功能在正常使用场景的稳定执行性能
        User user = userDao.selectById(1);//假设1是管理员账号，不能为空
        //断言
        //预期值判断
        Assert.isTrue(user!=null,"selectById测试失败");
    }
    @Test
    public void selectByNameTest(){
        //user表必须有一个叫admin的用户
        User admin = userDao.selectByName("admin");
        //判断结果是否符合预期
        Assert.isTrue(admin!=null,"缺少网站管理员账号");
    }
    @Test
    public void selectByUserTest(){
        User user = userDao.selectById(1);
        List<User> result = userDao.selectByUser(user);
        Assert.isTrue(result!=null||result.size()!=0,"根据user条件查询异常");
    }
}
