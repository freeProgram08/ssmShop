<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情页</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/diyCss.css">
</head>
<body>
<div class="container-fluid noPaddingMargin">
<jsp:include page="/jsp/pluginJsp/header.jsp"></jsp:include>
    <div class="row">
        <div class="col-xs-4">
            <h1>${requestScope.goods.name}</h1>
            <img src="/img/mao.png">
        </div>
        <div class="col-xs-8">
            <h1>${requestScope.goods.name}</h1>
            <p>${requestScope.goods.type}</p>
            <p>￥${requestScope.goods.price}</p>
            <p><button class="btn btn-default">加入购物车</button></p>
        </div>
    </div>
</div>
</body>
</html>
