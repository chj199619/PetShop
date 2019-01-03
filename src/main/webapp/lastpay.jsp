<%--
  Created by IntelliJ IDEA.
  User: 63415
  Date: 2018/12/26
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
    <meta charset="GBK">
    <title>支付宝 - 网上支付 安全快速！</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="中国最大的第三方电子支付服务提供商">
    <link rel="shortcut icon" href="https://i.alipayobjects.com/common/favicon/favicon.ico" type="image/x-icon">

    <!-- FD:20:cashier/config/config.vm:START --><!-- FD:20:cashier/config/config.vm:239:config/config.schema:收银台配置:START -->

    <!-- FD:20:cashier/config/config.vm:239:config/config.schema:收银台配置:END -->
    <!-- FD:20:cashier/config/config.vm:END -->
    <link href="https://a.alipayobjects.com" rel="dns-prefetch">
    <link href="https://app.alipay.com" rel="dns-prefetch">
    <link href="https://my.alipay.com" rel="dns-prefetch">
    <link href="https://lab.alipay.com" rel="dns-prefetch">
    <link href="https://cashier.alipay.com" rel="dns-prefetch">
    <link href="https://financeprod.alipay.com" rel="dns-prefetch">
    <link href="https://shenghuo.alipay.com" rel="dns-prefetch">

    <script async="" src="https://gw.alipayobjects.com/os/secjs/c963eac3-e21a-4127-8c29-41bbe5679874/cashier_lightPayCashier.js"></script><script type="text/javascript">
    window._to = { start: new Date() };
</script>

    <!-- FD:106:alipay/tracker/monitor.vm:START --><!-- FD:106:alipay/tracker/sai_seer.vm:START --><script type="text/javascript">

    !function(n){function o(r){if(t[r])return t[r].exports;var i=t[r]={exports:{},id:r,loaded:!1};return n[r].call(i.exports,i,i.exports,o),i.loaded=!0,i.exports}var t={};return o.m=n,o.c=t,o.p="",o(0)}([function(n,o){"use strict";window.Sai={log:function(){},error:function(){},lost:function(){},off:function(){},on:function(){},_DATAS:[],_EVENTS:[]}}]);

</script>
    <!-- FD:106:alipay/tracker/sai_seer.vm:END --><!-- FD:106:alipay/tracker/monitor.vm:END -->
    <!-- FD:106:alipay/tracker/seajs.vm:START -->


    <!-- monitor 防错代码 -->

    <!-- seajs以及插件 -->
    <script charset="utf-8" crossorigin="anonymous" id="seajsnode" onerror="window.monitor &amp;&amp; monitor.lost &amp;&amp; monitor.lost(this.src)" src="https://a.alipayobjects.com/??seajs/seajs/2.2.3/sea.js,seajs/seajs-combo/1.0.0/seajs-combo.js,seajs/seajs-style/1.0.2/seajs-style.js,seajs/seajs-log/1.0.0/seajs-log.js,jquery/jquery/1.7.2/jquery.js,gallery/json/1.0.3/json.js,alipay-request/3.0.8/index.js"></script>


    <script>
    seajs.config({
        alias: {
            '$': 'jquery/jquery/1.7.2/jquery',
            '$-debug': 'jquery/jquery/1.7.2/jquery',
            'jquery': 'jquery/jquery/1.7.2/jquery',
            'jquery-debug': 'jquery/jquery/1.7.2/jquery-debug',
            'seajs-debug': 'seajs/seajs-debug/1.1.1/seajs-debug'
        },
        crossorigin: function(uri){

            function typeOf(type){
                return function(object){
                    return Object.prototype.toString.call(object) === '[object ' + type + ']';
                }
            }
            var isString = typeOf("String");
            var isRegExp = typeOf("RegExp");

            var whitelist = [];

            whitelist.push('https://a.alipayobjects.com/');

            for (var i=0, rule, l=whitelist.length; i<l; i++){
                rule = whitelist[i];
                if (
                    (isString(rule) && uri.indexOf(rule) === 0) ||
                    (isRegExp(rule) && rule.test(uri))
                ) {

                    return "anonymous";
                }
            }
        },
        vars: {
            locale: 'zh-cn'
        }
    });
    </script>

    <!-- 兼容原有的 plugin-i18n 写法 -->
    <!-- https://github.com/seajs/seajs/blob/1.3.1/src/plugins/plugin-i18n.js -->
    <script>
        seajs.pluginSDK = seajs.pluginSDK || {
            Module: {
                _resolve: function() {}
            },
            config: {
                locale: ''
            }
        };
        // 干掉载入 plugin-i18n.js，避免 404
        seajs.config({
            map: [
                [/^.*\/seajs\/plugin-i18n\.js$/, ''],
                [/^.*\i18n!lang\.js$/, '']
            ]
        });
    </script>

    <!-- 路由旧 ID，解决 seajs.use('select/x.x.x/select') 的历史遗留问题 -->
    <script>
        (function(){

            var JQ = '/jquery/1.7.2/jquery.js';
            seajs.cache['https://a.alipayobjects.com/gallery' + JQ] = seajs.cache['https://a.alipayobjects.com/jquery' + JQ];

            var GALLERY_MODULES = [
                'async','backbone','coffee','cookie','es5-safe','handlebars','iscroll',
                'jasmine','jasmine-jquery','jquery','jquery-color','json','keymaster',
                'labjs','less','marked','moment','mustache','querystring','raphael',
                'socketio','store','swfobject','underscore','zepto','ztree'
            ];

            var ARALE_MODULES = [
                'autocomplete','base','calendar','class','cookie','dialog','easing',
                'events','iframe-uploader','iframe-shim','messenger','overlay','popup',
                'position','select','switchable','tip','validator','widget'
            ];

            var util = {};
            util.indexOf = Array.prototype.indexOf ?
                function(arr, item) {
                    return arr.indexOf(item);
                } :
                function(arr, item) {
                    for (var i = 0; i < arr.length; i++) {
                        if (arr[i] === item) {
                            return i;
                        }
                    }
                    return -1;
                };
            util.map = Array.prototype.map ?
                function(arr, fn) {
                    return arr.map(fn);
                } :
                function(arr, fn) {
                    var ret = [];
                    for (var i = 0; i < arr.length; i++) {
                        ret.push(fn(arr[i], i, arr));
                    }
                    return ret;
                };

            function contains(arr, item) {
                return util.indexOf(arr, item) > -1
            }

            function map(id) {
                id = id.replace('#', '');

                var parts = id.split('/');
                var len = parts.length;
                var root, name;

                // id = root/name/x.y.z/name
                if (len === 4) {
                    root = parts[0];
                    name = parts[1];

                    // gallery 或 alipay 开头的没有问题
                    if (root === 'alipay' || root === 'gallery') {
                        return id;
                    }

                    // arale 开头的
                    if (root === 'arale') {
                        // 处理 arale/handlebars 的情况
                        if (contains(GALLERY_MODULES, name)) {
                            return id.replace('arale/', 'gallery/');
                        } else {
                            return id;
                        }
                    }
                }
                // id = name/x.y.z/name
                else if (len === 3) {
                    name = parts[0]

                    // 开头在 GALLERY_MODULES 或 ARALE_MODULES
                    if (contains(GALLERY_MODULES, name)) {
                        return 'gallery/' + id;
                    } else if (contains(ARALE_MODULES, name)) {
                        return 'arale/' + id;
                    }
                }

                return id;
            }

            var _use = seajs.use;

            seajs.use = function(ids, callback) {
                if (typeof ids === 'string') {
                    ids = [ids];
                }

                ids = util.map(ids, function(id) {
                    return map(id);
                });

                return _use(ids, callback);
            }

        })();
    </script>
    <!-- FD:106:alipay/tracker/seajs.vm:END -->
    <!-- FD:106:alipay/tracker/tracker_time.vm:START --><!-- FD:106:alipay/tracker/tracker_time.vm:784:tracker_time.schema:全站 tracker 开关:START --><script charset="utf-8" crossorigin="crossorigin" src="https://a.alipayobjects.com/static/ar/alipay.light.base-1.8.js"></script>


    <script type="text/javascript">
        if (!window._to) {
            window._to = { start: new Date() };
        }
    </script>

    <script charset="utf-8" src="https://as.alipayobjects.com/??g/component/tracker/2.3.2/index.js,g/component/smartracker/2.0.2/index.js"></script>
    <script charset="utf-8" src="https://a.alipayobjects.com/g/utiljs/rd/1.0.2/rd.js"></script>



    <script>
        window.Tracker && Tracker.start &&  Tracker.start();
    </script>







    <!-- FD:106:alipay/tracker/tracker_time.vm:784:tracker_time.schema:全站 tracker 开关:END -->
    <!-- FD:106:alipay/tracker/tracker_time.vm:END -->  <script>(function(D,W,codeUri){var sampling="5",maxNum=5,_st=+new Date(),ran=Math.floor(Math.random()*sampling);if(ran>0||isNaN(ran)){return;}W.throwCasherError=W.onerror=function(err,file,line){if((--maxNum)<=0){return;};var nick="",accountId=D.getElementById('J-accountId'),orderId=/orderId=([\w|\.]+)/.exec(location.search);if(accountId){nick+=accountId.innerHTML;}if(orderId){nick+=':'+orderId[1];}err='[t'+(new Date()-_st)+'][uhttps://cashier.alipay.com'+W.location.pathname+']'+err;var n = 'cashierFeImg_' + parseInt(Math.random()*10000000),img=W[n]=new Image();img.onload=img.onerror=function(){W[n]=null;};img.src="//gm.mmstat.com/jstracker.2?"+["type=9","id=jstracker","v=0.02","nick="+codeUri(nick),"msg="+codeUri(err||""),"file="+codeUri(file||""),"ua="+codeUri(navigator.userAgent),"line="+codeUri(line||""),"scrolltop=","screen=","t="+new Date().valueOf()].join("&");};})(document, window, encodeURIComponent);</script>
    <style>
        @font-face {
            font-family: 'cashier';
            src: url("//at.alicdn.com/t/font_1434596335_6737535.eot"); /* IE9*/
            src: url("//at.alicdn.com/t/font_1434596335_6737535.eot?#iefix") format('embedded-opentype'), /* IE6-IE8 */
            url("//at.alicdn.com/t/font_1434596335_6737535.woff") format('woff'), /* chrome、firefox */
            url("//at.alicdn.com/t/font_1434596335_6737535.ttf") format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/
            url("//at.alicdn.com/t/font_1434596335_6737535.svg#cashier") format('svg'); /* iOS 4.1- */
        }
        .iconfont {
            font-family:"cashier" !important;
            font-style: normal;
            font-weight: normal;
            cursor: default;
            -webkit-font-smoothing: antialiased;
        }
    </style>  <link charset="utf-8" rel="stylesheet" href="https://a.alipayobjects.com/g/cashier-wd/cashier/2018.1.31/lightpay.css" media="all">
    <script src="https://as.alipayobjects.com/g/cashier-wd/lib/0.0.2/??es5-shim/shim-v4.3.0.js,es5-shim/sham-v4.3.0.js,react/v0.14.3.min.js,react-dom/v0.14.3.min.js"></script>
    <style>
        .icon-gray {
            filter: url("https://cashiergtj.alipay.com:443/filters.svg#grayscale");
            filter:gray\9;
            -webkit-filter: grayscale(90%);
        }
        .mfe-tip-warp{
            width: 320px;
        }
        .mfe-tip-title{
            line-height: 20px;
        }

        .manage-item .fn-green{
            color:#393;
        }
        /* 超限科学引导开始 */
        .extra-item .ui-button-guide {
            color: #000;
            background-color: #fafafa;
            padding: 0 10px;
            font-size: 12px;
            font-weight: normal;
            margin-top: 6px;
            margin-bottom: 10px;
        }
        .extra-item .ui-tipbox-recommend {
            color: #fff;
            background-color: #d9524e;
            padding: 1px 4px 2px 4px;
            margin-right: 4px;
            border-radius: 2px;
        }
        /* 超限科学引导结束 */


        /* 账户渠道开始*/
        .account-chls {
            margin-bottom: 20px;
            padding: 0 20px;
        }
        .account-chl {
            position: relative;
            height: 20px;
            margin-bottom: 1px;
            padding: 8px 20px 8px 18px;
        }
        .account-chl-used {
            background: #E9F0FE;
        }
        .account-chl-disabled {
            color: #999;
        }
        .account-chl .iconfont {
            font-size: 14px;
        }
        .account-chl em {
            font-weight: bold;
        }
        .account-amount {
            position: absolute;
            right: 39px;
            top: 9px;
            line-height:18px;
        }
        .account-amount em{
            font-size: 14px;
            color: #f60;
            font-weight:700;
        }
        /* 购物卡 */
        .account-card {
            margin-right: 4px;
            padding: 2px 4px;
            border: 1px dashed #bbcbef;
            background: #fff;
        }
        .account-card-used {
            padding: 1px 4px;
            border: 2px solid #ffac21;
        }
        .account-card-err {
            border-color: #f00;
        }
        .account-card em{
            font-weight: bold;
        }
        .account-card i {
            color: #999;
        }
        /* 账户渠道结束*/

        .limit-result-off{margin-left:8px;}
        .limit-result-off{
            display:none
        }

        .ch-limiting .icon-limit-exceed{
            display:inline;
        }
        .action-rt-gray .limit-result-off{
            display:none
        }

        /* 分期用到 */
        .ui-select-trigger-disabled {
            background-image: -moz-linear-gradient(center top , #FBFBFB, #F3F3F3);
            border-color: #CCCCCC;
            color: #B2B2B2;
            cursor: default;
        }


        /* 渠道加载 loading */
        .action-rt {
            line-height: 14px;
            height: 14px;
            font-size: 12px !important;
            background-color: #FFFFFF !important;
            border: 1px solid #1E73C1;
            color: #1E73C1;
            margin-right: 2px;
            display: inline-block;
            zoom: 1;
        }

        .action-rt .action-rt-type {
            background-color: #1E73C1;
            display: inline-block;
            color: #ffffff;
            height: 14px;
            line-height: 14px;
            padding: 0 2px;
        }

        .action-rt .rt-discount {
            color: #1E73C1;
            padding: 0;
            background: none;
        }
        .action-rt-gray .action-rt {
            border: 0;
            background-color: #cccccc !important;
            color: #FFFFFF !important;
        }
        .action-rt-gray .action-rt-type,
        .action-rt-gray .rt-discount {
            background-color: #cccccc !important;
            color: #FFFFFF !important;
        }

        .channel-label .ui-fm-error .ui-fm-explain {
            color: #FF5243;
            padding: 3px 0 0;
            padding: 5px 0 0 \9;
            _padding-top: 3px;
            _margin-left: 3px;
            font-size: 12px;
            padding-left: 20px;
            background: url(https://i.alipayobjects.com/e/201208/3JRI1gkfUX.png) no-repeat -138px -83px;
        }
    </style>
    <script>
        (function(win, doc) {
            if(doc.domain.indexOf("alipay.net") > -1) {
                doc.domain = "alipay.net";
            } else {
                doc.domain = "alipay.com";
            }

            var CashierVar = win.CashierVar || {};
            CashierVar.PageVar = {
                app_domain: "https://cashiergtj.alipay.com:443"
            }
        })(window, document);
    </script>
    <script src="//g.alicdn.com/fsp/tracker-patch/index.js?1545833187391" async="" crossorigin="true" id="tracker-patch"></script><style type="text/css" class="iconStyle">.banklogo-PCREDIT_s, .banklogo-CCB_s{background-color:#fff;background-repeat:no-repeat;background-position:0 0;}
.banklogo-PCREDIT_s{background-image:url(https://as.alipayobjects.com/g/cashier-wd/bank-logo/2018.8.31/PCREDIT_s.png)}
.banklogo-CCB_s{background-image:url(https://as.alipayobjects.com/g/cashier-wd/bank-logo/2018.8.31/CCB_s.png)}.banklogo-PSBC_s, .banklogo-ANTBANK_s, .banklogo-BALANCE_s, .banklogo-MONEYFUND_s{background-color:#fff;background-repeat:no-repeat;background-position:0 0;}
.banklogo-PSBC_s{background-image:url(https://as.alipayobjects.com/g/cashier-wd/bank-logo/2018.8.31/PSBC_s.png)}
.banklogo-ANTBANK_s{background-image:url(https://as.alipayobjects.com/g/cashier-wd/bank-logo/2018.8.31/ANTBANK_s.png)}
.banklogo-BALANCE_s{background-image:url(https://as.alipayobjects.com/g/cashier-wd/bank-logo/2018.8.31/BALANCE_s.png)}
.banklogo-MONEYFUND_s{background-image:url(https://as.alipayobjects.com/g/cashier-wd/bank-logo/2018.8.31/MONEYFUND_s.png)}</style><style></style><script type="text/javascript" src="https://as.alipayobjects.com/g/component/apdid-cn-entry/0.0.1/cnentry.js"></script><link charset="utf-8" rel="stylesheet" href="https://gw.alipayobjects.com/os/rmsportal/OoBEJPEWDpEAYzMExDNj.css"><script type="text/javascript" src="https://webpushgw.alipay.com/polling?biztype=cashier&amp;uid=2018122622001121560550454245&amp;cid=91d92108-de20-4408-8559-3732fb65e944&amp;timeout=30000&amp;_input_charset=utf-8&amp;ctoken=CyyaPFyNzn9BFRVr&amp;_callback=reqwest_1545835012159" async=""></script></head>
<body>

<div id="header">
    <div class="header-container fn-clear">
        <div class="header-title">
            <span class="logo">支付宝<s></s></span>
            <span class="logo-title">我的收银台</span>
        </div>
        <div class="ui-select fn-left switchTemplate" id="switchTemplate">
            <a href="#" class="ui-select-text" seed="switchTemplate-link" smartracker="on">
                <span>中国大陆版</span>
                <i class="iconfont"></i>
            </a>
            <ul class="ui-select-content">
                <li class="ui-select-item">
                    <a  seed="-CN">中国大陆版</a>
                </li>
                <li class="ui-select-item">
                    <a seed="switchTemplate-linkT1" smartracker="on">香港版</a>
                </li>
                <li class="ui-select-item">
                    <a  seed="switchTemplate-linkT2" smartracker="on">台湾版</a>
                </li>
                <li class="ui-select-item">
                    <a  seed="switchTemplate-linkT3" smartracker="on">海外其他地区版</a>
                </li>
            </ul>
        </div>
        <script type="text/javascript" charset="utf-8">
            (function(){
                function _hasClass(obj, cls) {
                    return obj.className.match(new RegExp('(\\s|^)' + cls + '(\\s|$)'));
                }
                function _addClass(obj, cls) {
                    if (!_hasClass(obj, cls)) obj.className += " " + cls;
                }
                function _removeClass(obj, cls) {
                    if (_hasClass(obj, cls)) {
                        var reg = new RegExp('(\\s|^)' + cls + '(\\s|$)');
                        obj.className = obj.className.replace(reg, ' ');
                    }
                }

                var switchTemplate = document.getElementById("switchTemplate");
                switchTemplate.onmouseover = function(){
                    _addClass(switchTemplate,'focus');
                };

                switchTemplate.onmouseout = function(){
                    _removeClass(switchTemplate,'focus');
                };
            })()
        </script>                <ul class="header-right">
        <li class="account-id">支付宝账户：<span id="J-accountId">15079866939</span></li>
        <li><a target="_blank" seed="pay-by-standard" href="#">找人代付</a></li>
        <li>唯一热线：95188</li>
    </ul>
    </div>
</div>
<!-- FD:cashier:cashier/common/notice.vm:START --><!-- FD:cashier:cashier/common/notice.vm:common/notice.schema:START -->







<!-- FD:cashier:cashier/common/notice.vm:common/notice.schema:END -->

<!-- FD:cashier:cashier/common/notice.vm:END --><!--[if lte IE 8]>
<script src="https://a.alipayobjects.com/cashiers/1.4.4/ie.js"></script>
<![endif]-->
<script type="text/javascript" src="https://g.alicdn.com/dt/tracker/3.2.0/tracker.Tracker.js" crossorigin=""></script>
<script type="text/javascript">
    var tracker = new window.Tracker({
        pid: 'alipaycashier'
    });
    // 监听 window.onerror 事件并打点
    tracker.onGlobalError();
</script>
<script type="text/javascript">
    var json_ua = null;
</script>
<script type="text/javascript" charset="utf-8" src="https://rds.alipay.com/ua_cashier_lightPayCashier.js?&amp;2018122522"></script>
<div id="content">


    <div id="J_Order" class="order order-with-qr" >
        <div class="order-wrapper">
            <div class="qr J_APop" data-arrowposition="10" data-target="J_QrTip">
                <div id="J_QrWrapper" class="qr-wrapper"><canvas width="125" height="125" style="width: 100px; height: 100px;"></canvas></div>
            </div>

<h1 style="font-size: 50px;color: #ff8208">共需支付：<%=request.getAttribute("total")%></h1>

            <!-- FD:73:cashier/common/qrCodeTip.vm:402:qrCodeTip.schema:qrCodeTip-废弃:END --><!-- FD:73:cashier/common/qrCodeTip.vm:END -->


            <div class="order-amount">
                <div class="order-real-amount">


                </div>

            </div>
            <a id="J_OrderExtTrigger" class="order-ext-trigger" href="#" seed="order-detail-more">
                <i class="iconfont" title="记录"></i>
                订单详情
            </a>
            <p id="J_OrderExtLoading" class="order-ext-loading fn-hide">
                加载订单详情信息...
                <a href="http://cashiergtj.alipay.com/standard/lightpay/lightPayCashier.htm?orderId=1226090dea767dd94312013080051565&amp;bizIdentity=trade10001&amp;outBizNo=2018122622001121560550454245&amp;timeStamp=1545835010834&amp;country=CN" seed="refresh-account">刷新</a>
            </p>
            <div id="J_OrderExt" class="order-ext fn-hide" data-url="https://cashiergtj.alipay.com:443/tile/service/standard:orderDetailAsyncProxy.tile?outBizNo=2018122622001121560550454245&amp;outRelationId=&amp;bizIdentity=trade10001&amp;signData=85ef5660d332d08c97ae2c07dcce3fe6&amp;orderId=1226090dea767dd94312013080051565"></div>
        </div>
    </div>
    <!-- CMS:收银台cms/快速付款/快付大促主引导tip开始:fastpay/fastpayDacuMaintip.vm --><!-- CMS:收银台cms/快速付款/快付大促主引导tip结束:fastpay/fastpayDacuMaintip.vm -->  <div id="J-payMethod" class="main-container">
    <div id="J-rcPaymentDisabled"></div>

    <form name="expressFastPayFrom" id="lightPayForm" action="" method="post" autocomplete="off">
        <input type="hidden" name="_form_token" value="961cb821c0c59c729553ef34a5ed2e5103e0a547fd0f4b829fff9e6cf64fa015RZ12">
        <div id="J-rcChannels" data-url="data.html">
            <div class="row-extra fn-hide" data-reactid=".0.2.$0.$/=11"></div>
            <li  style="list-style-type:none;" class="channel-bank row-container fn-clear" data-reactid=".0.2.$1">
            <div class="row-basic fn-clear" data-reactid=".0.2.$1.$/=10"><label class="channel-label" for="ccb906-1" data-reactid=".0.2.$1.$/=10.0"><span class="pay-amount" data-reactid=".0.2.$1.$/=10.0.0"><span class="amount fn-hide" data-reactid=".0.2.$1.$/=10.0.0.0"><span data-reactid=".0.2.$1.$/=10.0.0.0.0"></span>
                <em class="amount-font-R16" data-reactid=".0.2.$1.$/=10.0.0.0.3"></em>
                <span data-reactid=".0.2.$1.$/=10.0.0.0.4"> 元</span></span></span>
                <span class="channel-tit channel-icon icon banklogo-CCB_s" data-id="CCB_s" data-reactid=".0.2.$1.$/=10.0.1"></span>
                <span class="channel-name" title="中国建设银行" data-reactid=".0.2.$1.$/=10.0.2">中国建设银行</span>
                <span class="card-number" data-reactid=".0.2.$1.$/=10.0.3">**5408</span><span class="card-type" data-reactid=".0.2.$1.$/=10.0.4">储蓄卡 | 快捷</span><span class="card-info" data-reactid=".0.2.$1.$/=10.0.5"><span type="strong" class="icon-strong icon-mr" data-reactid=".0.2.$1.$/=10.0.5.3">推荐</span></span></label><input class="channel-input" id="ccb906-1" name="apiCode" type="radio" data-reactid=".0.2.$1.$/=10.1" seed="rowBasic-ccb9061" smartracker="on"></div><div class="row-extra fn-hide" data-reactid=".0.2.$1.$/=11"></div></li>
            <li  style="list-style-type:none;" class="channel-bank row-container fn-clear" data-reactid=".0.2.$2"><div class="row-basic fn-clear" data-reactid=".0.2.$2.$/=10"><label class="channel-label" for="ccb906-2" data-reactid=".0.2.$2.$/=10.0"><span class="pay-amount" data-reactid=".0.2.$2.$/=10.0.0"><span class="amount fn-hide" data-reactid=".0.2.$2.$/=10.0.0.0"><span data-reactid=".0.2.$2.$/=10.0.0.0.0">支付</span><em class="amount-font-R16" data-reactid=".0.2.$2.$/=10.0.0.0.3">188.00</em><span data-reactid=".0.2.$2.$/=10.0.0.0.4"> 元</span></span></span><span class="channel-tit channel-icon icon banklogo-CCB_s" data-id="CCB_s" data-reactid=".0.2.$2.$/=10.0.1"></span><span class="channel-name" title="中国建设银行" data-reactid=".0.2.$2.$/=10.0.2">中国建设银行</span><span class="card-number" data-reactid=".0.2.$2.$/=10.0.3">**4379</span><span class="card-type" data-reactid=".0.2.$2.$/=10.0.4">储蓄卡 | 快捷</span><span class="card-info" data-reactid=".0.2.$2.$/=10.0.5"></span></label><input class="channel-input" id="ccb906-2" name="apiCode" type="radio" data-reactid=".0.2.$2.$/=10.1"></div><div class="row-extra fn-hide" data-reactid=".0.2.$2.$/=11"></div></li>
            <li style="list-style-type:none;" class="channel-bank row-container fn-clear" data-reactid=".0.2.$3"><div class="row-basic fn-clear" data-reactid=".0.2.$3.$/=10"><label class="channel-label" for="psbc907-3" data-reactid=".0.2.$3.$/=10.0"><span class="pay-amount" data-reactid=".0.2.$3.$/=10.0.0"><span class="amount fn-hide" data-reactid=".0.2.$3.$/=10.0.0.0"><span data-reactid=".0.2.$3.$/=10.0.0.0.0">支付</span><em class="amount-font-R16" data-reactid=".0.2.$3.$/=10.0.0.0.3">188.00</em><span data-reactid=".0.2.$3.$/=10.0.0.0.4"> 元</span></span></span><span class="channel-tit channel-icon icon banklogo-PSBC_s" data-id="PSBC_s" data-reactid=".0.2.$3.$/=10.0.1"></span><span class="channel-name" title="中国邮政储蓄银行" data-reactid=".0.2.$3.$/=10.0.2">中国邮政储蓄银行</span><span class="card-number" data-reactid=".0.2.$3.$/=10.0.3">**8996</span><span class="card-type" data-reactid=".0.2.$3.$/=10.0.4">储蓄卡 | 快捷</span><span class="card-info" data-reactid=".0.2.$3.$/=10.0.5"></span></label><input class="channel-input" id="psbc907-3" name="apiCode" type="radio" data-reactid=".0.2.$3.$/=10.1"></div><div class="row-extra fn-hide" data-reactid=".0.2.$3.$/=11"></div></li>
        </div>

        <div id="J-security" class="">
            <!-- Powered by Alipay Security --><input type="hidden" name="securityId" id="securityId" value="web|cashier_payment_3|ab6dfbc4-f807-45bc-9e3c-23b75c923822RZ12">
            <div class="ui-securitycore ui-securitycore-tip J-securitycoreTip " data-link-in-xbox="">
                <div class="ui-form-item ui-form-item-success">
                    <div class="ui-form-explain">安全设置检测成功！无需短信校验。</div>
                    <div class="J-checkResult fn-hide" data-status="">安全设置检测成功！无需短信校验。</div>
                </div>

            </div>
            <script type="text/javascript">
                (function () {
                    var alipay = window.alipay || (window.alipay = {});
                    var s = alipay.security = alipay.security || {};
                    s.downloadServer = "https://download.alipay.com" || alipay.security.downloadServer;
                    s.securityCenterServer = "https://securitycenter.alipay.com" || alipay.security.securityCenterServer;

                    s.hasBrowserControlPolicy = true;

                    s.certDataAccessPolicy = "";
                    s.controlCheckTimeout = Number("3000");
                    s.websocketPorts = "27382,45242";
                    s.newCertControlDownloadAddress = "https://securitycenter.alipay.com/sc/downloadCtr.htm?controlType=cert";
                    s.sid = "web|cashier_payment_3|ab6dfbc4-f807-45bc-9e3c-23b75c923822RZ12";
                })();
            </script>
            <script type="text/javascript" charset="utf-8" crossorigin="anonymous" src="https://a.alipayobjects.com/static/ar/??alipay.light.base-1.11.js,alipay.light.page-1.15-sizzle.js,alipay.security.base-1.8.js,alipay.security.utils.chromeExtension-1.1.js,alipay.security.edit-1.22.js,alipay.security.utils.pcClient-1.1.js,alipay.security.cert-1.5.js,alipay.security.otp-1.2.js,alipay.security.mobile-1.7.js,alipay.security.ctuMobile-1.2.js,alipay.security.riskMobileBank-1.3.js,alipay.security.riskMobileAccount-1.3.js,alipay.security.riskMobileCredit-1.2.js,alipay.security.riskCertificate-1.0.js,alipay.security.riskSecurityQa-1.0.js,alipay.security.riskExpressPrivacy-1.0.js,alipay.security.checkCode-1.1.js,alipay.security.rds-1.0.js,alipay.security.barcode-1.1.js,alipay.security.riskOneKeyConfirm-1.2.js,alipay.security.riskSudoku-1.0.js,alipay.security.riskOriginalAccountMobile-1.0.js,alipay.security.riskOriginalSecurityQa-1.0.js"></script>
            <script type="text/javascript" charset="utf-8" crossorigin="anonymous" src="https://as.alipayobjects.com/g/alipay-security-pc-3/??risk-tel/2.0.2/index.js,core2/3.0.2/index.js"></script>
            <script charset="utf-8" crossorigin="anonymous" src="https://a.alipayobjects.com/security-sdk/2.1.2/index.js"></script>
            <script>
                light.trackOn = false;
                light.has('page/products') || light.register('page/products');
                light.has('page/scProducts') || light.register('page/scProducts', light, []);
                alipay.security.utils.chromeExtension.setExtensionId('lapoiohkeidniicbalnfmakkbnpejgbi');
            </script>
            <!-- Powered by Alipay Security -->






            <div class="ui-securitycore J-securitycoreMain" data-request="web|cashier_payment_3|ab6dfbc4-f807-45bc-9e3c-23b75c923822RZ12" data-system="cashier" data-server="https://securitycore.alipay.com" data-status="" data-extension="false" data-orderid="1226090dea767dd94312013080051565">

                <input style="display:none" seed="JSecuritycoreMain-ipt" smartracker="on">
                <input type="password" style="display:none" seed="JSecuritycoreMain-iptT1" smartracker="on">



                <style type="text/css">
                    .edit-section .edit-link a {
                        line-height: 24px;
                    }
                </style>



                <div class="edit-section">
                    <div class="ui-form-item">
                        <label class="ui-label" for="payPassword">
                            支付宝支付密码：
                        </label>

                        <span class="standardPwdContainer" style="display:none">
                    <%--<input type="password" tabindex="1" id="payPassword_input" name="payPassword_input" class="ui-input" oncontextmenu="return false" onpaste="return false" oncopy="return false" oncut="return false" autocomplete="off" seed="standardPwdContainer-payPassword_input" smartracker="on">--%>
        </span>
                        <input class="alieditContainer" id="payPassword_container">
                            <input type="password" tabindex="1" id="payPassword_rsainput" name="payPassword_rsainput" class="ui-input i-text sixDigitPassword" oncontextmenu="return false" onpaste="return false" oncopy="return false" oncut="return false" autocomplete="off" value="" maxlength="6" minlength="6" style="outline: none; margin-left: -999px;">
                            <%--<div class="sixDigitPassword" tabindex="0" style="width: 180px;"><i class="" style="width: 29px; border-color: transparent;">--%>
                                <%--<b style="visibility: hidden;"></b></i><i style="width: 29px;">--%>
                                <%--<b style="visibility: hidden;"></b></i><i style="width: 29px;">--%>
                                <%--<b style="visibility: hidden;"></b></i><i style="width: 29px;">--%>
                                <%--<b style="visibility: hidden;"></b></i><i style="width: 29px;">--%>
                                <%--<b style="visibility: hidden;"></b></i><i style="width: 29px;">--%>
                                <%--<b style="visibility: hidden;"></b></i><span style="width: 29px; visibility: hidden; left: 0px;"></span>--%>
                            <%--</div>--%>

                        </span>


                        <span class="ui-form-other edit-link">
                            <a target="_blank" href="#" seed="sc_edit_forgetPwd">忘记密码？</a>        </span>

                        <div class="ui-form-explain">
                            <p id="J_edit_prompt_default" class="">
                                <!-- CMS:安全核心/安全服务化收银台/未安装控件开始:securitycore/cashier/editPrompt.vm -->

                                请输入6位数字支付密码
                            </p>

                            <p id="J_edit_prompt_noEdit" class="fn-hide">
                                <!-- CMS:安全核心/安全服务化收银台/默认的密码控件下方的提示信息开始:securitycore/cashier/editPromptNoEdit.vm -->
                                密码控件无法安装？可使用 <a href="javascript:void(0)" class="J-cross-to-mobile" seed="cross-to-mobile-in-cert-tip">穿越到手机上付款</a>

                            </p>
                        </div>

                        <div>
                        <input type="hidden" name="J_aliedit_using" value="true">
                        <input type="hidden" id="payPassword" name="payPassword" value="">
                        <input type="hidden" name="J_aliedit_key_hidn" value="payPassword">

                        <input type="hidden" name="J_aliedit_uid_hidn" value="alieditUid">
                        <input type="hidden" id="alieditUid" name="alieditUid" value="b539bc16959b14c61f832a9896ceb9d0">

                        <input type="hidden" name="REMOTE_PCID_NAME" value="_seaside_gogo_pcid">
                        <input type="hidden" name="_seaside_gogo_pcid" value="">
                        <input type="hidden" name="_seaside_gogo_" value="">
                        <input type="hidden" name="_seaside_gogo_p" value="">

                        <input type="hidden" name="J_aliedit_prod_type" value="payment_password">

                        <input type="hidden" name="security_activeX_enabled" value="false">

                        <input type="hidden" name="J_aliedit_net_info" value="">

                        <input type="hidden" id="edit_infor" value="" render="R">
                        </div>
                </div>


                <style type="text/css">
                    input.sixDigitPassword {
                        position: absolute;
                        color: #fff;
                        opacity: 0;
                        width: 1px;
                        height: 1px;
                        font-size: 1px;
                        left: 0;
                        -webkit-box-sizing: content-box;
                        box-sizing: content-box;
                        -webkit-user-select:initial; /* 取消禁用选择页面元素 */
                        outline: 'none';
                        margin-left: '-9999px';
                    }

                    div.sixDigitPassword {
                        cursor:text;
                        background: #fff;
                        outline: none;
                        position: relative;
                        padding: 8px 0;
                        height: 14px;
                        border: 1px solid #cccccc;
                        border-radius: 2px;
                    }

                    div.sixDigitPassword i {
                        float: left;
                        display: block;
                        padding: 4px 0;
                        height: 7px;
                        border-left: 1px solid #cccccc;
                    }

                    div.sixDigitPassword i.active {
                        background-image: url("https://t.alipayobjects.com/images/rmsweb/T1nYJhXalXXXXXXXXX.gif");
                        background-repeat: no-repeat;
                        background-position: center center;
                    }

                    div.sixDigitPassword b {
                        display: block;
                        margin: 0 auto;
                        width: 7px;
                        height: 7px;
                        overflow: hidden;
                        visibility:hidden;
                        background-image: url("https://t.alipayobjects.com/tfscom/T1sl0fXcBnXXXXXXXX.png");
                    }

                    div.sixDigitPassword span {
                        position: absolute;
                        display: block;
                        left: 0px;
                        top: -1px;
                        height: 30px;
                        border: 1px solid rgba(82, 168, 236, .8);
                        border: 1px solid #00ffff\9;
                        border-radius: 2px;
                        visibility: hidden;
                        -webkit-box-shadow: inset 0px 2px 2px rgba(0, 0, 0, 0.75), 0 0 8px rgba(82, 168, 236, 0.6);
                        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
                    }

                    .ui-securitycore .ui-form-item-loading .ui-form-explain{
                        background: url(https://t.alipayobjects.com/tfscom/T1hBFfXnRnXXXXXXXX.gif) 0 4px no-repeat !important;
                    }
                    .ui-securitycore .ui-form-item-error .ui-form-explain, .ui-securitycore .ui-form-item-warn .ui-form-explain, .ui-securitycore .ui-form-item-success .ui-form-explain, .ui-securitycore .ui-form-item-success .ui-form-text, .ui-securitycore-tip .ui-form-explain{
                        background-image: url( https://t.alipayobjects.com/tfscom/T1dmlfXc0dXXXXXXXX.png) !important;
                    }
                    .ui-securitycore .ui-form-item .ui-form-explain{
                        margin-top: 8px;
                    }

                </style>


            </div>
      </div>

        <div id="J-rcSubmit"><div class="ui-fm-item ui-fm-action j-submit" data-reactid=".1"><input class="ui-button ui-button-lblue" id="J_authSubmit" type="submit" value="确认付款" data-reactid=".1.1" seed="jSubmit-J_authSubmit" smartracker="on" ><span class="ui-fm-status fn-hide" data-reactid=".1.2"> 正在提交中... </span></div></div>
    </form>


<div id="footer">
    <!-- FD:231:alipay/foot/copyright.vm:START --><!-- FD:231:alipay/foot/copyright.vm:2604:foot/copyright.schema:支付宝copyright:START -->
    <style>
        .copyright,.copyright a,.copyright a:hover{color:#808080;}
    </style>
    <div class="copyright">
        <a href="https://fun.alipay.com/certificate/jyxkz.htm" target="_blank" seed="copyright-link" smartracker="on">ICP证：沪B2-20150087</a>
    </div>
    <div class="server" id="ServerNum">
        cashier-30-28050 &nbsp;
    </div>
    <!-- FD:231:alipay/foot/copyright.vm:2604:foot/copyright.schema:支付宝copyright:END --><!-- FD:231:alipay/foot/copyright.vm:END -->  <noscript><img src="//kcart.alipay.com/web/bi.do?ref=https%3A%2F%2Fcashier.alipay.com%2F&pg=https%3A%2F%2Fcashier.alipay.com%2F%3Fseed%3Dsyslog-cashier%255Einfo%255Ejavascript.not.enabled&v=0.9.2&BIProfile=clk" alt="" width="1" height="1" /></noscript>
</div>

<div id="partner">
    <img src="https://zos.alipayobjects.com/rmsportal/IASErdnJnLbiMvSoxkaQ.png" seed="partner-zosRmsportalIASErdnJnLbiMvSoxkaQ" smartracker="on">
</div>


<!-- FD:alipay-foot:alipay/foot/cliveService.vm:START --><!-- FD:alipay-foot:alipay/foot/cliveService.vm:cliveService.schema:START -->
<div style="display:none">onlineServer</div>

<!-- FD:alipay-foot:alipay/foot/cliveService.vm:cliveService.schema:END -->

<!-- FD:alipay-foot:alipay/foot/cliveService.vm:END --><!-- FD:231:alipay/foot/onlineServiceNew.vm:2603:foot/onlineServiceNew.schema:onlineServiceNew-___新___在线客服第1块配置:END --><!-- FD:231:alipay/foot/onlineServiceNew.vm:END -->


<!-- uitpl:/component/tracker.vm -->
<!-- FD:106:alipay/tracker/tracker.vm:START --><!-- FD:106:alipay/tracker/tracker.vm:785:tracker.schema:全站自动化/性能/敏感信息打点开关:START -->

</body>
</html>
