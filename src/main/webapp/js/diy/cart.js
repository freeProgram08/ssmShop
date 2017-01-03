$(document).ready(function () {
    /*用户个人菜单选项*/
    $("#userMenu").hover(function () {
        /*removeClass移除指定样式模板*/
        $(this).removeClass("menu-empty")
        /* addClass添加指定样式*/
        $(this).addClass("menu-hover")
    },function () {
        /*removeClass移除指定样式模板*/
        $(this).removeClass("menu-hover")
        /* addClass添加指定样式*/
        $(this).addClass("menu-empty")
    })
    /*绑定全选按钮事件*/
    /*parent获取上一层标签*/
    $("#checkAll").parent().click(function () {
        /*判别依据变更 div是否具有cart-checkbox-checked样式*/
        /*hasClass 判别是否具有某指定样式*/
        if($(this).hasClass("cart-checkbox-checked")){
            $(".cart-checkbox").removeClass("cart-checkbox-checked");
        }else{
            $(".cart-checkbox").addClass("cart-checkbox-checked");
        }
    })
   /* 设置单选*/
   $(".J_Order .cart-checkbox").click(function () {
       if($(this).hasClass("cart-checkbox-checked")){
           $(this).removeClass("cart-checkbox-checked")
       }else{
           $(this).addClass("cart-checkbox-checked")
       }
   })
    $(".submit-btn").click(function () {
        sumMoney()
    })
})

function sumMoney() {
    /*计算被选择项的值*/
 /*   :has(选择器) 在需要选用父类标签以子类标签为依据的时候使用*/
    var checkList= $(".bundle-main .item-content:has('.cart-checkbox-checked')");
   /*find(选择器) 再次筛选*/
      var prices = checkList.find(".td-price .price-now");
       /*得到文字节点*/
      var texts = prices.text();
       /*/g全匹配*/
       var sny =texts.replace(/￥/,"");
        sny=  sny.replace(/￥/g,"+");
   /* eval 将字符串尝试用代码方式取执行*/
     var sum = eval(sny);
    var $price = $(".price em");
    $price.text("￥"+sum+".00");
}