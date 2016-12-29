package com.git.shop.dao;

import com.git.shop.entity.GoodsShoppingCart;

import java.util.List;

/**
 * 购物车表 操作dao
 */
public interface IGoodsShoppingCartDao {
    /**
     * 添加一个购车商品
     * 注：除了id，其他属性都应该完整
     * @param cart  待添加的商品
     * @return true成功 false 失败
     */
    boolean insert(GoodsShoppingCart cart);

    /**
     * 根据用户id跟商品id查询该商品
     * 注：cart对象userId，goodsId属性不能为空
     * @param cart  包含查询条件的购物车商品对象
     * @return  null不存在
     */
    GoodsShoppingCart selectByUserIdAndGoodsId(GoodsShoppingCart cart);

    /**
     * 根据id修改购物车商品 数量
     * 注：cart对象id，count属性不能为空
     * @param cart   包含id值，跟更改后count值的对象
     * @return true更改成功，false更改失败
     */
    boolean updateById(GoodsShoppingCart cart);

    /**
     * 根据用户id，商品状态查询商品集合
     * 注：用户id不能为空
     * 若state为空则查询所有
     * @param cart  包含用户id，state属性的对象
     * @return null 没有商品
     */
    List<GoodsShoppingCart> selectAllByUserIdAndState(GoodsShoppingCart cart);
}
