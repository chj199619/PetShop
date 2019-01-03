
<%@ page import="org.lanqiao.domain.Car" %>
<%@ page import="java.util.List" %>

<%@ page import="org.lanqiao.dao.CarDao" %>
<%@ page import="org.lanqiao.dao.impl.CarImpl" %><%--
  Created by IntelliJ IDEA.
  User: yushao
  Date: 2018/12/13
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN" class="translated-ltr"><!--[if lt IE 7]><html class="ie ie6" lang="zh-cn"> <![endif]--><!--[if IE 7]><html class="ie ie7" lang="zh-cn"> <![endif]--><!--[if IE 8]><html class="ie8" lang="zh"> <![endif]--><!--[if IE 9]><html class="ie9" lang="zh"> <![endif]--><!--[if gt IE 9]><!--><!--<![endif]--><head><script type="text/javascript" async="" src="//res.suning.cn/javascript/sn_da/sa-analytics.js"></script><script type="text/javascript" async="" src="//res.suning.cn/javascript/sn_da/saSiteDsp.js"></script><script type="text/javascript" async="" src="//res.suning.cn/javascript/sn_da/da_opt.js"></script>
    <title>宠物之家 购物车</title>
    <link rel="dns-prefetch" href="//res.suning.cn">
    <link rel="stylesheet" type="text/css" href="//dt.suning.com/detect/static/siller.css">
    <!-- 引入公用头 -->

    <meta charset="UTF-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="cache-control" content="no-store">
    <meta http-equiv="cache-control" content="max-age=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="expires" content="2018-12-13 22:18:55">

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
    <!-- 引入全站公用资源文件 -->
    <link rel="icon" href="imags/ooopic_1545232430.ico" mce_href="imags/ooopic_1545232430.ico" type="image/x-icon">
    <link rel="stylesheet" href="//res.suning.cn/public/v3/css/??v3common.min.css,search.min.css,sn-sidebar.min.css?v=2018112801">
    <script type="text/javascript" src="//res.suning.cn??/public/v3/js/jquery.js,/public/v3/js/sn_lazyload.js,/public/v3/js/lazyelem.min.js,/public/v3/js/SFE.base.min.js,/public/v3/js/search.min.js,/public/sidebar/build/js/sn-sidebar.min.js,/project/yunxin/js/chatCompat_mini.js?v=2018112801"></script>
    <meta content="true" name="autoclick">
    <meta content="d488778a" name="siteid">
    <!--[if IE 6]>
    <script type="text/javascript" src="//res.suning.cn/public/js/DD_belatedPNG.js"></script>
    <![endif]--><script type="text/javascript" src="https://res.suning.cn/project/passport/js/passport.min.js"></script>
    <!-- 引入项目资源文件 -->
    <link rel="stylesheet" type="text/css" href="//res.suning.cn/project/ccf/css/??/cart-base.css,/cart-1.css,/Snaddress.css?v=2018120401">
    <!--[if IE 6]>
    <script type="text/javascript">
        //<![CDATA[
            try {
                document.execCommand("BackgroundImageCache", false, true);
            } catch(e){}
        //]]>
    </script>
    <![endif]-->
    <script src="https://sslres.suning.com/project/myfavorite/js/SFE.dialog.js" type="text/javascript"></script><script type="text/javascript" charset="UTF-8" async="" src="https://mmds.suning.com/mmds/js11/mmds.dX5S3QS2FGHewGp.js"></script><script charset="UTF-8" async="" src="https://oss.suning.com/rdas/dfprs/js/djs/dfp_171_10221556/fp.0ts9Ync0ypaSwGW.js"></script><link type="text/css" rel="stylesheet" charset="UTF-8" href="https://translate.googleapis.com/translate_static/css/translateelement.css"></head>
<body class="root1200"><style id="ui-city-style">ul,li,p,h3,h5,em,b,i,span,a{ margin: 0; padding: 0; }ul,li { list-style: none; }.clearfix:after{ content:"."; display:block; height:0; clear:both; visibility:hidden}.clearfix{ zoom:1}.ui-city a,.ui-city a:visited{ line-height:14px; color:#333; text-decoration: none; outline: none; cursor: pointer;}.ui-city a:hover { text-decoration:none; }.ui-city { display:inline-block;*dispplay:inline;*zoom:1; font-size: 12px; position: relative; z-index: 0}.ui-city .dn { display: none; }.ui-city .db { display: block; }.ui-city .dib { display: inline-block; }.ui-city .arr { display: inline-block; width: 0; height:0; border-color: #bbb transparent transparent; border-width: 5px; border-style: solid dashed dashed; font-size: 0; line-height: 0; overflow: hidden; }.ui-city a.ui-city-toggle:hover { color:#333;}.ui-city-toggle { display:inline-block; border: 1px solid #bbb; padding:6px 5px 6px 6px; color: #000;background: #fff; position: relative; z-index: 100}.ui-city-toggle .address-placement {font-style: normal; float: left;}.ui-city-toggle span { padding-right: 5px}.ui-city-toggle span:hover {color: #333;}.ui-city-toggle .arr { margin-right:5px;position: relative; top:5px; float: left;}.ui-city-group { display:none; position: absolute;background: #fff; left: 0; top:27px;border: 1px solid #ccc; margin-top:-1px; width: 420px; z-index: 99; box-shadow: 0 0 6px #ddd;padding-top:5px;}.ui-city-group .ui-city-close  { position: absolute;right: 0;top: 0;padding: 5px 10px;overflow: hidden;}.ui-city-group .ui-city-close i { font: 700 14px/1.5 simsun;margin-left:-4px; color: #aaa}.ui-city-group-header { padding-top: 10px;  }.ui-city-group-header .address-title { padding-left:15px; margin-bottom: 10px;}.ui-city-group-header .address-title span.show-more{color:#38d; cursor:pointer;}.ui-city-group-header .address-title span.wrapped b{border-style: dashed dashed solid;top: -2px;border-color: transparent transparent #38d;}.ui-city-group-header .address-title b.arr{position: relative;top:3px;left:5px;font-size:0;line-height:0;    border-color: #38d transparent transparent;}.ui-city-group-header .address-item {clear:both; padding-left:15px; margin-bottom: 10px; height:22px;overflow:hidden;margin-right:10px;}.ui-city-group-header .address-item.wrapped {height:110px;overflow:auto;}.ui-city-group-header .address-item.wrapped-2 {height:44px;}.ui-city-group-header .address-item.wrapped-3 {height:66px;}.ui-city-group-header .address-item.wrapped-4 {height:88px;}.ui-city-group-header .address-item a,.ui-city-group-header .address-item a{ display: block; height:22px; line-height:22px;zoom:1; padding:0 2px;color:#666;text-decoration: none;margin-right: 10px;width:auto}.ui-city-group-header .address-item a:hover {color: #f90; }.ui-city-group-header .address-item a.selected {color: #f90; }.ui-city-group-header .address-item a span.name { display:inline-block;width:48px;overflow:hidden;text-overflow: ellipsis; white-space: nowrap; margin-right: 10px;}.ui-city-group-header .address-item a span.address { display:inline-block;width:300px;overflow:hidden;text-overflow: ellipsis; white-space: nowrap;}.ui-city-group-content { margin: 10px 10px 0 10px; background:#fff;}.ui-city-group-content .nav-tabs { padding-left: 6px  }.ui-city-group-content .nav-tabs li {float: left; position: relative; z-index:2;border: 1px solid #ccc; height: 26px;background:#fff;margin-right: 6px; margin-bottom:0; cursor: pointer; }.ui-city-group-content .nav-tabs li p { padding: 6px 10px 6px 10px;border:1px solid #fff; }.ui-city-group-content .nav-tabs li a,.ui-city-group-content .nav-tabs li a:visited{ color: #999;float: left}.ui-city-group-content .nav-tabs li .arr { position: relative; top: 3px;left: 5px;font-size: 0; line-height: 0;}.ui-city-group-content .nav-tabs li.current { border: 2px solid #ffb84e; border-bottom:none; z-index: 4;}.ui-city-group-content .nav-tabs li.current p { padding: 6px 10px 5px 10px; position: relative; z-index: 4; border:none; }.ui-city-group-content .nav-tabs li.current .arr { border-color:  transparent transparent #f90; border-style:  dashed dashed solid; top:-2px; }.ui-city-group-content .nav-tabs li.current a,.ui-city-group-content .nav-tabs li.current a:visited{ display:inline-block; color: #333; }.ui-city-group-content .nav-tabs li.active a,.ui-city-group-content .nav-tabs li.active a:visited{ display:inline-block; color: #333; }.ui-city-group-content .tab-content { border-top: 2px solid #ffb84e;top:-2px;  position: relative; z-index: 3}.ui-city-group-content .tab-content .tab-panel { display: none; padding-top: 3px; padding-bottom: 15px; background: #fff;padding-left: 8px }.ui-city-group-content .tab-content .tab-panel.active { display: block;}.ui-city-group-content .tab-content li:after { content:"."; display:block; height:0; clear:both; visibility:hidden }.ui-city-group-content .tab-content li { *zoom:1;}.ui-city-group-content .tab-content li span {display:inline-block;width: 98px;}.ui-city-group-content .tab-content li a,.ui-city-group-content .tab-content li a:visited { display:inline-block; background:#fff;margin: 2px; padding: 5px; color:#000; }.ui-city-group-content .tab-content li a:hover { background: #f90; color: #fff;}.ui-city-group-content .tab-content li a.on,.ui-city-group-content .tab-content li a.on:visited { background: #f90;color: #fff; }.ui-city-group-content .tab-content .pr-panel li a{ }.ui-city.active { z-index: 10}.ui-city.active a.ui-city-toggle { border: 1px solid #ccc;background:#fff;border-bottom:none;box-shadow: 0 -1px 1px #ddd}.ui-city.active a.ui-city-toggle:hover { color: #333; background: #fff; text-decoration: none;}.ui-city.active a.ui-city-toggle .arr{ border-color:  transparent transparent #f90; border-style:  dashed dashed solid; top:0; }.ui-city.active .ui-city-group { display: block; }.ui-city .arr {transition:All .2s ease;-webkit-transition:All .2s ease;-moz-transition:All .2s ease;-o-transition:All .2s ease;-ms-transition:All .2s ease;}</style>
<script src="//res.suning.cn/project/crdnode/common/tingyun.js"></script>
<script>
    //宽窄屏切换
    var bigscreen = false;
    if ( screen.width>1440 ) {
        bigscreen = true;
        var bodyTag = document.getElementsByTagName("body")[0],
            bodyClassName = bodyTag.getAttribute("className") || bodyTag.getAttribute("class");
        bodyClassName = bodyClassName ? bodyClassName+" " : "";
        bodyTag.className = bodyClassName+"root1200";
    }
</script>
<input type="hidden" id="resourceType" value="web">
<input type="hidden" id="pagename" value="pgcate=10009;tag=100081;pgtitle=购物车1">
<input type="hidden" id="normalAndHwgMergeSwitch" value="0">
<input type="hidden" id="dfptoken" value="">
<!-- 此处引入cart1页头  -->

<div id="_TOP_BANNER_" class="ng-top-banner"></div>
<div class="ng-toolbar">
    <div class="ng-toolbar-con wrapper">
        <div class="ng-toolbar-left">
            <a href="/index.jsp" class="ng-bar-node ng-bar-node-backhome" id="ng-bar-node-backhome" name="public0_none_gongju_fanhui" style="display: block;">
                <i class="ng-iconfont ng-backhome"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> </font></font></i><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回首页</font></font></span>
            </a>
            <script type="text/javascript">
                if (!sn.isHome){document.getElementById('ng-bar-node-backhome').style.display = "block";};
            </script>
            <div class="ng-bar-node-box ng-site-nav-box lazy-bar-box">

                <div class="ng-sn-site-nav ng-d-box site-nav-child" style="display:none;">
                    <div class="head-loading"></div>
                    <a href="javascript:void(0);" class="ng-close" name="public0_none_daohang_close"><em class="ng-iconfont"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></em></a>
                </div>
            </div>
            <div class="ng-bar-node-box shop-handle lazy-bar-box">
                <div class="ng-down-box ng-d-box shop-center-child ng-ser-list" style="display:none;">
                    <div class="head-loading"></div>
                </div>
            </div>

        </div>
        <div class="ng-toolbar-right">

            <a href="javascript:void(0)" class="ng-bar-node username-bar-node username-bar-node-showside" id="username-node" rel="nofollow" style="display:none;">
                <span id="usernameHtml01"></span>
                <em class="hasmsg ng-iconfont"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></em>
            </a>
            <div class="ng-bar-node-box username-handle" id="username-node-slide" style="display:none;">
                <a href="//my.suning.com" rel="nofollow" class="ng-bar-node username-bar-node username-bar-node-noside" style="display: none;">
                    <span id="usernameHtml02"></span>
                    <em class="hasmsg ng-iconfont"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> </font></font></em>
                    <em class="ng-iconfont down"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></em>
                </a>

            <script type="text/javascript">
                var stripscript = function(s){
                    var pattern = new RegExp("[<>]")
                    var rs = "";
                    for (var i = 0; i < s.length; i++) {
                        rs = rs+s.substr(i, 1).replace(pattern, '');
                    }
                    return rs;
                }
                function d(b) {
                    var a;
                    return (a = document.cookie.match(RegExp("(^| )" + b + "=([^;]*)(;|$)"))) ?stripscript(decodeURIComponent(a[2].replace(/\+/g, "%20"))) : null
                };
                var uernameA = d("logonStatus");
                var usernameNode = document.getElementById('username-node');
                var usernameNodeSlide = document.getElementById('username-node-slide');
                var usernameHtml01 = document.getElementById('usernameHtml01') , usernameHtml02 = document.getElementById('usernameHtml02');
                var regBarNode = document.getElementById('reg-bar-node');
                if (uernameA != null && uernameA != "") {
                    var uernameC = d("nick");
                    // if( ((window.sidebar_config && sidebar_config.enable)||sn.hasSidebar) && !sn.hasNewSidebar ){
                    // 	usernameNode.style.display = "block";
                    // }else{
                    usernameNodeSlide.style.display = "block";
                    //}
                    usernameHtml01.innerHTML = uernameC;
                    usernameHtml02.innerHTML = uernameC;
                    regBarNode.style.display = "none";
                }else{
                    usernameNode.style.display = "none";
                    usernameNodeSlide.style.display = "none";
                    usernameHtml01.innerHTML = " ";
                    usernameHtml02.innerHTML = " ";
                    regBarNode.style.display = "block";
                }
            </script>

        </div>
        <div id="ng-minicart-slide-box"></div>
    </div>
</div><div id="cart-one-header" class="cart-header">
    <div class="wrapper clearfix">
        <div class="g-logo" id="cart-g-logo">
            <a href="" name="icart1_shopping_logo"><img src="images/logo.gif" alt="pet"></a>
        </div>


    <div class="effective-tips hide effective-tip-cart1" id="cartOneTopNotificationBar">
        <span class="cart1_title_tips"><a href="javascript:void(0);" target="_blank" name="icart1_dbtz_dj"></a></span>
        <a href="javascript:void(0);" class="tips-close" name="icart1_dbtz_gb"></a>
    </div>

    <div id="cart-one-delivery" class="head-delivery wrapper clearfix">
        <div class="city-select">
            <span class="delivery-desc fl c6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">送货至</font></font></span>
            <div id="city" class="fl" name="icart1_switchAddress"><div class="ui-city"><a name="item_none_dizhi_01" href="###" class="ui-city-toggle" hidefocus="true"><em class="address-placement"><span id="provinceName" class="pr hide" role="50,,,山西"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">山西</font></font></span><span id="citybName" class="ct" role="1000251,9248,01,晋中"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">晋中</font></font></span><span id="districtName" class="ds" role=",11933,01,榆次区"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">榆次区</font></font></span></em><b class="arr"></b></a></div></div>
        </div>
    </div></div>

<div class="cart-bg" id="cart-bg">	<div class="wrapper cart cart-wrapper" id="cart-wrapper">
    <!--此处引入车一包装页面 -->
    <!--此处引入购物车未登录标题及提示语 -->


    <div class="m-cart-header">
        <div class="cart-table-header">
            <div class="inner-box c6">
                <div class="th th-chk form th-chk-chkd">
                    <div class="cart-checkbox cart-checkbox-checked">


                    </div><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                </font></font></div>
                <div class="th th-item"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">商品信息</font></font></div>

                <div class="th th-price"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单价（元）</font></font></div>
                <div class="th th-amount"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数量</font></font></div>
                <div class="th th-sum"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">小计（元）</font></font></div>
                <div class="th th-op"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">操作</font></font></div>
            </div>
        </div>
    </div>
    <div class="m-cart-body" id="cart-body">
        <div class="promo-location promo-flag hide">
        </div>
        <div id="store-0000000000" class="m-store" storeid="0000000000" storefee="0.00" storename="苏宁自营" storetype="">

            <div class="store-title clearfix store-checked">
                <div class="cart-checkbox fl">
                    <input type="checkbox" checktype="storeAllCheck" class="checkbox chk-sn-all l" id="J_CheckBox_0000000000" checked="checked" data-id="store-0000000000" name="icart1_buy_shangjia">

                </div>
                <div class="ship-desc fr  ">


                    <div id="meet-cut-0000000000" class="hide">


                        <div class="fare-merge-order">
                            <div onclick="st.tooltipNew.allHide();" class="ui-tooltip-close"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">×</font></font></div>


                        </div>
                    </div>
                </div>
            </div>
            <%
                int porderid = (int)Math.random()*12;
                CarDao dao = new CarImpl();
                List<Car> carList = dao.findAll();
                Double totalMoney = 0d;
                for (Car car : carList){
                    totalMoney+=car.getTotal();
            %>
            <div class="cart-list">
                <!-- 普通商品-[[-->
                  <div data-sku="a" class="item  item-checked         item-last item-specs-can">
          <span class="line-this"></span>
          <span class="main-line"></span>
          <span class="main-line main-line-11"></span>

          <div class="item-main  clearfix">
          <input class="haoye" type="hidden" cmmdtycode="000000010535800679" cmmdtyqty="1" shopcode="0000000000" itemno="020120154471073309361074" activitytype="01" subactivitytype="" pricetype="" overseasflag="" salesprice="99.00" tickstatus="1" itemoverdue="0" carshopserway="" carshopcode="" suppliercode="0010146485" jdlmodel="X" coldchainflag="" tmflag="">
              <div class="td td-chk form">

               </div>

                        <div class="td td-item">
                        <div class="item-pic">

                    <a href="#" class="item-img-box tax-introduce tip-common-hover-fn-btn" data-placement="same" data-node="#tax-tip-person020120154471073309361074" target="_blank" name="icart1_goods_pic">

                        <img src="<%=car.getImg()%>" alt="">

                    </a>

                            </div>
                            <div class="item-info" style="margin-left: 74px;width: 100px;">

                                <a href="#"  class="item-title" name="icart1_goods_name" cmmdtycode="000000010535800679" cmmdtyname style="width: 100px"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    &nbsp;&nbsp;<%=car.getPetName()%></font></font></a>
                            </div>
                            <div class="item-service">

                            </div>
                            <div class="item-remark" id="shoppingGold_020120154471073309361074">

                            </div>
                        </div>

                        <div class="td td-price">
                            <div class="price-line" style="width: 55px;">
							<span class="price-now sn-price">
								<i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">¥ </font></font></i>
								<em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><%=car.getPrice()%></font></font></em>
							</span>
                            </div>


                        </div>
                        <div class="td td-amount">
                            <div class="item-amount" style="padding-left: 35px">
                                <a href="/update.do?method=de&sName=<%=car.getPetName()%>&sNum=<%=car.getNum()%>" class="minus "><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-</font></font></a>
                                <input type="text" name="icart1_goods_num_sr" class="ui-text text-amount" autocomplete="off"  limitqtytype="1" itemno="020120154471073309361074" activitytype="01" value="<%=car.getNum()%>" id="020120154471073309361074-text-amount" maxlength="2" style="height: 21px;width: 23px">

                                <a href="/update.do?method=add&sName=<%=car.getPetName()%>&sNum=<%=car.getNum()%>" class="plus" ><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+</font></font></a>
                            </div>
                        </div>
                        <div class="td td-sum" style="width: 75px">
                            <b class="sn-price">
                                <i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">¥ </font></font></i>
                                <em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><%=car.getTotal()%></font></font></em>
                            </b>

                        </div>
                        <div class="td td-op" id="0000000105358006790000000000" itemno="020120154471073309361074" shopcode="0000000000" >
                            <a href="" class="add-fav tip-common-click-fn-btn" data-tip-type="addFav" name="icart1_goods_col" data-placement="bottom"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">移入收藏</font></font></a>
                            <a href="/update.do?method=dele&sName=<%=car.getPetName()%>&sNum=<%=car.getNum()%>" class="del tip-common-click-fn-btn" data-placement="bottom" data-tip-type="delOne" name="icart1_goods_delate"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">删除</font></font></a>
                            <p href="" class="tip-look-alike " data-placement="bottom" id="alike-020120154471073309361074" data-clonenode="#alikePro-020120154471073309361074" style="display: none;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">查找相似</font></font><i class="alike-arr"></i></p>
                            <div id="alikePro-020120154471073309361074" class="hide">
                                <div class="alike-container">
                                    <div class="alike-prolist J-alike-pro">
                                        <a class="prev" href=""></a>
                                        <a class="next" href=""></a>
                                        <div class="list-container">
                                            <ul class="list-box">
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <form>
                <input type="text" name="orderid" value="<%=car.getOrderid()%>" style="display: none">
                <input type="text"  value="<%=totalMoney%>" style="display: none">
                <input type="text" name="pordderid" value="<%=porderid%>" style="display: none">
            <%
            }
             %>
        </div>
        </div>

    <!-- 联合满减区域 [[-->

    <!-- 购物车结算工具条 [[-->
    <div class="cart-toolbar-box " style="">
        <div class="cart-toolbar rel clearfix">
            <div class="toolbar-box clearfix">
                <i class="had-buy-arr"></i>
                <div class="r-column r  clearfix">
                    <div class="cart-collect fl">
                        <!-- 1115 dom结构变化  -->
                        <!-- 总价 -->
                        <div class="cart-total-price clearfix">
                            <div class="split"></div>
                            <div class="sn-sum-price rel">
                                <p class="cart-sum-price">
                                    <span id="totalName"><font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">总价（含运费）：</font></font></span>
                                    <b class="sn-price price-color">
                                        <i><font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">¥ </font></font>
                                        </i>
                                        <em id="cart1PayAmount">
                                            <font style="vertical-align: inherit;">
                                            <font   style="vertical-align: inherit;"><%=totalMoney%></font>
                                            </font>
                                        </em>
                                    </b>
                                </p>
                                <p class="cart-extra-price hide">
                                    <span class="sn-price"><i><font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">¥ </font></font></i><em><font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">0.00</font></font></em></span>
                                    <em class="plus"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> + </font></font></em>
                                    <span class="sn-price">
                                        <i><font style="vertical-align: inherit;">
                                            <font style="vertical-align: inherit;">¥ </font>
                                            </font>
                                        </i><em><font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">0.00</font></font></em></span>
                                </p>
                            </div>
                        </div>
                        <!-- 已选优惠模块 -->
                    </div>
                    <div class="cart-checkout l">
                        <a class="checkout cart-btn" href="/DD.do?total= <%=totalMoney%>" name="icart1_ope_buy01"><b></b>
                            <font style="vertical-align: inherit;">
                            <font style="vertical-align: inherit;">去结算</font></font>
                        </a>
                    </div>

                </div>

            </div>
        </div>
    </div>	   <!-- 购物车结算工具条 ]]-->
    </form>


<!-- 引入公用尾 -->


<style type="text/css">
    .ng-footer{height:200px;margin-top:0;}
    .ng-s-footer{height:185px;background:none;text-align:center;}
    .ng-s-footer p.ng-url-list{height:25px;line-height:25px;}
    .ng-s-footer p.ng-url-list a{color:#666666;}
    .ng-s-footer p.ng-url-list a:hover{color:#f60;}
    .ng-s-footer .ng-authentication{float:none;margin:0 auto;height:25px;width:990px;margin-top:5px;}
    .ng-s-footer p.ng-copyright{float:none;width:100%;}
    .root1200 .ng-s-footer p.ng-copyright{width:100%;}
</style>


<script type="text/javascript" src="//dt.suning.com/detect/dt/siller.js"></script>
<script type="text/javascript" src="//mmds.suning.com/mmds/mmds.js"></script>
<script type="text/javascript">
    bd.init({
        'appCode' : "snCart",// 必填
        'env':"prd"       // 必填
    });
</script>




</div>
</div>
</div>
</div>
<center>
    <div style="background: url('/images/foot.png') ;width: 100%;height: 500px;margin-top: 880px;"></div >
</center>
</body>
</html>
