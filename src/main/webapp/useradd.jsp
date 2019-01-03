<%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/20
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.css">
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script>
        function check(form) {
            if (form.username.value == "") {
                alert("用户名不能为空!");
                form.username.focus();
                return false;
            }

            if(form.email.value==""){
                alert("邮箱不能为空!");
                form.email.focus();
                return false;

            }
            if(form.tel.value==""){
                alert("电话不能为空!");
                form.tel.focus();
                return false;
            }if(form.address.value==""){
                alert("收货地址不能为空!");
                form.address.focus();
                return false;
            }
            if(form.regittime.value==""){
                alert("添加时间不能为空!");
                form.regittime.focus();
                return false;
            }
            if(confirm("确认提交吗")){
                alert("提交成功");
            }
            else {
                return false}




        }
    </script>
</head>
<body style="background-color: #afd9ee">
<form class="form-horizontal"  action="/addmember.do" method="post" name="login">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-10">
            <input type="usename"  name="username" style="width: 25%" class="form-control" id="inputEmail3" placeholder="用户名">
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">密码</label>
        <div class="col-sm-10">
            <input type="password"  name="password" style="width: 25%" class="form-control" id="inputEmail3" placeholder="密码">
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
        <div class="col-sm-10">
            <input type="email" name="email" style="width: 25%" class="form-control" id="inputEmail3" placeholder="邮箱">
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">电话</label>
        <div class="col-sm-10">
            <input type="tel" name="tel" style="width: 25%" class="form-control" id="inputEmail3" placeholder="电话">
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">收货地址</label>
        <div class="col-sm-10">
            <input type="text" name="address" style="width: 25%" class="form-control" id="inputEmail3" placeholder="收货地址">
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">添加时间</label>
        <div class="col-sm-10">
            <input type="text" name="regittime" style="width: 25%" class="form-control" id="inputEmail3" placeholder="xxxx-mm-hh">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
                <label>
                    <input type="checkbox"> Remember me
                </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default" onclick="return check(login)">提交</button>
        </div>
    </div>
</form>
</body>
</html>
