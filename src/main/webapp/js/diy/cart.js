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
})