<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>天猫商城</title>
    <!--rel="stylesheet" 解决浏览器兼容问题，只有该状态下，样式表才能被正确解析-->    <!--导入css组件-->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <!--jquery依赖要放在功能js前，原因html是从上到下加载的-->
    <!-- 导入jquery依赖-->
    <script type="text/javascript" src="../js/jquery-1.12.3.min.js"></script>
    <!--导入动态功能js库-->
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <style type="text/css">
        /*取消默认内外边距*/
        .noPaddingMargin {
            padding: 0px !important;
            margin: 0px !important;
        }

        .midAlign {
            margin-top: 50px;
        }
        ul li{
            list-style-type: none;
        }
        .goods img{
            width: 180px;
            height: 180px;
        }
    </style>
</head>

<body>
<!--容器样式：整个页面显示  container固定大小的的容器(不支持百分比)
container-fluid 不固定大小的容器(支持百分比)
容器中行样式：代表容器中占用一整行的显示  row
容器行中的列样式：一行有12个列  都是以col-xs-->
<!--通常用于布局的标签是div-->
<!--容器-->
<div class="container-fluid noPaddingMargin">
    <!--行  菜单栏 -->
    <div class="row well noPaddingMargin">
        <!--col-xs-offset-偏远xx个列-->
        <!-- 前一部分菜单-->
        <div class="col-xs-offset-1 col-xs-3">
            <ul class="list-inline">
                <li class="text-muted ">喵，欢迎来天猫</li>
                <li><a href="#" class="text-muted" id="login">请登录</a></li>
                <li><a href="#" class="text-muted">免费注册</a></li>
            </ul>
        </div>
        <!--后一部分菜单-->
        <div class="col-xs-offset-1 col-xs-7">
            <ul class="list-inline">
                <li><a href="#" class="text-muted">我的淘宝</a> <span class="caret"></span></li>
                <li><a href="#" class="text-muted">我关注的品牌</a>
                    <span class="glyphicon glyphicon-heart"></span></li>
                <li><span class="glyphicon glyphicon-shopping-cart"></span> <a href="#" class="text-muted">购物车0件</a>
                </li>
                <li><a href="#" class="text-muted">收藏夹</a><span class="caret"></span></li>
                <li><span class="text-muted">|</span></li>
                <li><span class="glyphicon glyphicon-phone"></span><a href="#" class="text-muted">手机版</a></li>
                <li><a href="#" class="text-muted">淘宝网</a></li>
                <li><a href="#" class="text-muted">企业购</a></li>
                <li><a href="#" class="text-muted">商家支持</a><span class="caret"></span></li>
                <li><span class="glyphicon glyphicon-list"></span><a href="#" class="text-muted">网站导航</a><span
                        class="caret"></span></li>
            </ul>
        </div>
    </div>
    <!--  搜索栏-->
    <div class="row noPaddingMargin">
        <div class="col-xs-3">
            <img alt="图片不存在" src="../img/mao.png" style="height: 130px">
        </div>
        <div class="col-xs-offset-1 col col-xs-6  ">
            <form class="form-horizontal midAlign">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                        <button class="btn btn-primary" type="button">搜索</button>
                    </span>
                    </div><!-- /input-group -->
                </div>
                <div class="form-group">
                    <ul class="list-inline">
                        <li>
                            <a class="text-muted">羽绒服</a></li>
                        <li>
                            <a class="text-muted">零食</a></li>
                        <li>
                            <a class="text-muted">四件套</a></li>
                        <li>
                            <a class="text-muted">洗衣机</a></li>
                        <li>
                            <a class="text-muted">电视柜</a></li>
                        <li>
                            <a class="text-muted">保暖内衣</a></li>
                        <li>
                            <a class="text-muted">靴子</a></li>
                        <li>
                            <a class="text-muted">打底裤</a></li>
                        <li>
                            <a class="text-muted">双肩包</a></li>
                        <li>
                            <a class="text-muted">吹风机</a></li>
                        <li>
                            <a class="text-muted">牛仔裤</a></li>
                        <li>
                            <a class="text-muted">热水袋</a></li>
                    </ul>
                </div>
            </form>
        </div>
    </div>
    <!--  排序栏-->
    <div class="row">
        <div class="col-xs-offset-1 col-xs-11">
            <ul class="list-inline">
                <li>综合</li>
                <li>人气</li>
                <li>销量</li>
                <li>价格</li>
            </ul>
        </div>

    </div>

    <div class="row">
        <div class="col-xs-offset-1 col-xs-11">
            <div class="row">
                <ul>
                    <c:forEach items="${goodsList}" var="goods">
                        <li class="col-xs-3 goods">
                        <dd>
                        <dt><img src="/img/mao.png"></dt>
                        <dt>${goods.name}</dt>
                        <dt>${goods.price}</dt>
                        </dd>
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
