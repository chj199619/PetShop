<%@ page import="org.lanqiao.domain.Manager" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/25
  Time: 0:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员列表</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.css">
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
</head>
<body style="background-color: #afd9ee">
<table class="table table-hover" >
    <thead>
    <th>管理员编号</th>
    <th>管理员用户名</th>
    <th>管理员密码</th>
    </thead>
    <tbody>
    <%
        List<Manager> managerList =(List<Manager>) request.getAttribute("managerList");
        for (Manager manager : managerList){
    %>
    <tr>
        <td><%=manager.getMid()%></td>
        <td><%=manager.getManagername()%></td>
        <%--<td><%=manager.getManagerpassword()%></td>--%>
        <td>*******</td>

    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
