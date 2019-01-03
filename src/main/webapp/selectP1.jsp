<%@ page import="org.lanqiao.domain.User" %>
<%@ page import="java.util.List" %>
<%@ page import="org.lanqiao.domain.Deal" %><%--
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
<form action="/deal.do?method=one" method="post" >
    <h4>查询条件</h4><br>
    <div class="form-group">
        <label  class="control-label">姓名</label>
        <div>
            <div class="input-group  col-xs-11" style="float:left;width: 20%">
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
    <th>订单编号</th>
    <th>客户名</th>
    <th>总价</th>
    <th>购买时间</th>
    <th>状态</th>
    <th>订单详情</th>

    </thead>
    <tbody>
    <%
        List<Deal> userList = (List<Deal>) request.getAttribute("userList");
        for (Deal user : userList){
    %>
    <tr>
        <td><%=user.getId()%></td>
        <td><%=user.getName()%></td>
        <td><%=user.getTotal()%></td>
        <td><%=user.getTime()%></td>
        <td><%=user.getConditions()%></td>
        <td><a href="/dealone.do?method=select&name=<%=user.getName()%>&total=<%=user.getTotal()%>&id=<%=user.getId()%>&condition=<%=user.getConditions()%>">查看</a></td>

    </tr>
    <%
        }
    %>
    </tbody>

</table>

</body>
</html>
