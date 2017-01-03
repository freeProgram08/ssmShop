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
    $(".select-all .cart-checkbox").click(function () {
        /*判别依据变更 div是否具有cart-checkbox-checked样式*/
        /*hasClass 判别是否具有某指定样式*/
        if($(this).hasClass("cart-checkbox-checked")){
            $(".cart-checkbox").removeClass("cart-checkbox-checked");
        }else{
            $(".cart-checkbox").addClass("cart-checkbox-checked");
        }
        /*调用重新计算价格*/
        sumMoney()
    })
   /* 设置单选*/
   $(".J_Order .cart-checkbox").click(function () {
       if($(this).hasClass("cart-checkbox-checked")){
           $(this).removeClass("cart-checkbox-checked")
       }else{
           $(this).addClass("cart-checkbox-checked")
       }
    /*   调用重新计算价格*/
       sumMoney()
   })
    /*联动单件商品数量，导致价格更改联动效果*/
  /*  on(字符串事件集合,绑定方法)用于绑定多个事件*/
    $(".item-amount input").on("change",function () {
     /*   取出shopping-id编号*/
        var id = $(this).attr("shopping-id");
        /*取出变化后的值*/
        var value=$(this).val();
       /* 定位要联动的多选框*/
        var str=".cart-checkbox input[shopping-id="+id+"]"
        /*获取多选框jquery对象*/
        var $2 = $(str);
        /*更改联动多选框count属性值*/
        $2.attr("goods-count",value);
       /* 定位单个商品和*/
        str=".td-sum em[shopping-id="+id+"]"
        /*获取价格*/
        var price = $(str).attr("goods-price");
        /*计算总价*/
        var sum=eval(price*value);
        /*赋值总价格*/
        $(str).text("￥"+sum+".00");
     /*   调用重新计算*/
        sumMoney()
        /*同步服务器*/
        editCountToServer(id,value);
    })
  /*  绑定减号点击事件联动*/
    $(".J_Minus").click(function () {
        /*定位到数量框*/
        var $input = $(this).parent().find("input");
        /*取出数量框当前的值*/
        var count = $input.val();
        if(count==1){//不能再减少
            return;
        }else{
            count--;
            /*重新赋值数量*/
           /* val赋值不能激活change事件*/
            $input.val(count)
          /*  人工激活对应change事件*/
            $input.change();
        }
    })
    /*  绑定加号点击事件联动*/
    $(".J_Plus").click(function () {
        /*定位到数量框*/
        var $input = $(this).parent().find("input");
        /*取出数量框当前的值*/
        var count = $input.val();
        if(count==20){//不能再减少
            return;
        }else{
            count++;
            /*重新赋值数量*/
            $input.val(count)
            $input.change();
        }
    })
})

/*
/!*结算已选商品价格*!/
function sumMoney() {
    /!*计算被选择项的值*!/
 /!*   :has(选择器) 在需要选用父类标签以子类标签为依据的时候使用*!/
    var checkList= $(".bundle-main .item-content:has('.cart-checkbox-checked')");
   /!*find(选择器) 再次筛选*!/
      var prices = checkList.find(".td-price .price-now");
       /!*得到文字节点*!/
      var texts = prices.text();
       /!*!/g全匹配*!/
       var sny =texts.replace(/￥/,"");
        sny=  sny.replace(/￥/g,"+");
   /!* eval 将字符串尝试用代码方式取执行*!/
     var sum = eval(sny);
    var $price = $(".price em");
    $price.text("￥"+sum+".00");
}*/
/*结算选中商品总价*/
function sumMoney(){
    /*得到所有的选中选择框*/
    var goodsList = $(".bundle-main .cart-checkbox-checked input");
    /*判断是否存在已选商品*/
    if(goodsList==undefined||goodsList==null||goodsList.length==0){
        $("#J_SelectedItemsCount").text(0);
        var $price = $(".price em");
        $price.text("￥0.00");
        return;
    }else{
        $("#J_SelectedItemsCount").text(goodsList.length);
    }
    var sum=0;
   /* $.each(集合,循环体)
    将集合里的元素传入循环体，保证都遍历一次*/
    $.each(goodsList,function () {
        var price = $(this).attr("goods-price");
        var count = $(this).attr("goods-count");
        /*eval(字符串)将字符串作为代码执行*/
        var temp=eval(price*count);
        sum+=temp;//累加
    })
    var $price = $(".price em");
    $price.text("￥"+sum+".00");
}
/* 更改单个商品数量，同步到服务器*/
function editCountToServer(id,count) {
    var data="id="+id+"&goodsCount="+count;
    $.ajax({
        type:'post',
        url:"/editCountById",
        data:data
    })
}