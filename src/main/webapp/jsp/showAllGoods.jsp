<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>显示所有商品</title>
    <%--导入样式模板--%>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <script type="text/javascript" src="/js/jquery-1.12.3.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#checkAll").change(function () {
                        var checkboxes = $("input[type='checkbox']");
                         /*取出当前主控件选中状态的值*/
                         /*true 选中，false不选中*/
                         var checked = this.checked;
                        /*  循环所有控件，将选中状态值改为主控件的值*/
                     /*   $.each(被循环集合,循环操作做方法)
                         每循环一次都调用一次循环方法*/
                         $.each(checkboxes,function () {
                             this.checked=checked;
                         })
                    })
        })
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <form action="/deleteGoods" method="post">
            <input type="submit" value="删除选中项" class="btn btn-primary">
        <table class="table">
            <tr>
                <th><input type="checkbox" id="checkAll">编号</th>
                <th>商品名</th>
                <th>商品类型</th>
                <th>价格</th>
            </tr>
            <c:forEach items="${requestScope.goodsList}" var="goods">
                <tr>
                        <%--取的是var定义的变量的值--%>
                    <td><input type="checkbox" name="ids" value="${goods.id}">${goods.id}</td>
                    <td>${goods.name}</td>
                    <td>${goods.type}</td>
                    <td>${goods.price}</td>
                    <td><a href="/deleteGoods?id=${goods.id}">删除</a></td>
                    <td><a href="/editGoods?id=${goods.id}">修改</a></td>
                </tr>
            </c:forEach>
        </table>
        </form>
    </div>
</div>

</body>
</html>
