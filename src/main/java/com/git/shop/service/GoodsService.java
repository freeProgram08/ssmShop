package com.git.shop.service;

import com.git.shop.dao.IGoodsDao;
import com.git.shop.entity.Goods;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

/**
 * 商品业务
 */
/*@Repository dao层
@Service  业务层
@Component 无法定义层 其他层
@Controller 控制层*/
@Service
public class GoodsService {
    //商品dao层对象
    @Resource
    private IGoodsDao goodsDao;

    /**
     * 商品保存业务
     * @param goods 待保存商品
     * @param req  错误信息存储对象
     * @return true保存成功 false保存失败
     */
    public boolean save(Goods goods, HttpServletRequest req){
        if(goods==null){//验证商品为空
            req.setAttribute("error","商品信息不能为空");
            return false;//保存失败
        }
        //根据商品名，类型查询商品
        Goods temp = goodsDao.selectGoodsByTypeAndName(goods);
        if(temp!=null){//验证商品已存在
            req.setAttribute("error","商品已存在");
            return false;//保存失败
        }
        //执行sql保存
        return goodsDao.insert(goods);//保存成功
    }
}
