package com.git.shop.controller;

import com.git.shop.entity.Goods;
import com.git.shop.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 负责商品 相关业务分配
 */
@Controller
public class GoodsController {
    @Resource
    private GoodsService goodsService;

    @RequestMapping(path = "/addGoods",
            method = RequestMethod.POST)
    public String addGoods(String goodsName, Double price, String type, HttpServletRequest req){
        Goods goods = new Goods();
        goods.setName(goodsName);
        goods.setType(type);
        goods.setPrice(price);
        //执行商品保存业务
        boolean save = goodsService.save(goods, req);
        if(save){
            //保存成功重定向到查询所有商品服务
            return "redirect:/showGoods";
        }else{
            //传递请求到jsp页面
            return "addGoods";
        }
    }

    @RequestMapping(path = "/showGoods",
            method = RequestMethod.GET)
    public  String showAllGoods(HttpServletRequest req){
        List<Goods> result = goodsService.showAllGoods();
        req.setAttribute("goodsList",result);
        return "showAllGoods";
    }
}

