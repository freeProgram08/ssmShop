package com.git.shop.controller.reception;

import com.git.shop.entity.Goods;
import com.git.shop.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/*spring 只能配置归它管理的class的属性*/
/*在括号中可以自定义bean名称*/
@Controller("receptionGoodsController")
public class GoodsController {
    @Resource
    private GoodsService goodsService;

    @RequestMapping(path = "/searchGoods",method = RequestMethod.POST)
    public String searchGoods(@RequestParam(required = false) String goodsName , HttpServletRequest req){
        //调用查询业务
        List<Goods> result = goodsService.searchGoods(goodsName);
        req.setAttribute("goodsList",result);
        return "home";
    }

    @RequestMapping(path = "/showGoodsById",method = RequestMethod.GET)
    public String  showGoodById(Integer id,HttpServletRequest req){
        //调用业务
        Goods goods = goodsService.searchGoodsById(id);
        req.setAttribute("goods",goods);
        return "showGoods";
    }
}
