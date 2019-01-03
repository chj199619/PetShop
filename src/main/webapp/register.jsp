<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/5
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>用户注册</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<script>


    function checkUserName(obj) {
        var username = obj;
        // username.length<3 || username.length>18
        if( username.trim().length == 0) {
            var checkUserNameResult = document.getElementById("checkUserNameResult");
            checkUserNameResult.innerHTML = "请输入正确的用户名,用户名长度为3-18位";
            // username.focus()
        }else if (username.trim().length !=0){
            var checkUserNameResult = document.getElementById("checkUserNameResult");
            checkUserNameResult.innerHTML = "";
        }
        else {
            checkUserNameResult.innerHTML = "";
        }
    }
    function checkPassword(obj) {
        var password = obj;
        var checkPasswordResult = document.getElementById("checkPasswordResult");
        if (password.trim().length == 0) {
            checkPasswordResult.innerHTML = "密码不能为空";
            // obj.focus();
        }else if (password.trim().length < 6){
            checkPasswordResult.innerHTML = "密码太过简单，请重新输入！";
            // obj.focus();
        } else {
            checkPasswordResult.innerHTML = "";
        }
    }
    function checkemail(obj) {
        var email=obj;
        //对电子邮件的验证
        var myreg = /[_a-zA-Z\d\-\.]+@[_a-zA-Z\d\-]+(\.[_a-zA-Z\d\-]+)+$/;
        if(!myreg.test(obj)){
            emailResult.innerHTML = "请输入有效的E_mail！";
            // obj.focus();
            return false;
        }else{
            emailResult.innerHTML = "";
            return true;
        }
    }
    function checktel(obj) {
        var tel = obj;
        var myreg1 = /^0?1[3|4|5|8][0-9]\d{8}$/;
        if (!myreg1.test(obj)) {
            telResult.innerHTML = "请输入有效的电话号码！";
            // obj.focus();
            return false;
        }else{
            telResult.innerHTML = "";
            return true;
        }
    }
    function check(form){
        if (form.username.length=='' || form.password.value=='' || form.email.value==''|| form.tel.value==''|| form.address.value==''){
            alert("请输入您的信息！！！");
            return false;
        }
        alert("注册成功")
        return true;

    }

</script>
<div style="width: auto;height: 50px;background-color: whitesmoke">
    <h1 style="color: #ff6e40;margin-left: 100px" > pet shop</h1>
</div>
<div  style="background: url('/images/11.jpg');background-size:100% 100%;background-repeat: no-repeat; height: 700px;width: 100%">
    <div  style="float: left; background-color:white;margin-left: 960px;margin-top:150px;border:0px;width:400px;height:370px;filter:alpha(opacity=50); opacity:0.5; -moz-opacity:0.5"  >
        <form action="/register.do" method="post" id="form1" name="login" onsubmit="return check(this)">
            <div  style="margin-top: 15px;margin-left: 50px">
                <label  style="color: black"><strong style="color: black;font-size: 14px">用&nbsp;&nbsp;户&nbsp;&nbsp名:</strong></label>
                <input type="text" name="username"  onblur="checkUserName(this.value);" placeholder="请输入用户名" style="height: 25px"/><br>
                <span id="checkUserNameResult" style="color: red "></span>
            </div>

            <div style="margin-top: 15px;margin-left: 50px" >
                <label ><strong style="color: black;font-size: 14px">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</strong></label>
                <input type="password"  name="password"  onblur="checkPassword(this.value);" placeholder="请输入密码" style="height: 25px" /><br>
                <span id="checkPasswordResult" style="color: red "></span>
            </div>

            <div style="margin-top: 15px;margin-left: 50px">
                <label ><strong style="color: black;font-size: 14px">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:</strong></label>
                <input type="text"   name="email" onblur="checkemail(this.value);" placeholder="请输入邮箱" style="height: 25px"/><br>
                <span id="emailResult" style="color: red "></span>
            </div>
            <div style="margin-top: 15px;margin-left: 50px">
                <label ><strong style="color: black;font-size: 14px">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话:</strong></label>
                <input type="text"   name="tel" onblur="checktel(this.value);" placeholder="请输入电话" style="height: 25px"/><br>
                <span id="telResult" style="color: red "></span>
            </div>

            <div style="display: none">
                <label  style="color: black">注册时间:</label>
                <%SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String value = format.format(new Date());%>
                <input type="hidden"  name="regittime" value="<%=value%>" />
            </div>
            <div  style="margin-top: 20px;margin-left: 50px">
                <label ><strong style="color: black;font-size: 14px">联系地址 :</strong></label>
                <input type="text"  name="address" style="height: 25px" />
            </div>

            <div style="margin-top: 10px;margin-left: 100px">
                <div  style="color: black">
                    <input type="checkbox" name="terms" />
                    我同意 <a href="http://www.baidu.com">用户协议</a>
                </div>
            </div>
            <div >
                <input type="submit" style="color: black;margin-top: 10px;margin-left: 240px;width: 70px;height: 35px" value="注册" id="save" onclick="return check(login)" />
            </div>
        </form>
    </div>
</div>
<%
    Object message = request.getAttribute("message");
    if(message!=null && !"".equals(message)){
%>
<script type="text/javascript">
    alert("<%=message%>");
</script>
<%
    }
%>
<div style="background: url('/images/foot.png') ;width: 100%;height: 500px;">

</div >
</body>
</html>