<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>淘宝网 - 我的购物车</title>
    <meta charset="UTF-8">
    <link href="//www.taobao.com/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <link rel="stylesheet" href="/css/tb_global.css">
    <link rel="stylesheet" href="/css/tb_cart.css">
    <%--导入jquery组件--%>
    <script type="text/javascript" src="/js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="/js/diy/cart.js"></script>
</head>
<body>


<div id="page" class="cl">
    <!-- S GLOBAL HTML -->
    <div class="site-nav">
        <div class="site-nav-bd">
            <ul class="site-nav-bd-l">
                <li class="J_Menu menu my-taobao menu-empty" id="userMenu">
                    <div class="menu-hd ">
                        <a class="login-info-nick">${sessionScope.user.userName}</a>
                        <span class="arrow-icon-wrapper">
                           <span class="g-icon arrow-icon"></span>
                       </span>
                    </div>
                    <div class="menu-bd menu-list" >
                        <div class="menu-bd-panel">
                            <a>个人资料</a>
                            <a>注销</a>
                        </div>
                    </div>
                </li>
                <li class="tmsg">
                    <div class="J_Menu menu" data-fn-name="fn-tmsg">
                        <div class="menu-hd J_Tmsg_Basic tmsg_basic">
                            <span class="J_Tmsg_Logo_Icon tmsg_logo_icon g-icon" style=""></span>
                            <span class="J_Tmsg_Logo_Text tmsg_logo_text">消息</span> <span
                                class="J_Tmsg_Logo_Unread tmsg_logo_unread">1</span></span>
                        </div>
                    </div>
                </li>
            </ul>
            <ul class="site-nav-bd-r">
                <li class="menu home">
                    <div class="menu-hd"><a class="h">网站首页</a></div>
                </li>
                <li id="J_MiniCart" class="J_Menu menu menu-empty mini-cart" data-fn-name="fn-mini-cart"
                    data-spm="1997525049">
                    <div class="menu-hd">
                        <span class="g-icon"></span><span>购物车</span>
                        <strong class="h">${sessionScope.count}</strong>
                        <span class="arrow-icon-wrapper">
                            <span class="g-icon arrow-icon"></span></span>
                    </div>
                </li>
                <li class="J_Menu menu favorite">
                    <div class="menu-hd"><a><span
                            class="g-icon"></span><span>收藏夹</span></a>
                        <span class="arrow-icon-wrapper"><span
                                class="g-icon arrow-icon"></span></span>
                    </div>
                </li>

                <li class="site-nav-pipe">|</li>


                <li class="J_Menu menu site-map">
                    <div class="menu-hd">
                        <a>
                            <span class="g-icon"></span>
                            <span>网站导航</span>
                        </a>
                        <span class="arrow-icon-wrapper"><span
                                class="g-icon arrow-icon"></span></span>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div id="content">
        <div class="header tb-header">
            <h1 id="logo" class="cart-logo">
                <a>淘宝网<span></span></a>
            </h1>
            <div class="search">
                <div class="search-triggers">
                    <ul class="ks-switchable-nav" id="J_SearchTab">
                        <li class="J_SearchTab selected">
                            <a href="">宝贝</a>
                        </li>
                    </ul>
                    <s><s></s></s>
                </div>
                <div class="search-panel search-hp-panel ks-switchable-content">
                    <form class="search-panel-focused">
                        <div class="search-button">
                            <button class="btn-search" type="submit">搜 索</button>
                        </div>
                        <div class="search-panel-fields search-hp-fields search-common-panel">
                            <div class="search-combobox ">
                                <div class="search-combobox-input-wrap">
                                    <input name="q">
                                </div>
                            </div>
                            <i id="J_SearchIcon" style="display: none;"></i>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="cart-layout-TB ">
            <div class="cart">
                <div class="cart-filter-bar">
                    <ul class="switch-cart">
                        <li class="btn-switch-cart switch-cart-0 current">
                            <a class="J_MakePoint">
                                <em>全部商品</em><span class="number">${sessionScope.count}</span><span class="pipe"></span>
                            </a>
                        </li>
                        <li class="btn-switch-cart switch-cart-2 ">
                            <a class="J_MakePoint">
                                <em>降价商品</em><span
                                    class="number">1</span><span class="pipe"></span></a>
                        </li>
                    </ul>
                    <div class="cart-sum">
                        <span class="pay-text">已选商品</span>
                        <strong class="price">
                            <em><span class="total-symbol">&nbsp;</span>0.00</em>
                        </strong><a class="submit-btn ">结&nbsp;算</a>
                    </div>
                    <div class="wrap-line">
                        <div class="floater" style="width: 123px; left: -1px;"></div>
                    </div>
                </div>

                <div class="cart-main">
                    <div class="cart-table-th">
                        <div class="wp">
                            <div class="th th-chk">
                                <div class="select-all J_SelectAll">
                                    <div class="cart-checkbox">
                                        <input id="checkAll" class="J_CheckBoxShop" type="checkbox"><label>勾选购物车内所有商品</label>
                                    </div>
                                    &nbsp;&nbsp;全选
                                </div>
                            </div>
                            <div class="th th-item">
                                <div class="td-inner">商品信息</div>
                            </div>
                            <div class="th th-info">
                                <div class="td-inner">&nbsp;</div>
                            </div>
                            <div class="th th-price">
                                <div class="td-inner">单价</div>
                            </div>
                            <div class="th th-amount">
                                <div class="td-inner">数量</div>
                            </div>
                            <div class="th th-sum">
                                <div class="td-inner">金额</div>
                            </div>
                            <div class="th th-op">
                                <div class="td-inner">操作</div>
                            </div>
                        </div>
                    </div>

                    <div class="J_Order clearfix order-body   all-select">

                        <div class="order-content">
                            <div class="item-list">
                                <div  class="bundle  bundle-last ">
                                    <div class="bundle-hd">
                                        <div class="td-chk"></div>
                                        <div class="bd-title">奇妙圣诞宴<i class="icon-bd-title"></i></div>

                                        <div class="act-promo">
                                            <div class="act-promo-wrapper">
                                                <ul class="act-promo-hint J_ScrollingPromoHint">
                                                    <li>满69元,享包邮</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="bundle-main">
                                    <div class="item-list">
                                        <c:forEach items="${requestScope.cartList}" var="cart">
                                        <div  class="item-holder">
                                            <div class="J_ItemBody item-body clearfix item-act  first-item selected  ">
                                                <ul class="item-content clearfix">
                                                    <li class="td td-chk">
                                                        <div class="td-inner">
                                                            <div class="cart-checkbox ">
                                                                <input class="J_CheckBoxItem"
                                                                       goods-price="${cart.goodsPrice}"
                                                                       goods-count="${cart.count}"
                                                                       shopping-id="${cart.id}">
                                                                <label>勾选商品</label>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-item">
                                                        <div class="td-inner">
                                                            <div class="item-pic J_ItemPic img-loaded">
                                                                <a>
                                                                    <img
                                                                            src="https://img.alicdn.com/bao/uploaded/i4/TB1Vw6vOVXXXXaGXXXXXXXXXXXX_!!0-item_pic.jpg_80x80.jpg"
                                                                            class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a>${cart.goodsName}</a>
                                                                </div>
                                                                <div class="item-other-info">
                                                                    <div class="promo-logos"></div>
                                                                    <div class="item-icon-list clearfix">
                                                                        <div class="item-icons J_ItemIcons  item-icons-fixed ">
                                                                            <a>
                                                                                <img
                                                                                        src="//assets.alicdn.com/sys/common/icon/trade/xcard.png">
                                                                            </a>
                                                                            <a>
                                                                                <img
                                                                                        src="//img.alicdn.com/tps/i3/T1Vyl6FCBlXXaSQP_X-16-16.png"
                                                                                        alt="七天退换">
                                                                            </a>
                                                                            <a>
                                                                                <img
                                                                                        src="//img.alicdn.com/tps/i4/T1BCidFrNlXXaSQP_X-16-16.png"
                                                                                        alt="如实描述">
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-info">
                                                        <div class="item-props ">${cart.goodsType}</div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="td-inner">
                                                            <div class="item-price price-promo-seller">
                                                                <div class="price-content">
                                                                    <div class="price-line"><em
                                                                            class="price-original">￥0.00</em>
                                                                    </div>
                                                                    <div class="price-line"><em
                                                                            class="J_Price price-now"
                                                                            tabindex="0">￥${cart.goodsPrice}</em></div>
                                                                </div>
                                                                <div class="promo-main promo-seller">
                                                                    <div class="promo-content  promo-p:jhs J_ItemPromotions">
                                                                        卖家降价<span class="arrow"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-amount">
                                                        <div class="td-inner">
                                                            <div class="amount-wrapper amount-has-error">
                                                                <div class="item-amount ">
                                                                    <a class="J_Minus minus">-</a>
                                                                    <input type="text" value="${cart.count}"
                                                                        class="text text-amount J_ItemAmount"
                                                                           shopping-id="${cart.id}">
                                                                    <a  class="J_Plus plus">+</a>
                                                                </div>
                                                                <div class="amount-msg J_AmountMsg"><em
                                                                        class="s-danger-text">限购20件</em>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-sum">
                                                        <div class="td-inner"><em tabindex="0"
                                                                                  shopping-id="${cart.id}"
                                                                                  goods-price="${cart.goodsPrice}"
                                                                                  class="J_ItemSum number">￥${cart.goodsPrice*cart.count}</em>
                                                            <div class="J_ItemLottery"></div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-op">
                                                        <div class="td-inner"><a title="移入收藏夹"
                                                                                 class="btn-fav J_Fav J_MakePoint"
                                                                                 data-point-url="//www.atpanel.com/jsclick?cache=14829062544121&amp;mycart=collect"
                                                                                 href="#">移入收藏夹</a><a
                                                                href="javascript:;"
                                                                data-point-url="//www.atpanel.com/jsclick?cache=14829062544122&amp;cartlist=delete"
                                                                class="J_Del J_MakePoint">删除</a>
                                                            <div class="find-similar J_find_similar close"
                                                                 data-sellerid="880734502"
                                                                 data-itemid="520138334858"
                                                                 data-categoryid="124302001">
                                                                <div class="J_find_similar_trigger"><a
                                                                        href="javascript:;"
                                                                        class="new-find-similar">相似宝贝</a><span
                                                                        class="arrow"></span><i
                                                                        class="icon-bd-title"></i></div>
                                                                <div class="find-similar-body"><img
                                                                        src="//gtd.alicdn.com/tps/i2/T1Q2BUXaxFXXXXXXXX-32-32.gif"
                                                                        class="find-similar-loading"></div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div  class="float-bar-holder"></div>
            <div  class="float-bar clearfix fixed-bottom" style="position: fixed;">
                <div  class="group-wrapper group-popup hidden" style="display: none;">
                    <div id="J_SelectedItemsList" class="group-content"></div>
                    <span class="arrow"></span></div>
                <div class="float-bar-wrapper">
                    <div id="J_SelectAll2" class="select-all J_SelectAll">
                        <div class="cart-checkbox"><input class="J_CheckBoxShop" id="J_SelectAllCbx2"
                                                          type="checkbox" name="select-all" value="true"><label
                                for="J_SelectAllCbx2">勾选购物车内所有商品</label></div>
                        &nbsp;全选
                    </div>
                    <div class="operations"><a href="#" hidefocus="true" class="J_DeleteSelected">删除</a><a href="#"
                                                                                                           hidefocus="true"
                                                                                                           class="J_ClearInvalid hidden">清除失效宝贝</a><a
                            href="#" hidefocus="true" class="J_BatchFav">移入收藏夹</a><a href="#" hidefocus="true"
                                                                                     class="J_BatchShare">分享</a>
                    </div>
                    <div class="float-bar-right">
                        <div id="J_ShowSelectedItems" class="amount-sum"><span class="txt">已选商品</span><em
                                id="J_SelectedItemsCount">0</em><span class="txt">件</span>
                            <div class="arrow-box"><span class="selected-items-arrow"></span><span
                                    class="arrow"></span></div>
                        </div>
                        <div id="J_CheckCOD" class="check-cod" style="display: none;"><span class="icon-cod"></span><span
                                class="s-checkbox J_CheckCOD"></span>货到付款
                        </div>
                        <div class="pipe"></div>
                        <div class="price-sum"><span class="txt">合计（不含运费）：</span><strong class="price"><em
                                id="J_Total"><span class="total-symbol">&nbsp;</span>0.00</em></strong></div>
                        <div class="btn-area"><a href="javascript:void(0)" id="J_Go"
                                                 class="submit-btn submit-btn-disabled"
                                                 aria-label="请注意如果没有选择宝贝，将无法结算"><span>结&nbsp;算</span><b></b></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>

<script>
function foo(dome) {
        var val = dome.value;
        var xmlhttp;//请求工具对象变量
        //做了一个浏览器兼容，不同的浏览器
        //创建工具对象的方式不同
        if (window.XMLHttpRequest)
        {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp=new XMLHttpRequest();
        }
        else
        {// code for IE6, IE5
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        //open(method,url,state)设定请求参数
        //state true 代表异步 false代表同步
         var url="/updateCountById?id=1&count="+val;
        xmlhttp.open("GET",url,false);
        xmlhttp.send();//同步下的状态，它会请求状态一直处理到4为止
        //在异步状态下它只处理到1
        var str=xmlhttp.response;
        alert(str)
    }
</script>
</body>
</html>
