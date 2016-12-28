<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>天猫商城</title>
    <!--rel="stylesheet" 解决浏览器兼容问题，只有该状态下，样式表才能被正确解析-->    <!--导入css组件-->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/diyCss.css">
    <!--jquery依赖要放在功能js前，原因html是从上到下加载的-->
    <!-- 导入jquery依赖-->
    <script type="text/javascript" src="../js/jquery-1.12.3.min.js"></script>
    <!--导入动态功能js库-->
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>

</head>

<body>
<!--容器样式：整个页面显示  container固定大小的的容器(不支持百分比)
container-fluid 不固定大小的容器(支持百分比)
容器中行样式：代表容器中占用一整行的显示  row
容器行中的列样式：一行有12个列  都是以col-xs-->
<!--通常用于布局的标签是div-->
<!--容器-->
<div class="container">
    <%--    导入页头--%>
    <jsp:include page="/jsp/pluginJsp/header.jsp"></jsp:include>
    <!--  排序栏-->
        <hr/>
    <div class="row">
        <div class="col-xs-12">
            <ul class="list-inline">
                <li>综合</li>
                <li>人气</li>
                <li>销量</li>
                <li>价格</li>
                </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <ul class="list-inline">
                <c:forEach items="${requestScope.goodsList}" var="goods">
                    <li class="col-xs-3 goods">
                        <a href="/showGoodsById?id=${goods.id}">
                            <dd>
                            <dt><img src="/img/a.jpg"></dt>
                            <dt>${goods.name}</dt>
                            <dt>￥${goods.price}</dt>
                            </dd>
                        </a>
                    </li>
                </c:forEach>
            </ul>
            </div>
    </div>

</div>
<jsp:include page="/jsp/pluginJsp/loginPlugin.jsp"></jsp:include>
</body>
</html>
