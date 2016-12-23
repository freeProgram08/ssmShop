package com.git.shop.dao;

import com.git.shop.entity.Goods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 商品表数据库操作类
 */
public interface IGoodsDao {
    /**
     * 保存商品
     * @param goods 待保存商品对象
     * @return true保存成功  false保存失败
     */
    boolean insert(Goods goods);

    /**
     * 根据id删除商品
     * @param id  筛选条件id值
     * @return  true删除成功 false删除失败
     */
    boolean deleteById(Integer id);
    /**
     * 根据id集合删除商品
     * @param ids 筛选条件id集合值
     * @return  true删除成功 false删除失败
     */
    boolean deleteByIds(@Param("ids") List<Integer>ids);

    /**
     * 查询所有商品
     * @return  null无商品 不为null 有商品
     */
    List<Goods> selectAll();

    /**
     * 以id为条件 其他属性为值的更改操作
     * 注：该对象id不能为空
     * @param goods  更改后的记录值对象
     * @return  true更改成功  false更改失败
     */
    boolean update(Goods goods);

    /**
     * 根据商品的类型，商品做查询
     * 注：type，name值不能为空
     * @param goods 包含type，name信息的商品对象
     * @return  null未找到匹配商品  非null 找到匹配商品
     */
   Goods selectGoodsByTypeAndName(Goods goods);
}
