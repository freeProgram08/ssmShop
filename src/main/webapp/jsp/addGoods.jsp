<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>保存商品</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-offset-4 col-xs-4">
            <div class="col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="#">内容主页</a></li>
                    <li><a href="#">添加商品</a></li>
                </ol>
            </div>
            <div class="text-center text-danger">${requestScope.error}</div>
            <div class="col-xs-12">
                <form class="form-horizontal" action="/addGoods" method="post">
                    <div class="form-group">
                        <label class="col-xs-3">商品名</label>
                        <div class="col-xs-9">
                            <input class="form-control" type="text" name="goodsName" id="goodsName" value="1">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-3">商品类型</label>
                        <div class="col-xs-9">
                            <input type="radio" name="type" value="food">食品
                            <input type="radio" name="type" value="other">其他
                            <input type="radio" name="type" value="测试">测试
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-3">商品价格</label>
                        <div class="col-xs-9">
                            <input class="form-control" type="text" name="price">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class=" col-xs-offset-2 col-xs-9">
                            <button type="submit" class="btn btn-primary col-xs-12">添加商品</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
