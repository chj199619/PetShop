<%--
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
    <script type="text/javascript">

    </script>

</head>
<body style="background-color: #92B8B1">
<div>
    <%--<div><a href="jd.jsp" target="right">会员管理</a></div>--%>
    <div>
        会员管理
        <ul>
            <li><a href="/user.do?methon=userlist" target="right" >会员列表</a></li>
            <li><a href="/useradd.jsp" target="right">会员添加</a></li>
            <li><a href="/selectuser.do" target="right">会员查找</a></li>
        </ul>
    </div>
        <div>订单管理
            <ul>
                <li><a href="/deal.do?method=getList" target="right" >订单列表</a></li>
                <li><a href="/deal.do?method=one" target="right">订单查询</a></li>
                <%--<li><a href="/orderInsert.jsp" target="right">会员添加</a></li>--%>

            </ul>
        </div>
    <div>管理员管理
        <ul>
            <li><a href="/managerlist.do" target="right" >管理员列表</a></li>
        </ul>
    </div>

</div>
</body>
</html>
