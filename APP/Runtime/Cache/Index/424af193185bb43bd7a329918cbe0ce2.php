<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>

<html class="pixel-ratio-3 retina android android-5 android-5-0 watch-active-state"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <title>下单</title>

    <link rel="stylesheet" href="/Public/dianyun/css/framework7.ios.min.css">
    <link rel="stylesheet" href="/Public/dianyun/css/app.css">
    <link rel="stylesheet" href="/Public/dianyun/css/iconfont.css">
    <link rel="stylesheet" href="/Public/dianyun/css/orderselect.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

    <script type="text/javascript" src="/Public/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/Public/dianyun/shouye/select.jquery.js"></script>
    <script type="text/javascript" src="/Public/js/layer/layer.js"></script>

</head>
<body  class="framework7-root">
<div class="panel-overlay"></div>
<div class="panel panel-left panel-reveal layout-dark">
</div>

<div class="views">
    <div class="view view-main">
        <div class="pages">
            <div class="page navbar-fixed">
                <div class="navbar theme-white">
                    <div class="navbar-inner">
                        <div class="left">
                            <a href="javascript:history.go(-1);" class="external link"> <i class="icon iconfont icon-angleleft"></i>返回</a>
                        </div>
                        <div class="center" style="left: -24px;color: #fff;">下单</div>
                        <div class="right"></div>
                    </div>
                </div>

                <div class="page-content">
                    <div class="content-block">
                        <div>

                            <div style='width:100%'>
                                <select class="multiselect" id="category" placeholder="请选择">
                                </select>
                            </div>
                            <div>
                                <select class="multiselect"  id="goods">
                                </select>
                            </div>

                            <div class="works">
                                <span class="span1">商品价格</span>
                                <span class="span2" id="price">0.00</span>
                            </div>

                            <div class="works">
                                <span class="span1">下单份数</span>

                                <input class="inputadd" type="submit" value="+" onclick="countadd()">
                                <span class="countSpan" id="count">1</span>
                                <input class="inputsub" type="submit" value="-" onclick="countsub()">
                            </div>

                            <div class="works">
                                <span class="span1" >作品链接</span>
                                <label>
                                    <input class="traninput" id="url" type="text" name="url"  value="" placeholder="请填写链接"/>
                                </label>
                            </div>

                            <div class="works">
                                <span class="span1">备注</span>
                                <label>
                                    <input class="traninput" type="text" id="mark" name="mark"  value="" placeholder="请填写备注"/>
                                </label>
                            </div>

                            <div>
                                <button class="balanceButton">余额(￥<span id="balance" style="color: white"><?php echo ($minfo["money"]); ?></span>)</button>
                            </div>
                            <div>

                                <button class="orderbutton" onclick="order()">立即下单</button>
                            </div>
                            <div class="foter">
                                <p style="margin-bottom: 10px">注意</p>
                                <p>1.一个任务没完成请勿重复下单</p>
                                <p>2.请一定填写正确的作品链接</p>
                                <p>3.商品分多钟价格，实惠的是由Ai助手大规模完成，只能的则拥有独
                                    立IP(能提高您的上热门概率)，智能浏览的将在您的视频内停留去
                                    浏览完成任务 (上热门概率大大提高)
                                </p>

                            </div>
                    </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>



<script>
    //初始化
    categoryList = [
        {
            id: 1,
            icon: "",
            title: '抖音',
            goods: [{
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, {
                title: '抖音1',
                price: 100
            }, ]
        }, {
            id: 2,
            icon: '',
            title: '快手',
            goods: [{title:'快手1',price:200}, {title:'快手1',price:200}, {title:'快手1',price:200}, {title:'快手1',price:200}, {title:'快手1',price:200}, {title:'快手1',price:200}, ]
        }, {
            id: 3,
            icon: '',
            title: '全民K歌',
            goods: [{title:'全民1',price:300}, {title:'全民1',price:300}, {title:'全民1',price:300}, {title:'全民1',price:300}, {title:'全民1',price:300}, ]
        }, {
            id: 4,
            icon: '',
            title: '淘宝',
            goods: [{title:'淘宝1',price:400}, {title:'淘宝1',price:400}, {title:'淘宝1',price:400}, {title:'淘宝1',price:400}, {title:'淘宝1',price:400}, {title:'淘宝1',price:400}, {title:'淘宝1',price:400}, {title:'淘宝1',price:400}, {title:'淘宝1',price:400}, {title:'淘宝1',price:400}, ]
        }, {
            id: 5,
            icon: '',
            title: '微信',
            goods: [{title:'微信1',price:500}, {title:'微信1',price:500}, {title:'微信1',price:500}, {title:'微信1',price:500}, {title:'微信1',price:500}, {title:'微信1',price:500}, {title:'微信1',price:500}, ]
        }, {
            id: 6,
            icon: '',
            title: '京东',
            goods: [{title:'京东1',price:345}, {title:'京东1',price:345}, {title:'京东1',price:345}, {title:'京东1',price:345}, {title:'京东1',price:345}, {title:'京东1',price:345}, {title:'京东1',price:345}, ]
        }, {
            id: 7,
            icon: '',
            title: '小红书',
            goods: [{title:'小红书1',price:430}, {title:'小红书1',price:430}, {title:'小红书1',price:430}, {title:'小红书1',price:430}, {title:'小红书1',price:430}, {title:'小红书1',price:430}, {title:'小红书1',price:430}, ]
        }, {
            id: 8,
            icon: '',
            title: '今日头条',
            goods: [{title:'今日头条1',price:510}, {title:'今日头条1',price:510}, {title:'今日头条1',price:510}]
        }, {
            id: 9,
            icon: '',
            title: '新浪微博',
            goods: [{title:'新浪微博1',price:780}, {title:'新浪微博1',price:780}, {title:'新浪微博1',price:780}, {title:'新浪微博1',price:780}, {title:'新浪微博1',price:780}, {title:'新浪微博1',price:780}, ]
        }
    ];
    let selectCategory,selectGoods;

    let category = $('#category');
    let goods = $('#goods');
    let price = $(".priceSpan");
    console.log(category);
    for(var i =0 ;i < categoryList.length;i++){
        category.append('<option value=' + categoryList[i].id + ' icon="' + categoryList[i].icon + '">' + categoryList[i].title + '</option>');
    }
    goods.multiselect({
        multiple:false,
        leftTitle:'商品',
        setWidth:'60%'
    });
    category.multiselect({
        multiple:false,
        leftTitle: '分类',
        setWidth:'60%',
        change:function (rescategory) {
            selectCategory = rescategory;
            goodsList = categoryList[$(rescategory).index()].goods;
            console.log(goodsList);
            goods.empty();
            for(var i =0 ;i <goodsList.length;i++){
                goods.append('<option value=' + goodsList[i].price +'>' + goodsList[i].title + '</option>');
                goods.multiselect({
                    multiple:false,
                    leftTitle:'商品',
                    setWidth:'60%',
                    change:function (resgoods) {
                        selectGoods = resgoods;
                        $('#price').text($(resgoods).val());
                    }
                });
            }
        }
    });


function order() {
    //id
    var userid = '<?php echo ($minfo["id"]); ?>';
    var user = '<?php echo ($minfo["name"]); ?>';
    var userphone = '<?php echo ($minfo["mobile"]); ?>';
    var count = Number($("#count").text());
    var price = Number($("#price").text());
    var url = $("#url").val();
    var mark = $("#mark").val();
    if (!selectGoods || !selectGoods) {
        layer.msg('<span class="layerSpan">请选择分类和商品</span>',{icon: 7});
    }
    if (count*price > <?php echo ($minfo["money"]); ?>)
    {
        if (!selectGoods || !selectGoods) {
            layer.msg('<span class="layerSpan">余额不足请充值</span>',{icon: 7});
        }
    }
    if (url.trim() === '') {
        layer.msg('<span class="layerSpan">请填写链接!</span>',{icon: 7});
    }
    var category = categoryList[$(selectCategory).index()];
    var good = category.goods[$(selectGoods).index()];
    $.ajax({
        url:'<?php echo U("Index/index/buy");?>',
        type:'POST',
        data:{
            user:user,user_id:userid,category:category.title,goods:good.title,url:url,price:price,count:count,mark:mark
        },
        dataType:'json',
        success:function (data) {
            console.log(data);
            if (data.code === 1)
            {
                layer.msg('<span class="layerSpan">下单成功!!</span>',{icon: 1});
            } else {
                layer.msg('<span class="layerSpan">' + data.msg + '</span>',{icon: 7});
            }
        },
        error:function(){
            alert("网络故障");
        }
    })
}

function countadd() {
    document.getElementById('count').innerHTML++;
}

function countsub(){
    var countspan = document.getElementById('count');
    var count = countspan.innerHTML;
    if (count < 2)
    {
        countspan.innerHTML=1;
    } else {
        countspan.innerHTML--;
    }
}

</script>
</body>
</html>