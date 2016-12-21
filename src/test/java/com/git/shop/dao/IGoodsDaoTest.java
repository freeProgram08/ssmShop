package com.git.shop.dao;

import com.git.shop.BaseTest;
import com.git.shop.entity.Goods;
import org.junit.Assert;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

/**
 * 商品表dao测试类
 */
public class IGoodsDaoTest extends BaseTest {
    @Resource
    private IGoodsDao goodsDao;
     @Test
    public void insertTest(){
        Goods goods = new Goods();
        goods.setName("卫龙");
        goods.setType("食品");
        goods.setPrice(3.5);
        boolean insert = goodsDao.insert(goods);
        //对结果做预判
        Assert.assertTrue("插入商品信息失败",insert);
    }
    @Test
    public void deleteByIdTest(){
        boolean b = goodsDao.deleteById(1);
        //预期结果  排除逻辑错误
        Assert.assertTrue("根据id删除商品信息失败",b);
    }
    @Test
    public void selectAllTest(){
        List<Goods> result = goodsDao.selectAll();
        //判断预期值
        //检查逻辑错误
        Assert.assertTrue("查询所有商品信息失败",result!=null&&result.size()>0);
    }
    @Test
    public void updateTest(){
        Goods goods = new Goods();
        goods.setId(1);
        goods.setPrice(9.0);
        boolean update = goodsDao.update(goods);
        //判断预期值
        Assert.assertTrue("根据id修改商品信息失败",update);
    }
    @Test
    public void selectGoodsByTypeAndNameTest(){
        Goods goods = new Goods();
        goods.setName("测试");
        goods.setType("测试");
        Goods result = goodsDao.
                selectGoodsByTypeAndName(goods);
        //判断预期值
        Assert.assertTrue("根据商品名，类型查询失败",result!=null);
    }
}
