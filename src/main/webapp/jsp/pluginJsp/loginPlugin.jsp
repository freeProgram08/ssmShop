<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
