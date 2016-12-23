package com.git.shop.controller;

import com.git.shop.entity.Goods;
import com.git.shop.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Collections;
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
    @RequestMapping(path="/deleteGoods" )
    /*springmvc 默认的参数声明都是需要填值的 required 默认值为true
     若想参数可以为空，需要更改required属性为false*/
    public  String deleteGoods(@RequestParam(required = false) Integer id,
                               @RequestParam(required = false)Integer [] ids){
        List<Integer> idsList = new ArrayList<>();
        if(id==null){//不是删除单个
            //addAll(待添加的集合，值集合)
            Collections.addAll(idsList,ids);
        }else{
            Collections.addAll(idsList,id);
        }
        //调用删除业务
        goodsService.deleteAllByIds(idsList);
        return "redirect:/showGoods";
    }
}

