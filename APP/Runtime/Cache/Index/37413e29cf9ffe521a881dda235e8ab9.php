<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>

<html class="pixel-ratio-3 retina android android-5 android-5-0 watch-active-state"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <title>个人中心</title>

    <link rel="stylesheet" href="/Public/dianyun/css/framework7.ios.min.css">
    <link rel="stylesheet" href="/Public/dianyun/css/app.css">
    <link rel="stylesheet" href="/Public/dianyun/css/iconfont.css">
    <script src="/Public/dianyun/shouye/jquery.min.js"></script>
	<style>
	.person_quit[data-v-4baa2241] {
	width:90%;
    color: #fff;
    font-size: .37333rem;
    margin: .53333rem auto;
    width: 18.82667rem;
    height: 1.56667rem;
    border-radius: .53333rem;
    line-height: 1.56667rem;
    background: #ff6509;
    text-align: center;
}
	</style>

  </head>
  <body  class="framework7-root">
    <div class="panel-overlay"></div>
	<div class="panel panel-left panel-reveal layout-dark">	    
	</div>
	
    <div class="views">
      <div class="view view-main" data-page="myinfo">
        <div class="pages">
          <div data-page="myinfo" class="page navbar-fixed toolbar-fixed" isinited="true">
    <div class="navbar navbar-myinfo">
        <div class="navbar-inner">
            <div class="left"></div>
            <div class="center" style="left: 0px;">个人中心</div>
            <div class="right"></div>
        </div>
    </div>

    <div class="page-content">
        <div class="row">
            <div class="col-30 right" style="padding-top: 15px;">
                <a href="javascript:memberInfoModify();" class="external">
                    <img src="/Public/dianyun/img/nohe.png" class="avatar">
                </a>
            </div>
            <div class="col-70">
                <p>
                    <a href="javascript:memberInfoModify();" class="external" style="font-size:20px;"><?php echo ($minfo["truename"]); ?></a>
                </p>
                <p><i class="icon iconfont icon-mobile2"></i> 手机号：<?php echo ($minfo["mobile"]); ?></p>
                <p><i class="icon iconfont icon-qrcode"></i> 会员ID：<?php echo ($minfo["id"]); ?>&nbsp;&nbsp;&nbsp;&nbsp;级别:<?php if($minfo['level'] == 0): ?>普通会员<?php else: ?>金牌代理<?php endif; ?></p>
            </div>
        </div>

        <div class="space-10 bg-gray"></div>

        <div class="row mysubpanelinfo">
            <div class="col-33"><p class="mvalue total-num"><?php echo ($count); ?></p><p class="mtitle">机器人</p></div>

            <div class="col-33"><p class="mvalue total-num"><?php echo ($minfo["money"]); ?></p><p class="mtitle">可提现</p></div>

            <div class="col-33"><p id="myMembersCount" class="mvalue mine-num"><?php echo ($minfo["money2"]); ?></p><p class="mtitle">可用余额</p></div>
        </div>

        <div class="space-10 bg-gray"></div>


        <div class="space-10 bg-gray"></div>

        <table width="98%" border="0" align="center">
          <tr>
            <td><div align="center"><img src="/Public/dianyun/img/1.png" width="50" height="50"> </div></td>
            <td><div align="center"><img src="/Public/dianyun/img/2.png" width="50" height="50"></div></td>
            <td><div align="center"><img src="/Public/dianyun/img/3.png" width="50" height="50"></div></td>
            <td><div align="center"><img src="/Public/dianyun/img/4.png" width="50" height="50"></div></td>
          </tr>
          <tr>
            <td><div align="center" onclick="show('<?php echo U('Index/Index/personal');?>')">账户资料</div></td>
            <td><div align="center">帮助中心</div></td>
            <td><div align="center">我的伙伴</div></td>
            <td><div align="center" onclick="show('<?php echo U('Index/Index/tgm');?>');">推荐好友</div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="/Public/dianyun/img/5.png" width="50" height="50"></div></td>
            <td><div align="center"><img src="/Public/dianyun/img/6.png" width="50" height="50"></div></td>
            <td><div align="center"><img src="/Public/dianyun/img/7.png" width="50" height="50"></div></td>
            <td><div align="center"><img src="/Public/dianyun/img/8.png" width="50" height="50"></div></td>
          </tr>
          <tr>
            <td><div align="center">充值中心</div></td>
            <td><div align="center">充值记录</div></td>
            <td><div align="center">我的收益</div></td>
            <td><div align="center">余额明细</div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="/Public/dianyun/img/9.png" width="50" height="50"></div></td>
            <td><div align="center"><img src="/Public/dianyun/img/10.png" width="50" height="50"></div></td>
            <td><div align="center"><img src="/Public/dianyun/img/11.png" width="50" height="50"></div></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><div align="center">关于我们</div></td>
            <td><div align="center">我的订单</div></td>
            <td><div align="center">我的助手</div></td>
            <td><div align="center"></div></td>
          </tr>
        </table>
        <div class="area-10 center">
            <a href="<?php echo U('Index/Index/logout');?>" onClick="if(confirm('确认退出当前账号吗？')==false)return false;"class="external submitbtn">
      <div data-v-4baa2241="" class="person_quit">
      退出登陆
    </div>
            </a>
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
    </div> o
  

</body>
<script>
    function show(obj){
        window.location.href= obj;
    }
</script>
</html>