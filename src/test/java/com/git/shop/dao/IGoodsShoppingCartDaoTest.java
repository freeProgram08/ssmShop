package com.git.shop.dao;

import com.git.shop.BaseTest;
import com.git.shop.entity.GoodsShoppingCart;
import com.git.shop.type.ShoppingCartType;
import org.junit.Assert;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

/**
 * 购物车dao层测试类
 */
public class IGoodsShoppingCartDaoTest extends BaseTest {
    @Resource
    private IGoodsShoppingCartDao dao;

    @Test
    public void insertTest(){
        GoodsShoppingCart cart = new GoodsShoppingCart();
        cart.setGoodsId(1);
        cart.setUserId(1);
        cart.setGoodsName("测试");
        cart.setGoodsPrice(99.00);
        cart.setGoodsType("测试视频");
        cart.setCount(1);
        cart.setState(ShoppingCartType.WAIT.toString());
        boolean insert = dao.insert(cart);
        Assert.assertTrue("保存购物车商品出错",insert);
    }

    @Test
    public  void selectByUserIdAndGoodsIdTest(){
        GoodsShoppingCart cart = new GoodsShoppingCart();
        cart.setUserId(1);
        cart.setGoodsId(1);
        GoodsShoppingCart result = dao.selectByUserIdAndGoodsId(cart);
        Assert.assertNotNull("根据用户id，商品id查询购物车商品错误",result);
    }

    @Test
    public void updateByIdTest(){
        GoodsShoppingCart cart = new GoodsShoppingCart();
        cart.setCount(2);
        cart.setId(1);
        boolean b = dao.updateById(cart);
        Assert.assertTrue("根据id修改count购物车商品错误",b);
    }
    @Test
    public void selectAllByUserIdAndStateTest(){
        GoodsShoppingCart cart = new GoodsShoppingCart();
        cart.setId(1);
        List<GoodsShoppingCart> result = dao.selectAllByUserIdAndState(cart);
        Assert.assertNotNull("根据id修改count购物车商品错误",result);
    }
}
