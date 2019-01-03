<%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/19
  Time: 22:06
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
    <script type="text/javascript">
        $(function () {
            $("#deng").click(function () {
               <%--alert("${"#deng"}.text()")--%>
                $.ajax({
                    url: "/user.do",
                    data: {"userid": userid, "methon": "getUser"},
                    success: function (data) {
                        var user = eval(data);
                        alert(user.userid)
                    }
                })
            });
            $(".add").click(function () {
                var cimg =$(this).parent().parent().children().eq(1).text();
                var cName  =$(this).parent().parent().children().eq(2).text();
                var cPrice  =$(this).parent().parent().children().eq(3).text();
                $.ajax({
                    data:{"cimg":cimg,"cName":cName,"cPrice":cPrice},
                    contentType :"application/json",
                    dataType:"json",
                    url:"/cat.do?method=getName",
                })
            });
        } )
    </script>

    <link charset="utf-8" rel="stylesheet" href="https://static.360buyimg.com/mtd/pc/xinren/2.0.0/mod_xinren_bottom/??mod_xinren_bottom.min.css">
    <style>.pet_brand_list img{background:none!important;}</style>
    <link charset="utf-8" rel="stylesheet" href="https://static.360buyimg.com/devfe/toolbar/1.0.0/??widget/common/common.css">


<body data-lazy-img-install="1">
<jsp:include page="/pet.do?method=init&pettype=cat&pettype1=dog&pettype2=other"></jsp:include>
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
            <li class="fore1" id="ttbar-login"><a id="deng" href="/myaccount.jsp" class="link-login"><%=username%>&nbsp;
                <a href="/register.jsp;" class="link-regist style-red">免费注册</a></li>
            <li class="spacer"></li>
            <li class="fore2">
                <div class="dt">
                    <a target="_blank" >我的订单</a>
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


<!-- S 主体内容 -->
<div class="mod_container">


    <center>
        <div class="collapse-toggle">

            <div class="panel-head">
                <h2><ul class="list-group">宠物猫</ul></h2>
            </div>
            <div class="panel-body">
                <div style="width: 1280px; height: 00px; margin-bottom: 10px">
                </div>

                <div style="width: 1190px; height: 600px; margin-bottom: 10px">
                    <div class="fl" style="width: 25%;height:490px; margin-right: 1%">
                        <a href="#"><img src="imags/cat.png" /></a>
                    </div>
                    <div class="fr" style="width:70%; margin-right: 1%">

                        <div class="fl">

                            <%
                                int j =8;
                                Object[] catpetprice = new Object[j];
                                Object[] catpetname = new Object[j];
                                Object[] catpetimg = new Object[j];

                                for(int i = 0;i<j;i++){
                                    catpetprice[i] = request.getAttribute("petprice"+i);
                                    catpetname[i] = request.getAttribute("petname"+i);
                                    catpetimg[i] = request.getAttribute("image"+i);
                                    Object petname0 = catpetname[i];
                                    Object petprice0 = catpetprice[i];
                                    Object petimg0 = catpetimg[i];
                            %>
                            <li class="pet_mod_goods_item">
                                <div class="pet_mod_goods_img">
                                    <a href="pet.do?method=cat&petname=<%=petname0%>" target="_blank"  clstag="channel|keycount|1052|FLPRDIMG5_1_1">
                                        <img src="<%=petimg0%>" data-lazy-img="done">
                                    </a>
                                </div>
                                <div class="pet_mod_goods_info">
                                    <a href="pet.do?method=cat&petname=<%=petname0%>" target="_blank"  class="pet_mod_goods_title">
                                        <%=petname0%>
                                    </a>
                                    <p class="pet_mod_goods_price">
                                        <em data-price-id="16103792811">¥<%=petprice0%></em>
                                    </p>
                                </div>
                                <div class="pet_mod_goods_split"></div>
                                <a  href="/cat.do?method=getName&cName=<%=petname0%>&cPrice=<%=petprice0%>&cimg=<%=petimg0%>" class="button">加入购物车</a>
                            </li>

                            <%--<div class="fl" style="width:42%;margin-right: 1%">--%>
                            <%--<a href="pet.do?method=cat&petname=<%=petname0%>"><img src="imags/<%=petname0%>.jpg" /></a>--%>
                            <%--<li><%=petname0%><%=petprice0%><%=petnum0%><a href="/car.do?method=add&petname=<%=petname0%>" >加入购物车</a></li>--%>
                            <%--</div>--%>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="collapse-toggle">

            <div class="panel-head">
                <h2><ul class="list-group">宠物狗</ul> </h2>
            </div>
            <div class="panel-body">
                <div style="width: 1280px; height: 00px; margin-bottom: 10px">
                </div>

                <div style="width: 1190px; height: 600px; margin-bottom: 10px">
                    <div class="fl" style="width: 25%;height:490px; margin-right: 1%">
                        <a href="#"><img src="imags/dog.png" /></a>
                    </div>
                    <div class="fr" style="width:70%; margin-right: 1%">

                        <div class="fl">

                            <%
                                j =8;
                                Object[] dogpetprice = new Object[j];
                                Object[] dogpetname = new Object[j];
                                Object[] dogpetimg = new Object[j];

                                for(int i = 0;i<j;i++){
                                    dogpetprice[i] = request.getAttribute("dogpetprice"+i);
                                    dogpetname[i] = request.getAttribute("dogpetname"+i);
                                    dogpetimg[i] = request.getAttribute("dogimage"+i);
                                    Object petname1 = dogpetname[i];
                                    Object petprice = dogpetprice[i];
                                    Object petimg1 = dogpetimg[i];
                            %>
                            <li class="pet_mod_goods_item">
                                <div class="pet_mod_goods_img">
                                    <a href="pet.do?method=cat&petname=<%=petname1%>" target="_blank"  clstag="channel|keycount|1052|FLPRDIMG5_1_1">
                                        <img src="<%=petimg1%>" data-lazy-img="done">
                                    </a>
                                </div>
                                <div class="pet_mod_goods_info">
                                    <a href="pet.do?method=cat&petname=<%=petname1%>" target="_blank"  class="pet_mod_goods_title">
                                        <%=petname1%>
                                    </a>
                                    <p class="pet_mod_goods_price">
                                        <em data-price-id="16103792811">¥<%=petprice%></em>
                                    </p>
                                </div>
                                <div class="pet_mod_goods_split"></div>
                                <a  href="/cat.do?method=getName&cName=<%=petname1%>&cPrice=<%=petprice%>&cimg=<%=petimg1%>" class="button">加入购物车</a>
                            </li>

                            <%--<div class="fl" style="width:42%;margin-right: 1%">--%>
                            <%--<a href="pet.do?method=cat&petname=<%=petname0%>"><img src="imags/<%=petname0%>.jpg" /></a>--%>
                            <%--<li><%=petname0%><%=petprice0%><%=petnum0%><a href="/car.do?method=add&petname=<%=petname0%>" >加入购物车</a></li>--%>
                            <%--</div>--%>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </center>
</div>
<center>
    <div style="background: url('/images/foot.png') ;width: 81%;height: 500px;margin-right: 130px;"></div >
</center>
</body>
<script src="//payrisk.jd.com/js/td.js"></script><script src="https://gia.jd.com/y.html?v=0.012770284833236278&amp;o=channel.jd.com/pet.html"></script><div id="J-global-toolbar">            <div class="jdm-toolbar-wrap J-wrap">                <div class="jdm-toolbar J-toolbar">                    <div class="jdm-toolbar-panels J-panel">                    <div data-name="ad" class="J-content jdm-toolbar-panel jdm-tbar-panel-ad">                        <h3 class="jdm-tbar-panel-header J-panel-header">                            <a>                            <i></i>                            <em class="title"></em>                            </a>                            <span class="close-panel J-close"></span>                        </h3>                        <div class="jdm-tbar-panel-main">                            <div class="jdm-tbar-panel-content J-panel-content">                            </div>                        </div>                    </div>                         <div data-name="jdvip" class="J-content jdm-toolbar-panel jdm-tbar-panel-jdvip">                            <h3 class="jdm-tbar-panel-header J-panel-header">                                <span class="title" clstag="h|keycount|cebianlan_h_jdvip|title">                                <i></i>                                <em class="title">京东会员</em>                                </span>                                <span class="close-panel J-close"></span>                            </h3>                            <div class="jdm-tbar-panel-main">                                <div class="jdm-tbar-panel-content J-panel-content" style="overflow:hidden;">                                <div class="jdm-tbar-tipbox2">                                    <div class="tip-inner">                                        <i class="i-loading"></i>                                    </div>                                </div>                                </div>                            </div>                            <div class="jdm-tbar-panel-footer J-panel-footer"></div>                        </div>                          <div data-name="cart" class="J-content jdm-toolbar-panel jdm-tbar-panel-cart">                            <h3 class="jdm-tbar-panel-header J-panel-header">                                <a href="//cart.jd.com/cart.action?r=0.40844963052938676" target="_blank" class="title" clstag="h|keycount|cebianlan_h_cart|title">                                <i></i>                                <em class="title">购物车</em>                                </a>                                <span class="close-panel J-close"></span>                            </h3>                            <div class="jdm-tbar-panel-main">                                <div class="jdm-tbar-panel-content J-panel-content">                                <div class="jdm-tbar-tipbox2">                                    <div class="tip-inner">                                        <i class="i-loading"></i>                                    </div>                                </div>                                </div>                            </div>                            <div class="jdm-tbar-panel-footer J-panel-footer"></div>                        </div>                          <div data-name="follow" class="J-content jdm-toolbar-panel jdm-tbar-panel-follow">                            <h3 class="jdm-tbar-panel-header J-panel-header">                                <a href="//t.jd.com/home/follow" target="_blank" class="title" clstag="h|keycount|cebianlan_h_follow|title">                                <i></i>                                <em class="title">我的关注</em>                                </a>                                <span class="close-panel J-close"></span>                            </h3>                            <div class="jdm-tbar-panel-main">                                <div class="jdm-tbar-panel-content J-panel-content">                                <div class="jdm-tbar-tipbox2">                                    <div class="tip-inner">                                        <i class="i-loading"></i>                                    </div>                                </div>                                </div>                            </div>                            <div class="jdm-tbar-panel-footer J-panel-footer"></div>                        </div>                          <div data-name="history" class="J-content jdm-toolbar-panel jdm-tbar-panel-history">                            <h3 class="jdm-tbar-panel-header J-panel-header">                                <a href="//my.jd.com/history/list.html" target="_blank" class="title" clstag="h|keycount|cebianlan_h_history|title">                                <i></i>                                <em class="title">我的足迹</em>                                </a>                                <span class="close-panel J-close"></span>                            </h3>                            <div class="jdm-tbar-panel-main">                                <div class="jdm-tbar-panel-content J-panel-content">                                <div class="jdm-tbar-tipbox2">                                    <div class="tip-inner">                                        <i class="i-loading"></i>                                    </div>                                </div>                                </div>                            </div>                            <div class="jdm-tbar-panel-footer J-panel-footer"></div>                        </div>                            <div data-name="jimi" class="J-content jdm-toolbar-panel jdm-tbar-panel-jimi">                            <h3 class="jdm-tbar-panel-header J-panel-header">                                <span class="title" clstag="h|keycount|cebianlan_h_jimi|title">                                <i></i>                                <em class="title">咨询JIMI</em>                                </span>                                <span class="close-panel J-close"></span>                            </h3>                            <div class="jdm-tbar-panel-main">                                <div class="jdm-tbar-panel-content J-panel-content" style="overflow:hidden;">                                <div class="jdm-tbar-tipbox2">                                    <div class="tip-inner">                                        <i class="i-loading"></i>                                    </div>                                </div>                                </div>                            </div>                            <div class="jdm-tbar-panel-footer J-panel-footer"></div>                        </div>                     </div>                    <div class="jdm-toolbar-header">                        <div class="jdm-tbar-act J-trigger" data-type="bar" data-name="ad" data-iframe="true" clstag="h|keycount|cebianlan_h_header|">                        </div>                    </div>                    <div class="jdm-toolbar-tabs J-tab">                         <div data-type="bar" clstag="h|keycount|cebianlan_h_jdvip|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-jdvip" data-name="jdvip" data-login="true" data-iframe="//vip.jd.com/sideBar/index.html"> <i class="tab-tip"></i>                                <i class="tab-ico"></i>                                <em class="tab-text">                                    京东会员                                </em>                             <span class="tab-sub J-count hide">0</span>                            <div class="tabs-tip hide">                                <span class="ico"></span>                                <span class="text">成功加入购物车!</span>                                <b></b>                            </div>                        </div>                          <div data-type="bar" clstag="h|keycount|cebianlan_h_cart|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-cart" data-name="cart">                                 <i class="tab-ico"></i>                                <em class="tab-text">                                    购物车                                </em>                             <span class="tab-sub J-count hide" style="display: none;">0</span>                            <div class="tabs-tip hide">                                <span class="ico"></span>                                <span class="text">成功加入购物车!</span>                                <b></b>                            </div>                        </div>                          <div data-type="bar" clstag="h|keycount|cebianlan_h_follow|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-follow" data-name="follow" data-login="true">                                 <i class="tab-ico"></i>                                <em class="tab-text">                                    我的关注                                </em>                             <span class="tab-sub J-count hide">0</span>                            <div class="tabs-tip hide">                                <span class="ico"></span>                                <span class="text">成功加入购物车!</span>                                <b></b>                            </div>                        </div>                          <div data-type="bar" clstag="h|keycount|cebianlan_h_history|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-history" data-name="history">                                 <i class="tab-ico"></i>                                <em class="tab-text">                                    我的足迹                                </em>                             <span class="tab-sub J-count hide">0</span>                            <div class="tabs-tip hide">                                <span class="ico"></span>                                <span class="text">成功加入购物车!</span>                                <b></b>                            </div>                        </div>                          <div clstag="h|keycount|cebianlan_h_message|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-message" data-name="message"><a target="_blank" href="//joycenter.jd.com/msgCenter/queryHistoryMessage.action">                                 <i class="tab-ico"></i>                                <em class="tab-text">                                    我的消息                                </em> </a>                            <span class="tab-sub J-count hide">0</span>                            <div class="tabs-tip hide">                                <span class="ico"></span>                                <span class="text">成功加入购物车!</span>                                <b></b>                            </div>                        </div>                          <div data-type="bar" clstag="h|keycount|cebianlan_h_jimi|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-jimi" data-name="jimi" data-login="true" data-iframe="//jimi.jd.com/index.action?source=jdhome">                                 <i class="tab-ico"></i>                                <em class="tab-text">                                    咨询JIMI                                </em>                             <span class="tab-sub J-count hide">0</span>                            <div class="tabs-tip hide">                                <span class="ico"></span>                                <span class="text">成功加入购物车!</span>                                <b></b>                            </div>                        </div>                     </div>                    <div class="jdm-toolbar-footer">                        <div data-type="link" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-top">                                <a href="#" clstag="h|keycount|cebianlan_h|top">                                    <i class="tab-ico"></i>                                    <em class="tab-text">顶部</em>                                </a>                         </div>                        <div data-type="link" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-feedback">                                 <a href="//diaoyan.jd.com/survey/answerSurvey.htm?eSurveyId=AZDFYX5KJGMOK" target="_blank" clstag="h|keycount|cebianlan_h|feedback">                                    <i class="tab-ico"></i>                                    <em class="tab-text">反馈</em>                                </a>                        </div>                    </div>                    <div class="jdm-toolbar-mini">                    </div>                </div>                <div id="J-toolbar-load-hook" clstag="h|keycount|cebianlan_h|load"></div>            </div></div></body>
</html>
