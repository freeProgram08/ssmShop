<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>显示所有商品</title>
    <%--导入样式模板--%>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <table class="table">
            <tr>
                <th>编号</th>
                <th>商品名</th>
                <th>商品类型</th>
                <th>价格</th>
            </tr>
            <c:forEach items="${requestScope.goodsList}" var="goods">
                <tr>
                        <%--取的是var定义的变量的值--%>
                    <td>${goods.id}</td>
                    <td>${goods.name}</td>
                    <td>${goods.type}</td>
                    <td>${goods.price}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>
