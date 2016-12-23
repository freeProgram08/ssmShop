<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改商品</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-offset-3 col-xs-offset-3 col-xs-6">
        
            <form action="/editGoods"  class="form-horizontal"
                  method="post">
                <div class="form-group">
                    <label class="col-xs-offset-3 col-xs-6">编号</label>
                    <%--  readonly只对输入框有用 禁止修改输入框值--%>
                    <div class="col-xs-offset-3 col-xs-6">
                    <input  class="form-control" name="id" value="${requestScope.goods.id}" readonly>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-offset-3 col-xs-6">商品名</label>
                    <div class="col-xs-offset-3 col-xs-6">
                    <input   class="form-control" name="name" value="${requestScope.goods.name}">
                </div>
                    </div>

                <div class="form-group">
                    <label class="col-xs-offset-3 col-xs-6">商品类型</label>
                    <div class="col-xs-offset-3 col-xs-6">
                    <input   class="form-control" name="type" value="${requestScope.goods.type}">
                    </div>
                    </div>

                <div class="form-group">
                    <label class="col-xs-offset-3 col-xs-6">价格</label>
                    <div class="col-xs-offset-3 col-xs-6">
                    <input  class="form-control"  name="price" value="${requestScope.goods.price}">
                    </div>
                    </div>

                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-6">
                    <input type="submit" value="确认修改" class="btn btn-primary">
                        </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
