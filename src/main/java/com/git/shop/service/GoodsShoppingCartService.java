package com.git.shop.service;

import com.git.shop.dao.IGoodsDao;
import com.git.shop.dao.IGoodsShoppingCartDao;
import com.git.shop.entity.Goods;
import com.git.shop.entity.GoodsShoppingCart;
import com.git.shop.entity.User;
import com.git.shop.type.ShoppingCartType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 购物车业务层
 */
@Service
public class GoodsShoppingCartService {
    @Resource
    private IGoodsShoppingCartDao shoppingCartDao;

    /**
     *     个人购物车添加商品业务
     * @param goods 待添加商品
     * @param req  用户信息存储对象
     * @return true 添加成功 false 添加失败
     */
    public boolean addShoppingCart(Goods goods, HttpServletRequest req){
        //查询完整商品
        if(goods==null){
            req.setAttribute("error","商品不存在");
            return false;
        }
        //获取用户信息
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        if(user==null){
            req.setAttribute("error","请登录");
            return false;
        }
        //查询当前用户的该商品是否已存在
        GoodsShoppingCart cart = new GoodsShoppingCart();
        cart.setGoodsId(goods.getId());
        cart.setUserId(user.getId());
        GoodsShoppingCart result = shoppingCartDao.selectByUserIdAndGoodsId(cart);
        if(result==null){//第一次添加
            cart.setState(ShoppingCartType.WAIT.toString());
            cart.setGoodsType(goods.getType());
            cart.setCount(1);
            cart.setGoodsPrice(goods.getPrice());
            cart.setGoodsName(goods.getName());
            //执行添加
            return shoppingCartDao.insert(cart);
        }else{
            //数量增加一 修改该商品数量
            Integer count = result.getCount();
            count++;
            result.setCount(count);
            return shoppingCartDao.updateById(result);
        }
    }

    /**
     * 查询个人购物车所有待付款商品
     * @param req  个人信息保存对象
     * @return null 无商品
     */
    public List<GoodsShoppingCart> showShoppingCart(HttpServletRequest req){
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        if(user==null){
            req.setAttribute("error","请登录");
            return null;
        }
        GoodsShoppingCart cart = new GoodsShoppingCart();
        cart.setUserId(user.getId());
        List<GoodsShoppingCart> result = shoppingCartDao.selectAllByUserIdAndState(cart);
         if(result==null||result.size()==0){
             return null;
         }
        return result;
    }
}
