<%@ page import="java.util.List" %>
<%@ page import="org.lanqiao.domain.Order" %><%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/20
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#up").click(function () {
                alert("ARE YOU SURE ?")
            })

            $("#de").click(function () {
                alert("确定删除？？ ?")
            })
        })
    </script>
</head>
<body style="background-color: #afd9ee">
<h3 style="background-color: beige">
    <span style="color: #007DDB">用户名：<%=request.getAttribute("name")%></span>
    <span style="color: #007DDB;margin-left: 10%">用户ID：<%=request.getAttribute("id")%></span>
    <span style="color: red;margin-left: 20%">总支付<%=request.getAttribute("total")%>元</span>
    <span style="color: green;margin-left: 20%">订单状态：<%=request.getAttribute("condition")%></span>
</h3>


    <table class="table table-hover" >
        <thead>
        <th>编号</th>
        <th>名称</th>
        <th>图片</th>
        <th>单价</th>
        <th>数量</th>
        <th>总价</th>


        </thead>
        <tbody>
        <%
            List<Order> orderList = (List<Order>) request.getAttribute("orderList");
            for (Order order :orderList){
                %>
        <tr>
            <%--<td><%=order.getPetId()%></td>--%>
            <%--<td><%=order.getPetName()%></td>--%>
            <%--<td><img style="height: 50px;width: 50px" src="<%=order.getPetPicture()%>"></td>--%>
            <%--<td><%=order.getPrice()%></td>--%>
            <%--<td><%=order.getPetNum()%></td>--%>
            <%--<td><%=order.getPetNum()*order.getPrice()%></td>--%>
            <td><%=order.getOrderid()%></td>
            <td><%=order.getPetName()%></td>
            <td><img style="height: 50px;width: 50px" src="<%=order.getImg()%>"></td>
            <td><%=order.getPrice()%></td>
            <td><%=order.getNum()%></td>
            <td><%=order.getTotal()%></td>

        </tr>


        <%
            }
        %>

        </tbody>

    </table>

<div class="dropdown" style="float: right ">
    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
        -操作-
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
        <li><a id="up" href="/deal.do?method=update&id=<%=request.getAttribute("id")%>&condition=<%=request.getAttribute("condition")%>">发货</a></li>
        <li><a id="de" href="/deal.do?method=delete&id=<%=request.getAttribute("id")%>">删除</a></li>
    </ul>
</div>

</body>
</html>
