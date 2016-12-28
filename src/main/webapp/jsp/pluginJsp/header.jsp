<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <form class="form-horizontal midAlign" action="/searchGoods" method="post">
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control" name="goodsName">
                    <span class="input-group-btn">
                        <button class="btn btn-primary" type="submit">搜索</button>
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

