<%@ page import="org.lanqiao.domain.Order" %>
<%@ page import="java.util.List" %><%--
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
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.css">
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
</head>
<body>
    <form action="/order.do?method=insert">
        订单编号:<input type="text" name="orderId"><br><br>
        宠物编号:<input type="text" name="petId"><br><br>
        图片:<input type="file" name="petPicture"/><br><br>
        姓名:<input type="text" name="petName"><br><br>
        价格:<input type="text" name="price"><br><br>
        发货状态:<input type="text" name="condition"><br><br>
        数量:<input type="text name=petNum"><br><br>
        <input type="submit" value="保存">
    </form>
</body>
</html>