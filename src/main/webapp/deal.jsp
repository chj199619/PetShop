<%@ page import="org.lanqiao.domain.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="org.lanqiao.domain.Deal" %><%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/20
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">--%>
    <%--<link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.css">--%>
    <%--<script type="text/javascript" src="js/jquery-1.12.4.js"></script>--%>
    <%--<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>--%>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.css">
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<%--<script type="text/javascript">
    $(function () {
        $(".upd").click(function () {
            var id =$(this).parent().parent().parent().parent().parent().children().eq(0).text();
            var name  =$(this).parent().parent().parent().parent().parent().children().eq(1).text();
            var total  =$(this).parent().parent().parent().parent().parent().children().eq(2).text();
            var time  =$(this).parent().parent().parent().parent().parent().children().eq(3).text();
            var condition  =$(this).parent().parent().parent().parent().parent().children().eq(4).text();
            $.ajax({
                data: {"id": id, "name": name, "total": total, "time": time, "condition": condition},
                contentType: "application/json",
                dataType: "json",
                url: "/deal.do?method=update",
                success:function(data){
                    alert("确定修改？？")
                }
            })
        })

        $(".dpt").click(function () {
            var id =$(this).parent().parent().parent().parent().parent().children().eq(0).text();
            var name  =$(this).parent().parent().parent().parent().parent().children().eq(1).text();
            var total  =$(this).parent().parent().parent().parent().parent().children().eq(2).text();
            var time  =$(this).parent().parent().parent().parent().parent().children().eq(3).text();
            var condition  =$(this).parent().parent().parent().parent().parent().children().eq(4).text();
            $.ajax({
                data: {"id": id, "name": name, "total": total, "time": time, "condition": condition},
                contentType: "application/json",
                dataType: "json",
                url: "/deal.do?method=delete",
                success:function(data){

                }
            })
        })
    })
</script>--%>
</head>
<body style="background-color: #afd9ee">
<table  border="1px" cellspacing="0px" style="width:100%" class="table table-hover">
    <thead>
    <th>订单编号</th>
    <th>客户名称</th>
    <th>订单总价</th>
    <th>交易时间</th>
    <th>订单状态</th>
    <th colspan="2">订单操作</th>
    </thead>
    <tbody>
    <%
        List<Deal> dealList = (List<Deal>) request.getAttribute("dealList");
        for(Deal deal : dealList){
    %>
    <tr>
        <td><%=deal.getId()%></td>
        <td><%=deal.getName()%></td>
        <td><%=deal.getTotal()%></td>
        <td><%=deal.getTime()%></td>
        <td><%=deal.getConditions()%></td>

        <td>
            <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                --更改订单状态--
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a  href="/deal.do?method=update&id=<%=deal.getId()%>&condition=<%=deal.getConditions()%>">发货</a></li>
                <li><a  href="/deal.do?method=delete&id=<%=deal.getId()%>">删除</a></li>
            </ul>
        </div>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>


</body>
</html>