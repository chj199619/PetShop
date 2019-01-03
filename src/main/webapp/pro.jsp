<%@ page import="org.lanqiao.domain.Pet" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/19
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="root61 jd_retina csstransitions cssanimations o2_gecko o2_firefox o2_63 o2_wide o2_retina pet">
<head>
    <meta charset="gbk">

    <meta name="renderer" content="webkit">
    <title>宝贝宠物</title>

    <link rel="icon" href="imags/ooopic_1545232430.ico" mce_href="imags/ooopic_1545232430.ico" type="image/x-icon">
    <script type="text/javascript">window._PFM_TIMING=[[104,new Date()]];</script>
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/??jdf/1.0.0/unit/ui-base/5.0.0/ui-base.css,jdf/1.0.0/unit/shortcut/5.0.0/shortcut.css,jdf/1.0.0/unit/global-header/5.0.0/global-header.css,jdf/1.0.0/unit/myjd/5.0.0/myjd.css,jdf/1.0.0/unit/nav/5.0.0/nav.css,jdf/1.0.0/unit/shoppingcart/5.0.0/shoppingcart.css">
    <script type="text/javascript">window.pageConfig = { compatible: true,o2AppName:'pet' }; </script>
    <link type="text/css" rel="stylesheet" href="//static.360buyimg.com/mtd/pc/cms/css/common.min.css">
    <script type="text/javascript" src="//misc.360buyimg.com/jdf/??1.0.0/unit/base/5.0.0/base.js,lib/jquery-1.6.4.js"></script>
    <script type="text/javascript" src="//static.360buyimg.com/mtd/pc/cms/js/o2_ua.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//static.360buyimg.com/mtd/pc/pet/??/home/pet_common.min.css,/home/pet_nav.min.css,/home/pet_slider.min.css,/home/pet_hot.min.css,/home/pet_brand.min.css,/home/pet_floor.min.css,/home/pet_guess.min.css,/home/pet_elevator.min.css,/home/index.min.css">
    <!-- inject css START -->
    <link type="text/css" rel="stylesheet" href="//static.360buyimg.com/mtd/pc/cms/css/common.min.css">
    <!-- inject css END -->
    <link rel="stylesheet" href="css/pintuer.css">
    <script type="text/javascript" src="js/pintuer.js"></script>
    <script>window._PFM_TIMING[1] = new Date();</script>
    <!--[if IE 6]><script src="//static.360buyimg.com/mtd/pc/fresh/1.0.0/index/js/DD_belatedPNG.js"></script><![endif]-->
    <!--[if IE 6]><script>DD_belatedPNG.fix(".mod_icon,.pet_nav_icons");</script><![endif]-->


    <style type="text/css">
        .o2_wide .grid_c1 {
            width: 1200px; }

        .o2_mini .grid_c1 {
            width: 1000px; }

    </style>

    <link charset="utf-8" rel="stylesheet" href="https://static.360buyimg.com/mtd/pc/xinren/2.0.0/mod_xinren_bottom/??mod_xinren_bottom.min.css">
    <style>.pet_brand_list img{background:none!important;}</style>
    <link charset="utf-8" rel="stylesheet" href="https://static.360buyimg.com/devfe/toolbar/1.0.0/??widget/common/common.css">

    <script type="text/javascript">
        //全局变量
        $(function () {
            $(".add").click(function () {
                var sName =$(this).parent().parent().children().eq(0).text();
                var sPrice  =$(this).parent().parent().children().eq(1).text();
                var sNum  =$(this).parent().parent().children().eq(2).text();
                var sTotal  =$(this).parent().parent().children().eq(3).text();

                // alert(sName)
                $.ajax({
                    data:{"sName":sName,"sPrice":sPrice,"sNum":sNum },
                    contentType :"application/json",
                    dataType:"json",
                    url:"/updateNum.do?method=add",
                    // success(){
                    //
                    // }
                })
            })
        })
        $(function () {
            $(".de").click(function () {
                var sName =$(this).parent().parent().children().eq(0).text();
                var sPrice  =$(this).parent().parent().children().eq(1).text();
                var sNum  =$(this).parent().parent().children().eq(2).text();
                alert(sName)
                $.ajax({
                    data:{"sName":sName,"sPrice":sPrice,"sNum":sNum },
                    contentType :"application/json",
                    dataType:"json",
                    url:"/updateNum.do?method=de",
                })

            })})

    </script>
    <script type="text/javascript">
        function appendInput(id){
            if($("#"+id+"").length == 0){
                var obj = document.createElement("input");
                obj.setAttribute("type", "hidden");
                obj.setAttribute("id", id);
                document.body.appendChild(obj);
            }
        }
    </script>



<body data-lazy-img-install="1">


<div id="J_event" style="position: relative; z-index: 30; background-color:#8e1b1e;">
    <div class="grid_c1" style="position: relative;">
        <a id="J_event_lk" class="" href="#" target="_blank" clstag="h|keycount|head|adtop_01" style="display: block; width: 100%; height: 80px; background: url(//img20.360buyimg.com/da/jfs/t1/8210/9/9420/55988/5c18b232E5541850b/2866bf4351308652.jpg) 50% 0px no-repeat;" fclog="15629.112059.491316.1.571_1816_8701"></a>
        <i id="J_event_close" class="iconfont" style="cursor:pointer; position: absolute; right: 5px; top: 5px; font-weight: bold; font-size: 14px; color: #FFF; background: rgb(45,45,45); opacity: .3; filter: alpha(opacity=30); width: 20px; text-align: center; line-height: 20px;"></i>
    </div>
</div>

<!--shortcut start-->
<div id="shortcut-2014">
    <div class="w">


        <ul class="fr">
            <%
                String username = null;
                if (session.getAttribute("username")==null){
                    username="你好，请登录！";
                }else {
                    username= (String) session.getAttribute("username");
                }

            %>
            <li class="fore1" id="ttbar-login"><a  class="link-login"><%=username%></a>&nbsp;&nbsp;
                <a href="#" class="link-regist style-red">免费注册</a></li>
            <li class="spacer"></li>
            <li class="fore2">
                <div class="dt">
                    <a target="_blank" href="//order.jd.com/center/list.action">我的订单</a>
                </div>
            </li>



            <li class="spacer"></li>


            <li class="spacer"></li>


        </ul>
        <span class="clr"></span>
    </div>
</div>
<div id="o-header-2013"></div>
<!--shortcut end-->
<div class="w has_qrcode">
    <div id="logo-2014"style="height: 100px; margin-bottom: 0px;margin-top: 0px"> <a href="#" ><img src="//img13.360buyimg.com/cms/jfs/t2659/42/3991104728/33211/94bc4f3f/57a43efbNb7c5849a.jpg" height="100px" width="200px"></a>

    </div>
</div>
<div id="search-2014"> <ul id="shelper" class="hide" style="display: none;"></ul>
    <div class="form">
        <input type="text"  class="text" style="height:35px;">
        <button  class="button cw-icon"><i></i>搜索</button> </div>
</div>
<div id="settleup-2014" class="dorpdown">
    <div class="cw-icon" style="width: 136px; padding-left: 8px">
        <i class="ci-left"></i>
        <i class="ci-right">&gt;</i>
        <i class="ci-count" id="shopping-amount"><%=request.getAttribute("carNum")%></i>
        <a target="_blank" href="/sncp.jsp">我的购物车</a>

    </div>
    <%--<div class="dorpdown-layer">--%>
    <%--<div class="spacer"></div>--%>
    <%--<div id="settleup-content">--%>
    <%--<span class="loading"></span>--%>
    <%--</div>--%>
    <%--</div>--%>
</div>
<div class="mod_container">
    <center>
        <%
            Object catpetname = request.getAttribute("petname");;
            Object catpetprice = request.getAttribute("petprice");
            Object catpetimg = request.getAttribute("image");
            Object catpetnum = request.getAttribute("num");
            Object totalMoney = request.getAttribute("totalPayServlet");
        %>
        <div style="width: 1190px;height:350px;">
            <div class="fl"  style="width:450px; height:300px;background-color:#f6f6f6;margin: 25px;">
                <img src="<%=catpetimg%>" alt=""   style="height:100%;">
            </div>

            <div class="fr" style="background-color:gray">
                <div style="height: 115px;background-color: red;margin-top: 25px;">
                    <div style="width: 690px;height: 100%; background-color:#808080">
                        <h1>
                            名称：<%=catpetname%><br>
                            价格：<%=totalMoney%>
                        </h1>
                    </div>
                </div>
                <div style="height: 115px;background-color:yellow;">
                    <div  style="width: 690px;height: 100%; background-color: #808080">
                        <a href="/updateNum.do?method=de&sName=<%=catpetprice%>&sNum=<%=catpetnum%>&petname=<%=catpetname%>" class="button" style="background-color:skyblue">-</a>
                        购买数量：<input style="" type="text" value="<%=catpetnum%>">
                        <a href="/updateNum.do?method=add&sName=<%=catpetprice%>&sNum=<%=catpetnum%>&petname=<%=catpetname%>" class="button" style="background-color:skyblue">+</a>
                    </div>
                </div>
                <div style="height: 120px;">
                    <div>
                        <button class="button bg-main radius-none">
                            <a href="/cat.do?method=getName&cName=<%=catpetname%>&cPrice=<%=catpetprice%>&cimg=<%=catpetimg%>">加入购物车</a></button>
                        <button class="button bg-sub radius-rounded">
                            <a href="">立即购买</a></button>
                    </div>
                </div>
            </div>
        </div>
    </center>
</div>
<center>
    <div style="background: url('/images/foot.png') ;width: 100%;height: 500px;">

    </div >
</center>
</body>
</html>