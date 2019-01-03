<%@ page import="org.lanqiao.domain.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/20
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员列表</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.css">
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script  type="text/javascript">
        function del() {
            var msg = "您真的确定要删除吗？\n\n请确认！";
            if (confirm(msg)==true){
                return true;
            }else{
                return false;
            }
        }
        // function update() {
        //     $('#new').modal({
        //         show:true
        //     });
        // }
        $(function () {
            $(".update").click(function () {
                var userid=$(this).parent().parent().children('td:eq(0)').text();
                $.ajax({
                    url: "/user.do",
                    data:{"userid":userid,"methon":"getUser"},
                    success:function (data) {
                        var user=eval(data);
                        alert(user.userid)
                        $("#userid").val(user.userid)
                        $("#userid").attr("readonly","readonly")
                        $("#username").val(user.username)
                        $("#username").attr("readonly","readonly")
                        $("#password").val(user.password)
                        $("#email").val(user.email)
                        $("#tel").val(user.tel)
                        $("#address").val(user.address)
                        $("#regittime").val(user.regittime)
                        $("#regittime").attr("readonly","readonly")

                        $('#addModal').modal({
                            show:true
                        });

                    }
                })
            });
            $("#save").click(function () {
                $("#addForm").submit();
                // $("#save").load("/user.do?methon=userlist")

            })
        })
    </script>
</head>
<body style="background-color: #afd9ee">

    <table class="table table-hover" >
        <thead>
        <th>用户编号</th>
        <th>用户名</th>
        <th>密码</th>
        <th>邮箱</th>
        <th>电话</th>
        <th>收获地址</th>
        <th>注册时间</th>
        <th colspan="2">操作</th>
        </thead>
        <tbody>
        <%
            List<User> userList = (List<User>) request.getAttribute("userList");
            for (User user : userList){
        %>
        <tr>
            <td><%=user.getUserid()%></td>
            <td><%=user.getUsername()%></td>
            <td><%=user.getPassword()%></td>
            <%--<td>*******</td>--%>
            <td><%=user.getEmail()%></td>
            <td><%=user.getTel()%></td>
            <td><%=user.getAddress()%></td>
            <td><%=user.getRegittime()%></td>
            <%--<td><a onclick="del()" href="/delete.do?method=post&userid=<%=user.getUserid()%>" class="delete" >删除</a></td>--%>
            <td><a onclick="return del()" href="/delete.do?method=post&userid=<%=user.getUserid()%>"  class="delete"><span class=" glyphicon glyphicon-trash "  style="float:left; font-size: large" ><i class="icon-th" ></i></span></a></td>
            <%--<td><a >修改</a></td>--%>
            <td><a href="#" class="update"><span class=" glyphicon glyphicon-pencil "  style="float:left; font-size: large" ><i class="icon-th" ></i></span></a></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>


    <center>
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </center>
    <div class="modal fade" tabindex="-1" id="addModal" role="dialog" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">修改</h4>
                </div>
                <div class="modal-body">
                    <form  role="form" id="addForm" action="/updateUser.do" method="post">
                        <input type="hidden" id="updatecurrentPageNum" >
                        <div class="form-group" style="display: none">
                            <label for="userid" class="control-label">用户编号:</label>
                            <input type="text" class="form-control" id="userid" name="userid">
                        </div>
                        <div class="form-group">
                            <label for="username" class="control-label">用户名:</label>
                            <input type="text" class="form-control" id="username" name="username">
                        </div>
                        <div class="form-group">
                            <label for="password" class="control-label">密码:</label>
                            <input type="text" class="form-control" id="password" name="password">
                        </div>
                        <div class="form-group">
                            <label for="email" class="control-label">邮箱:</label>
                            <input type="text" class="form-control" id="email" name="email">
                        </div>
                        <div class="form-group">
                            <label for="tel" class="control-label">电话:</label>
                            <input type="text" class="form-control" id="tel" name="tel">
                        </div>
                        <div class="form-group">
                            <label for="address" class="control-label">收货地址:</label>
                            <input type="text" class="form-control" id="address" name="address">
                        </div>
                        <div class="form-group">
                            <label for="address" class="control-label">注册时间:</label>
                            <input type="text" class="form-control" id="regittime" name="regittime">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" id="save" class="btn btn-primary">提交</button>
                </div>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

</body>
</html>
