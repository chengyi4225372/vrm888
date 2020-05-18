<?php if (!defined('THINK_PATH')) exit();?>﻿<!doctype html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="wap-font-scale" content="no">
    <link rel="stylesheet" href="/Public/dianyun/css/framework7.ios.min.css">
    <link rel="stylesheet" href="/Public/dianyun/css/app.css">
    <link rel="stylesheet" href="/Public/dianyun/css/iconfont.css">
	<style>
	.wrapper{
	min-height:auto;
	}
	</style>
</head>

  <body onload="onload()" class="framework7-root">
    <div class="panel-overlay"></div>
	<div class="panel panel-left panel-reveal layout-dark">	    
	</div>
	
    <div class="views">
      <div class="view view-main" data-page="login">
        <div class="pages">
          ﻿<style>
    .loginNav a {display: inline-block; font-size:16px; padding-bottom: 4px;}
    .loginNav a.active {font-size: 20px; border-bottom: solid 3px #fff;}
</style>
<div class="page">
    <div class="page-content">
        <div style="min-height:80px;"></div>
        <div class="center" style="height:80px;">
            <img src="/Public/dianyun/img/logo_b.png" style="width:auto;height:36px;">
        </div>
        <div class="row">
            <div class="col-100 center loginNav">
                <a href="javascript:;" class="active">登录</a>
                <a style="width:60px"></a>
                <a href="<?php echo U('Index/Login/reg');?>" class="external">注册</a>
            </div>
        </div>
        <div style="height: 40px">&nbsp;</div>
        <div class="row">
            <div class="col-10"></div>
            <div class="col-80">
                <form name="form" method="post" id="form" >
                    <div class="input-container">
                        <div class="input-control">
                            <i class="icon iconfont icon-yonghuming"></i>
                            <input class="inputfield" type="text" id="txtUid" name="username" placeholder="会员ID或手机号码" maxlength="11"  value="">
                        </div>
                    </div>
                    <div class="input-container">
                        <div class="input-control">
                            <i class="icon iconfont icon-mima"></i>
                            <input class="inputfield" type="password" id="password" name="password" placeholder="登录密码" value="">
                        </div>
                    </div>

                    <div class="row loginfield">
                        <div class="col-50">
                            <div class="left">
                                <a href="/appweb.html" class="external">APP下载</a>&nbsp;&nbsp;
                            </div>
                        </div>
                        <div class="col-50">
                            <div class="right">
                                <a href="<?php echo U('Index/Login/editpwd');?>" class="external">忘记密码?</a>&nbsp;&nbsp;
                            </div>
                        </div>
                    </div>

                    <div class="center">
                        <div class="space-20"></div>
                        <a href="javascript:tryLogin();" class="btn_submit_my">
                            <img src="/Public/dianyun/img/button-login.png" style="height:60px; width:auto; max-width: 100%;">
                        </a>
                    </div>
                </form>
            </div>
            <div class="col-10"></div>

        </div>
    </div>

    <div style="position: absolute; left:0px; top:0px; width:100%; height: 38px;z-index:10;">
        <div style="padding: 10px;">
            <a href="javascript:history.go(-1);" class="external"><i class="icon iconfont icon-angleleft"></i>返回</a>
        </div>
    </div>
</div>

<script src="/Public/js/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
	$(".btn_submit_my").click(function(){
			$.ajax({
				url:'<?php echo U("Index/Login/index");?>',
				type:'POST',
				data:$("#form").serialize(),
				dataType:'json',
				success:function(json){
						alert(json.info);
						if(json.result ==1){
							window.location.href=json.url;
						}
				},
				error:function(){
						alert("网络故障");
				}
			})

	})


</script>

<script type="text/javascript" src="https://js.users.51.la/19447899.js"></script>

	</body>
</html>