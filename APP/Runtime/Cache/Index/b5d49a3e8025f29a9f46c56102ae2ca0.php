<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>

<html class="pixel-ratio-3 retina android android-5 android-5-0 watch-active-state"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <title>智能机器人</title>

    <link rel="stylesheet" href="/Public/dianyun/css/framework7.ios.min.css">
    <link rel="stylesheet" href="/Public/dianyun/css/app.css">
    <link rel="stylesheet" href="/Public/dianyun/css/iconfont.css">


</head>
<body onLoad="onload()" class="framework7-root">
<div class="panel-overlay"></div>
<div class="panel panel-left panel-reveal layout-dark">
</div>

<div class="views">
    <div class="view view-main">
        <div class="pages">
            <link rel="stylesheet" href="/Public/dianyun/css/chat.css">
            <link rel="stylesheet" href="/Public/dianyun/css/robot.css">

            <div class="page toolbar-fixed">
                <div class="page-content">



                    <div class="clearfix">
                        <div class="swiper-container swiper-1 swiper-container-horizontal swiper-container-android" style="height: 155px;"><div class="swiper-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>
                            <div class="swiper-wrapper" style="transform: translate3d(-1230px, 0px, 0px); transition-duration: 0ms;">
                                <div class="swiper-slide" style="width: 360px; margin-right: 50px;"><a href="" class="external">
                                    <img src="/Public/Uploads/20181117/3.jpg" style="width:100%; height:100%;">
                                </a></div>
                                <div class="swiper-slide" style="width: 360px; margin-right: 50px;"><a href="" class="external">
                                    <img src="/Public/Uploads/20181117/3.jpg" style="width:100%; height:100%;">
                                </a></div>
                                <div class="swiper-slide swiper-slide-prev" style="width: 360px; margin-right: 50px;"><a href="" class="external">
                                    <img src="/Public/Uploads/20181117/3.jpg" style="width:100%; height:100%;">
                                </a></div>

                                <div class="swiper-slide swiper-slide-active" style="width: 360px; margin-right: 50px;"><a href="" class="external">
                                    <img src="/Public/Uploads/20181117/3.jpg" style="width:100%; height:100%;">
                                </a></div>
                            </div>
                        </div>
                    </div>

                    <div class="space-10 bg-gray"></div>
                    <table cellpadding="0" cellspacing="0" border="0" style="border: none;width:100%;">
                        <tbody><tr>
                            <td style="width:49%; vertical-align: top;">
                                <div class="row machine-stat">
                                    <div class="col-50">
                                        <div style="height: 80px; text-align: right; margin: 20px 0px 4px 15px;">
                                            <img src="/Public/dianyun/img/robot-1.png" style="width:auto; height: 64px;">
                                        </div>
                                    </div>
                                    <div class="col-50">
                                        <p><label id="lblMachineCount"><?php echo ($count); ?></label>&nbsp;台</p>
                                        <p>智能机器人</p>
                                    </div>
                                </div>
                                <div class="center">
                                    <a href="<?php echo U('Robot/pcontent');?>" class="external" id="soonBuy">
                                        <img src="/Public/dianyun/img/button-buy.png" style="height:30px; width:auto;">
                                    </a>
                                </div>
                            </td>
                            <td style="width:2%; border-right: solid 1px #a5a5a5; width:1px; height:150px;">&nbsp;
                            </td>
                            <td style="width:49%; vertical-align: top;">
                                <div class="row machine-stat">
                                    <div class="col-50">
                                        <div style="height: 80px; margin: 20px 20px 4px 15px;">
                                            <img src="/Public/dianyun/img/robot-2.png" style="width:auto; height: 64px;">
                                        </div>
                                    </div>
                                    <div class="col-50">
                                        <p><label id="lblLiuLiang"><?php if($count == 0): ?>0<?php else: echo ($minfo["logincount"]); endif; ?></label>&nbsp;次</p>
                                        <p>流量数</p>
                                    </div>
                                </div>
                                <div class="center">
                                    <a href="<?php echo U('Robot/robot');?>" class="external">
                                        <img src="/Public/dianyun/img/button-view.png" style="height:30px; width:auto;">
                                    </a>
                                </div>
                            </td>
                        </tr>
                        </tbody></table>

                    <div class="getworkspanel">
                        <div class="row">
                            <div class="col-70">
                                <div class="center bold" style="margin-top:4px;">收益宝智能机器人</div>
                            </div>
                            <div class="col-30">
                                <a href="<?php echo U('Robot/robot');?>" class="external button button-fill bg-orange">领取收益
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="space-20"></div>

                    <div class="rel">
                        <div style="position: absolute; top:10px;left:10%; right:20px; min-height:100px;z-index:100;">
                            <div class="chat-message">

                                <div class="send">
                                    <div class="msg">
                                        <p onClick="doSpeak(this)"><i class="msg_input"></i><?php if($count == 0): ?>您还没有购买智能机器人!<?php else: ?>您已有智能机器人了，记得每天来领取收益哦!<?php endif; ?></p>
                                    </div>
                                </div></div>
                        </div>

                    </div>

                </div>




                <div class="toolbar tabbar tabbar-labels">
                    <div class="toolbar-inner">
            <a href="<?php echo U('Index/New/index');?>" class="tab-link external active">
                <img src="/Public/images/h1-1.png">
                <span class="tabbar-label">首页</span>
            </a>
            <a href="<?php echo U('Index/Index/tgm');?>" class="tab-link external">
                <img src="/Public/images/h2.png">
                <span class="tabbar-label">推荐好友</span>
            </a>
			<a href="<?php echo U('Index/Msg/addmsg');?>" class="tab-link external">
				<img src="/Public/images/h3.png">
				<span class="tabbar-label">客服</span>
			</a>
            <a href="/appweb.html" class="tab-link external">
                <img src="/Public/images/h4.png">
                <span class="tabbar-label">下载APP</span>
            </a>
            <a href="<?php echo U('Index/Wallet/index');?>" class="tab-link external">
                <img src="/Public/images/h5-1.png">
                <span class="tabbar-label">我的</span>
            </a>
                    </div>
                </div>


            </div>

        </div>
    </div>
</div>

</body></html>