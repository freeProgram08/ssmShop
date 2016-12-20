<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <h1 class="text-center">用户注册</h1>
    </div>
    <div class="row">
        <div class="text-center text-danger" id="error">${requestScope.error}</div>
        <div class="col-xs-offset-4 col-xs-4">
            <%--表单样式：form-inline 所有的form_group排在一行--%>
            <form class="form-horizontal" action="/register" method="post">
                <div class="form-group">
                    <label class="col-xs-3">用户名</label>
                    <div class="col-xs-9">
                        <input class="form-control" name="userName" placeholder="用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-3">密码</label>
                    <div class="col-xs-9">
                        <input class="form-control" name="password" placeholder="密码">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-3">年龄</label>
                    <div class="col-xs-9">
                        <input class="form-control" name="age" placeholder="年龄">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-3">性别</label>
                    <div class="col-xs-9">
                            <input type="radio" name="gender" value="true" checked>男
                            <input type="radio" name="gender" value="false">女
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-3">爱好</label>
                    <div class="col-xs-9 ">
                        <input type="checkbox" name="hobbies" value="lookBook">看书
                        <input type="checkbox" name="hobbies" value="watchTV">看电视
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-9">
                        <input type="submit" class="btn btn-primary  col-xs-12" value="注册">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
