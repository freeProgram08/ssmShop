package com.git.shop.type;

/**
 * 购物车商品状态枚举类
 */
public enum ShoppingCartType {
    /*定义类型*/
    WAIT("待付款"),DESTROY("注销"),SUCCESS("完成");
    /*附加信息*/
    private String desc;
    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    private ShoppingCartType(String desc){
        this.desc=desc;
    }
}
