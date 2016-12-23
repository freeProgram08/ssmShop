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
import java.util.List;

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

    /**
     * 查询当前已有的所有商品
     * @return  null 无商品
     */
    public List<Goods> showAllGoods(){
        //执行dao方法，查询所有商品
        List<Goods> result = goodsDao.selectAll();
        if(result==null||result.size()==0){
            return null;//没有商品
        }
        return result;//有商品
    }

    /**
     * 根据id集合进行批量删除
     * @param ids 待删除id集合
     * @return  true删除成功，false删除失败
     */
    public boolean deleteAllByIds(List<Integer> ids){
        if(ids==null){
            return false;
        }
        //只有一个id
        if(ids.size()==1){
            return goodsDao.deleteById(ids.get(0));
        }
        //有多个id
        return  goodsDao.deleteByIds(ids);
    }

    /**
     * 根据id值查询对应商品信息
     * @param id  id值
     * @return  null没有
     */
    public Goods   searchGoodsById(Integer id){
        if(id==null){
            return null;//没有
        }
        //返回dao查询结果
        return goodsDao.selectGoodsById(id);
    }

    /**
     * 根据id值修改对应商品信息
     * 注：商品id不能为空
     * @param goods  带id值的商品对象
     * @return true 修改成功  false 修改失败
     */
    public  boolean editGoodsById(Goods goods,HttpServletRequest req){
        if(goods==null){
            req.setAttribute("error","空值异常");
            return false;//修改失败
        }
        //通过目前的的
        Goods temp = goodsDao.selectGoodsByTypeAndName(goods);
        //修改失败情况
        //查到对应商品，且不是本身
        if(temp!=null&&temp.getId()!=goods.getId()){
            req.setAttribute("error","修改后商品与原有商品冲突");
            return false;
        }
        //调用dao执行修改
       return goodsDao.update(goods);
    }
}
