package com.git.shop.service;

import com.git.shop.BaseTest;
import com.git.shop.ReqUtil;

import com.git.shop.entity.Goods;
import org.junit.Assert;
import org.junit.Test;


import javax.annotation.Resource;

import javax.servlet.http.*;

/**
 * 商品业务测试
 */
public class GoodsServiceTest extends BaseTest{
    @Resource
    private GoodsService goodsService;

    @Test
    public void saveTest(){
        Goods goods = new Goods();
        HttpServletRequest req= ReqUtil.getReq();
        //情景一：数据库中已有该商品
        goods.setType("测试");
        goods.setName("测试");
        boolean save = goodsService.save(goods, req);
        //预判值为false
        Assert.assertFalse("已存在商品保存验证出错",save);
        //情景二：数据库中午该商品
        goods.setName("测试1");
        save = goodsService.save(goods, req);
        //预判值为true
        Assert.assertTrue("保存新商品验证出错",save);
    }
}
