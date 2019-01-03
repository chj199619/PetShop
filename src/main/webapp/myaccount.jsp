<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/5
  Time: 10:13
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
    <title>Pet Shop</title>


</head>
<body>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script  type="text/javascript">
    function check(form) {
        if (form.username.value == "") {
            alert("请输入用户名!");
            form.name.focus();
            return false;
        }
        if (form.password.value == "") {
            alert("请输入密码!");
            form.password.focus();
            return false;
        }
    }
    function  change() {
        //每次告诉浏览器发送一个新的请求 不使用浏览器的缓存
        $("#123").attr("src","/imageCode.do?"+ Math.random());
    }

</script>

<div style="width: auto;height: 50px;background-color: whitesmoke">
   <h1 style="color: #ff6e40;margin-left: 100px" > pet shop</h1>
</div>

<div style="background: url('/images/11.jpg');background-size:100% 100%;background-repeat: no-repeat; height: 700px;width: 100%;" >
    <div style="float: left;background-color:black;left:600px;top: 200px;border:0px;width:400px;height:320px;filter:alpha(opacity=50); opacity:0.5; -moz-opacity:0.5;margin-left: 960px;margin-top: 200px"  >
        <form id="de"  action="<%=request.getContextPath() %>/login.do" method="post" name="login">

            <div  style="width: auto;height: 30px;margin-top: 30px;margin-left: 20px">
                <label  ><strong style="font-size: 18px;color: #009688">用户名:</strong></label>
                <input type="text" class="contact_input" name="username" placeholder="请输入用户名" style="width: 200px;height: 30px"/>
            </div>
            <div  style="width: auto;height: 30px;margin-top: 20px;margin-left: 20px">
                <label class="contact" style="font-size: 15px;color: red" ><strong style="font-size: 18px;color:  #009688">密&nbsp;&nbsp;&nbsp;&nbsp;码:</strong></label>
                <input type="password" class="contact_input" name="password" placeholder="请输入密码" style="width: 200px;height: 30px"/>
            </div>
            <div  style="width: auto;height: 30px;margin-top: 20px;margin-left: 20px">
                <label  >
                    <strong style="font-size: 18px;color:  #009688">验证码:</strong>
                </label>
                <input type="text" class="contact_input" name="rcode" placeholder="请输入验证码" style="width: 200px;height: 30px"/><br>
                <div style="margin-left: 80px;margin-top: 5px"><img id="123" src="/imageCode.do">
                <a href="javascript:change()" ><font size="1"  >看不清换一张</font></a></div>
                <div style="margin-left: 80px">

                </div>

            </div><br>
            <%Object msg = request.getAttribute("msg");
                System.out.println(msg);
                if(msg != null || "".equals(msg)){
            %>
            <div   style="width: auto;height: 30px;margin-left: 85px;margin-top: 20px"> <span style="color: red"><%=msg%></span></div>
            <%
                }
            %>
            <div   style="width: auto;margin-left: 80px;margin-top: 25px">
                <input type="submit" style="margin-left: 80px;width: 80px;height: 30px ;color: black"  value="登陆" onclick=" return check(login)" />
            </div>

        </form>
    </div>
</div>

<div style="background: url('/images/foot.png') ;width: 100%;height: 500px;">

</div >


</body>
</html>