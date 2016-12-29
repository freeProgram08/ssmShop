package com.git.shop.controller.reception;

import com.git.shop.entity.Goods;
import com.git.shop.entity.GoodsShoppingCart;
import com.git.shop.entity.User;
import com.git.shop.service.GoodsShoppingCartService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

//购物车任务分配控制器
@Controller
public class GoodsShoppingCartController {
    @Resource
    private GoodsShoppingCartService cartService;
    //保存商品到购物车
    @RequestMapping(path = "/addShoppingCart",
            method = RequestMethod.POST)
    public String addShoppingCart(Integer id,
                                  String name,String type,Double price,
                                  HttpServletRequest req){
        Goods goods = new Goods();
        goods.setId(id);
        goods.setType(type);
        goods.setName(name);
        goods.setPrice(price);
        //执行购物车添加商品业务
        cartService.addShoppingCart(goods, req);
        //查询购物车代付款商品集合
        List<GoodsShoppingCart> result =
                cartService.showShoppingCart(req);
        req.setAttribute("goods",goods);
        HttpSession session = req.getSession();
        session.setAttribute("count",result==null?0:result.size());
        return "showGoods";
    }
    //查询个人所有购物车商品
    @RequestMapping(path = "/showShoppingCart",method =RequestMethod.GET)
   public String showShoppingCart(HttpServletRequest req){
        List<GoodsShoppingCart> result = cartService.showShoppingCart(req);
        req.setAttribute("cartList",result);
        return "cartShow";
    }
}
