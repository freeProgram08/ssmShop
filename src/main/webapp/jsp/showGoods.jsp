<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情页</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/diyCss.css">
    <!-- 导入jquery依赖-->
    <script type="text/javascript" src="../js/jquery-1.12.3.min.js"></script>
    <!--导入动态功能js库-->
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<jsp:include page="/jsp/pluginJsp/header.jsp"></jsp:include>
    <hr/>
    <div class="row">
        <div class="col-xs-4">
            <h3>${requestScope.goods.name}</h3>
            <img src="/img/a.jpg">
        </div>
        <div class=" well col-xs-8">
            <div>
                <h1 class="text-danger">￥${requestScope.goods.price}</h1>
            </div>
            <hr/>
            <div >
                <p ><span>月销量 </span><span>999</span></p>
                <p class="list-group"><span>累计评价 </span><span>999</span></p>
            </div>
            <hr/>
            <p>
                <form action="/addShoppingCart" method="post">
            <input type="hidden" name="id" value="${requestScope.goods.id}">
            <input type="hidden" name="name" value="${requestScope.goods.name}">
            <input type="hidden" name="type" value="${requestScope.goods.type}">
            <input type="hidden" name="price" value="${requestScope.goods.price}">
                <button  type="submit" class="btn btn-default">加入购物车</button>
        </form>
            </p>
        </div>
    </div>
</div>
<jsp:include page="/jsp/pluginJsp/loginPlugin.jsp"></jsp:include>
</body>
</html>
