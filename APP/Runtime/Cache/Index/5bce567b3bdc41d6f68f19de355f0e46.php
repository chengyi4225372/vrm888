<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>

<html class="pixel-ratio-3 retina android android-5 android-5-0 watch-active-state"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <title>首页</title>

    <link rel="stylesheet" href="/Public/dianyun/css/framework7.ios.min.css">
    <link rel="stylesheet" href="/Public/dianyun/css/app.css">
    <link rel="stylesheet" href="/Public/dianyun/css/iconfont.css">
    <link rel="stylesheet" href="/Public/css/style.css">
    <script type="text/javascript" src="/Public/js/TouchSlide.1.1.js"></script>

</head>
<style type="text/css">
	
	.container {
		    /* position: relative; */
		   /* background: url(/Public/images/wbg1.jpg) no-repeat;*/
		        background-size: auto;
		    background-size: 100% 100%;
		    -moz-background-size: 100% 100%;
		    -webkit-background-size: 100% 100%;
		    padding: 0px;
	}
	.wenzi{
	color:#000000;
	font-size:12px;
	font-weight:400;
	}
	.row .col-333{
	border-right:1px solid #999999;}

</style>
<body class="framework7-root">
    <div class="panel-overlay"></div>
	<div class="panel panel-left panel-reveal layout-dark">	    </div>
<div class="page toolbar-fixed container">
			<div class="page-content">
				<div id="slideBox" class="slideBox">
					<div class="bd">
						<ul>
							<?php if(is_array($banner)): foreach($banner as $key=>$vo): ?><li>
								<a class="pic" href="<?php echo ($vo['href']); ?>"><img src="<?php echo ($vo['path']); ?>" style="height:300 px;"/></a>
							</li><?php endforeach; endif; ?>
						</ul>
					</div>
					<div class="hd">
						<ul></ul>
					</div>
				</div>

				<div>
					<div class="noticepanel">
					<img src="/Public/dianyun/img/notice.png" class="titleicon">
					<marquee scrolldelay="50" id="lstNotice" onMouseOver="this.stop()" onMouseOut="this.start()"><ul><li><a class="white  external" href="<?php echo U('New/gonggao');?>"><?php echo ($gonggao); ?></a>&nbsp;&nbsp;</li></ul></marquee>
					</div>
				</div>

<!--				<div>-->
        
<!--					<div class="upgradepanel">-->
<!--						<img src="/Public/dianyun/img/ad-01.jpg" style="width:auto; height:100%;">-->
<!--						<div class="upgradebutton">-->
<!--							<a href="<?php echo U('Index/Wallet/index');?>" class="external">-->
<!--								<img src="/Public/dianyun/img/login.gif" style="width:120px; height:auto;">-->
<!--							</a>-->
<!--						</div>-->
<!--					</div>-->
        
<!--				</div>-->

					<div class="content-block" style="margin: 10px 0px;">
							<table width="100%" border="0" align="center">
  <tr>
    <td><div align="center"><a href="<?php echo U('Index/index/order');?>"><img src="/Public/images/5.png" width="50" height="50"></a></div></td>
    <td><div align="center"><a href="<?php echo U('Wallet/onlinerecharge');?>"><img src="/Public/images/2.png" width="50" height="50"></a></div></td>
    <td><div align="center"><a href="/appweb.html"><img src="/Public/images/3.png" width="50" height="50"></a></div></td>
    <td><div align="center"><a href="<?php echo U('Robot/robot');?>"><img src="/Public/images/4.png" width="50" height="50"></a></div></td>
    <td><div align="center"><a href="<?php echo U('Index/Index/kf.html');?>"><img src="/Public/images/1.png" width="50" height="50"></a></div></td>
  </tr>
  <tr>
    <td><div align="center" class="wenzi">下单</div></td>
    <td><div align="center" class="wenzi">在线充值</div></td>
    <td><div align="center" class="wenzi">下载APP</div></td>
    <td><div align="center" class="wenzi">买机器人</div></td>
    <td><div align="center" class="wenzi">我的客服</div></td>
  </tr>
</table>
					</div>

					<!--<div class="space-10 bg-gray"></div> -->

					<div class="area-10">
						<div class="row">
							<div class="col-100 center">
								<!-- <img src="/Public/dianyun/img/icon-a0.png" style="width:50%; height: auto;"> -->
							</div>
						</div>
						<?php if($status == 1): ?><div class="row">
							<div class="col-33 col-333 index-stats">
								<label><?php echo ($shouyi); ?>元</label>
							<p>总收益</p>
						</div>
						<div class="col-33 col-333 index-stats">
								<label><?php echo ($tuiguang); ?>元</label>
							<p>推广收益</p>
						</div>
						<div class="col-33 index-stats">
								<label><?php echo ($liuliang); ?>元</label>
							<p>流量收益</p>
						</div>
						
					</div><?php endif; ?>
					<div class="space-10 bg-gray"></div>
						<div class="row">
							<div class="col-100 center">
									<a href="<?php echo U('Index/Robot/pcontent');?>" style="opacity: 0.9;" class="external button-fill button button-large bg-blue submitbtn ">
									<!-- <img src="/Public/dianyun/img/icon-a1.png" style="width:80%; height: auto;"> -->
									<span style="color:#fff;font-size:20px;font-weight: bold;">购 买 智 能 机 器 人</span>
								</a>
							</div>
						</div>
					</div>

					<div class="space-10 bg-gray"></div>

						<div class="area-20 buyer-history">
							<h3><i class="icon iconfont icon-yonghuming"></i> 最近购买用户</h3>
								<marquee scrolldelay="200" id="lstBuyHistory" direction="up" onMouseOver="this.stop()" onMouseOut="this.start()" style="height: 60px;">
								<ul id="ulBuyHistory">
									<?php if(is_array($mai_log)): foreach($mai_log as $key=>$v): ?><li>[<?php echo (mb_substr($v["addtime"],5,11,'utf-8')); ?>]&nbsp;&nbsp;<?php echo (yc_phone($v["user"])); ?>购买了机器人</li><?php endforeach; endif; ?>
									<li>[12-16 22:48]&nbsp;&nbsp;131****8355购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;170****6210购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;135****6794购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;186****1318购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;132****9405购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;187****8228购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;136****1367购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;138****0779购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;158****6469购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;159****6411购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;134****2726购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;135****6315购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;185****2114购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;138****7146购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;135****7627购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;138****6459购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;136****6036购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;136****5482购买了机器人</li>
									<li>[12-16 22:48]&nbsp;&nbsp;138****8311购买了机器人</li>
								</ul>
							</marquee>
						</div>


	</div>
	
    <div class="toolbar tabbar tabbar-labels">
        <div class="toolbar-inner">
            <a href="<?php echo U('Index/New/index');?>" class="tab-link external active">
                <img src="/Public/images/h1.png">
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
                <img src="/Public/images/h5.png">
                <span class="tabbar-label">我的</span>
            </a>
        </div>
    </div>
</div>
    <script type="text/javascript">
      TouchSlide({
        slideCell:"#slideBox",
        titCell:"#slideBox .hd ul",
        mainCell:"#slideBox .bd ul",
        effect:"leftLoop",
        autoPage:true,
        autoPlay:true,
        interTime:3000

      });
    </script>

</body>
</html>