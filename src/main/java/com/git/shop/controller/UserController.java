package com.git.shop.controller;

import com.git.shop.entity.GoodsShoppingCart;
import com.git.shop.entity.User;
import com.git.shop.service.GoodsShoppingCartService;
import com.git.shop.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

@Controller
public class UserController {
    @Resource
    private UserService userService;
    @Resource
    private GoodsShoppingCartService cartService;
    //注册
    @RequestMapping(path = "/register",
            method = RequestMethod.POST)
    public String register(String userName, String password
    , Integer age, String[] hobbies, Boolean gender,
                           HttpServletRequest req){
        User user = new User();
        user.setUserName(userName);
        user.setPassword(password);
        user.setHobbies(Arrays.toString(hobbies));
        user.setGender(gender);
        user.setAge(age);
        //执行注册
        boolean flag = userService.register(user, req);
        if(flag){//成功验证
            return "login";//注册成功
        }
        return "register";//失败返回注册
    }

    //登录
    @RequestMapping(path = "/login",method = RequestMethod.POST)
    public String login(String userName,String password,HttpServletRequest req){
        User user = new User();
        user.setPassword(password);
        user.setUserName(userName);
        boolean login = userService.login(user, req);
        if(login){
            List<GoodsShoppingCart> result =
                    cartService.showShoppingCart(req);
            HttpSession session = req.getSession();
            session.setAttribute("count",result==null?0:result.size());
            return "redirect:/home";
        }
        return "login";
    }
}
