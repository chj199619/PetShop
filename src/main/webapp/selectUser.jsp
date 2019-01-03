<%@ page import="org.lanqiao.domain.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/21
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.css">
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script type="text/javascript">


    </script>
</head>
<body style="background-color: #afd9ee">
<form action="/selectuser.do"method="post" >
    <h4>查询条件</h4><br>
    <div class="form-group">
        <label  class="control-label">姓名</label>
        <div>
            <div class="input-group  col-xs-11" style="float:left;width: 20%">
                <%--<button class="layui-btn" onclick="x_admin_show('添加用户','./member-add.html',600,400)"><i class="layui-icon"></i>添加</button>--%>
                <input type="text"  class="form-control " name="username" placeholder="请输入查询姓名">
            </div>
            <div  class="col-xs-1" >
                <button class="btn-success layui-btn"  type="submit" value="搜索" >   搜  索<span class=" glyphicon glyphicon-search "  style="float:left; font-size: 28px;" ><i class="icon-th" ></i></span></button>
            </div>
        </div>
    </div><br>
</form>

<table class="table table-hover" >
    <thead>
    <th>用户编号</th>
    <th>用户名</th>
    <th>邮箱</th>
    <th>电话</th>
    <th>地址</th>
    <th>注册时间</th>
    <%--<th colspan="2">操作</th>--%>
    </thead>
    <tbody>
    <%
        List<User> userList =(List<User>) request.getAttribute("userList");
        for (User user : userList){
    %>
    <tr>
        <td><%=user.getUserid()%></td>
        <td><%=user.getUsername()%></td>
        <%--<td><%=user.getPassword()%>></td>--%>
        <td><%=user.getEmail()%></td>
        <td><%=user.getTel()%></td>
        <td><%=user.getAddress()%></td>
        <td><%=user.getRegittime()%></td>

    </tr>
    <%
        }
    %>
    </tbody>

</table>

</body>
</html>
