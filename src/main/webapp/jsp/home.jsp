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
<div class="container-fluid noPaddingMargin">
<%--    导入页头--%>
    <jsp:include page="/jsp/pluginJsp/header.jsp"></jsp:include>
    <div class="row">
        <div class="col-xs-offset-1 col-xs-11">
            <div class="row">
                <ul>
                    <c:forEach items="${requestScope.goodsList}" var="goods">
                        <li class="col-xs-2 goods">
                            <a href="/showGoodsById?id=${goods.id}">
                        <dd>
                        <dt><img src="/img/mao.png"></dt>
                        <dt>${goods.name}</dt>
                        <dt>${goods.price}</dt>
                        </dd>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            </table>
        </div>
    </div>
</div>
<!--登录框-->
<div class="modal fade" id="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"><span>&times;</span></button>
                <h4 class="modal-title">用户登录</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="/login" method="post">
                    <div class="form-group">
                        <label class="col-xs-3">用户名</label>
                        <div class="col-xs-9">
                            <input class="form-control" type="text" name="name">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-3">密码</label>
                        <div class="col-xs-9">
                            <input class="form-control" type="text" name="password">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default">登录</button>
                <button type="button" class="btn btn-primary">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
    $(document).ready(function () {
        /*        弹出框选项加载
         backdrop设置是否点击框外自动关闭
         true 点击框外自动关闭
         static 点击框外无效果
         keyboard 是否开启键盘esc关闭功能  true 开启 false 关闭
         show 是否在加载完后直接显示  true 显示  false 不显示
         remote 只在需发送请求反馈内容时生效。
         */
        $("#modal").modal({
            backdrop: "static",
            keyboard: false,
            show: false
        })
        /*绑定点击事件，激活显示方法*/
        $("#login").click(function () {
            /* show显示弹框，hide隐藏弹框*/
            $("#modal").modal("show");
        })
        $(".close").click(function () {
            $("#modal").modal("hide");
        })
        $(".btn-primary").click(function () {
            $("#modal").modal("hide");
        })
    })
</script>
</body>
</html>
