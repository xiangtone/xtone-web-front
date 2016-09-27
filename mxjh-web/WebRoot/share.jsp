<%@page import="com.mxjh.wechat.Wechat"%>
<%@page import="com.mxjh2.info.Message"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.mxjh.util.CheckLoad"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String phone = null;
try{
phone = (String)session.getAttribute("id");}catch(Exception ex){
	ex.printStackTrace(); 
}
String ticket = Wechat.getTicketFromloc();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<div id="ticket" style="display:none;"><%=ticket %></div>
<meta http-equiv="Content-Type" content="text/html; charset=utf-9">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="Welcome to the wedding website for Sarah and Brad's Big Day!">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />

<link rel="apple-touch-icon-precomposed" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-60.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="76x76" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-76.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="120x120" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-120.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="152x152" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-152.png?1451359882">
<link rel="shortcut icon" href="logo.ico" type="image/x-icon"/>

<link rel="stylesheet" href="cssforpc/main.css">

<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="js/sha1.js"></script>
<script type="text/javascript">
var plc = '<<梦想江湖>> ';
var strAry =[plc+' 我已经预约梦想江湖了，兄弟快来与我一起战斗吧！',plc+' 预约梦想江湖，用你的洪荒之力助我一战！',plc+' 我已预约梦想江湖，I want you，加入我的仙盟吧！',plc+' 这波不亏，我已预约梦想江湖，不明真相的观众请点我！',plc+' 陪我玩梦想江湖吧，点一下又不会怀孕！'];
var index = Math.floor(Math.random()*5);

 var href = window.location.href
  var ticket = document.getElementById('ticket').innerText;  
  var timestamp = new Date().getTime();
  var str = 'jsapi_ticket='+ticket+'&noncestr=Wm3WZYTPz0wzccnW&timestamp='+timestamp+'&url=http://mxjh.xtonegame.com/share.jsp';
  var signature = hex_sha1(str);


wx.config({
    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
    appId: 'wx26d9b9ff5f0fc4ed', // 必填，公众号的唯一标识
    timestamp: timestamp, // 必填，生成签名的时间戳
    nonceStr: 'Wm3WZYTPz0wzccnW', // 必填，生成签名的随机串
    signature: signature,// 必填，签名，见附录1
    jsApiList: ['onMenuShareTimeline','onMenuShareAppMessage','onMenuShareQQ','onMenuShareQZone'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
});

wx.ready(function(){
	wx.onMenuShareTimeline({
	    title: strAry[index], // 分享标题
	    link: 'http://mxjh.xtonegame.com/mobile.jsp', // 分享链接
	    imgUrl: 'http://mxjh.xtonegame.com/images/300x300.png', // 分享图标
	    success: function () { 
	        // 用户确认分享后执行的回调函数
	    },
	    cancel: function () { 
	    	index = Math.floor(Math.random()*5);
	        this.title = strAry[index];
	    }
	});


	wx.onMenuShareAppMessage({
	    title: '梦想江湖', // 分享标题
	    link: 'http://mxjh.xtonegame.com/mobile.jsp', // 分享链接
	    desc: strAry[index], 
	    imgUrl: 'http://mxjh.xtonegame.com/images/300x300.png', // 分享图标
	    type: '', // 分享类型,music、video或link，不填默认为link
	    dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
	    success: function () { 
	        // 用户确认分享后执行的回调函数
	    },
	    cancel: function () { 
	    	index = Math.floor(Math.random()*5);
	        this.desc = strAry[index];
	    }
	});
	wx.onMenuShareQQ({
	    title: '梦想江湖', // 分享标题
	    desc:strAry[index], // 分享描述
	    link: 'http://mxjh.xtonegame.com/mobile.jsp', // 分享链接
	    imgUrl: 'http://mxjh.xtonegame.com/images/300x300.png', // 分享图标
	    success: function () { 
	       // 用户确认分享后执行的回调函数
	    },
	    cancel: function () { 
	    	index = Math.floor(Math.random()*5);
	        this.desc = strAry[index];
	    }
	});

	wx.onMenuShareQZone({
	    title: '梦想江湖', // 分享标题
	    desc: strAry[index], // 分享描述
	    link: 'http://mxjh.xtonegame.com/mobile.jsp', // 分享链接
	    imgUrl: 'http://mxjh.xtonegame.com/images/300x300.png', // 分享图标
	    success: function () { 
	       // 用户确认分享后执行的回调函数
	    },
	    cancel: function () { 
	        // 用户取消分享后执行的回调函数
	    	index = Math.floor(Math.random()*5);
	        this.desc = strAry[index];
	    }
	});
    // config信息验证后会执行ready方法，所有接口调用都必须在config接口获得结果之后，config是一个客户端的异步操作，所以如果需要在页面加载时就调用相关接口，则须把相关接口放在ready函数中调用来确保正确执行。对于用户触发时才调用的接口，则可以直接调用，不需要放在ready函数中。
});

wx.error(function(res){
    alert('失败,请检查token或者ticket是否失效')
    // config信息验证失败会执行error函数，如签名过期导致验证失败，具体错误信息可以打开config的debug模式查看，也可以在返回的res参数中查看，对于SPA可以在这里更新签名。

});





</script>
<title>梦想江湖</title>
<style type="text/css">
	body{
	width: 100%; 
	height: auto; 
	background-image: url(imgqhyy/tiaozhuan.jpg); 
	background-repeat: no-repeat; 
	background-position: center 0;
	background-color: transparent; 
	background-size: 100%; 
	position: absolute;
	margin:0;
	}
</style>
</head>
<body>
<div id="dianji" style="width:80%;height:80%;position:absolute;z-index:10000;display:none;">
<img style="width:30%;margin-left:60%;margin-top:2%;" src="mobileimg\jiantou.png"></img>
<div style="text-align:center;margin-top:50px;font-family:'微软雅黑';color:#ffffff;font-size:20px;font-weight: light;">
点击右上角分享</br></br>邀请兄弟与您一起共战梦想江湖

</div>
<a href="javascript:showDialog.hide();"><img style="width:30%;margin-left:35%;margin-top:15%;" src="mobileimg/guanbi.png"></img></a>
</div>

		<div class="logo">
        	<div class="logo-a">
        		<img  src="imgqhyy/logo.png">
        	</div>	      	
        </div>
        <div class="share">
        	<p ><strong class="font-d">恭喜您</strong></p>
        	<p ><strong class="font-d">已成功预约《梦想江湖》</strong></p>	
        </div>
        <div class="share1">
	        	<div class="share2">
	        		<strong class="font-d">您的邀请码是&nbsp;:</strong>&nbsp;<strong id="cde" style="color:#ff4e00;font-size:12px;"><%=phone %></strong>
	        	</div>
	        	<div class="share3">
	        		<img  src="imgqhyy/tishi.png">
	        	</div>
	        	<p class="share4"><strong class="font-d">将邀请码发给好友，或分享当前页面，好友注册成功，即可获取宝箱！</strong></p>
	        </div>
        <div class="box-ax">
        	<div class="box-ax1">
        		<img  src="imgqhyy/bxgj.png">
        	</div>
        	<div class="box-ax2">
        		<img  src="imgqhyy/bxhh.png">
        	</div>
        	<div class="box-ax3">
        		<img  src="imgqhyy/bxzz.png">
        	</div>
        </div>
        <div class="pro">
        	<div class="pro-1">
        		<img id="fenxiang" src="imgqhyy/fenxiang.png">
        	</div>
        </div>
<script src="js/jquery-1.js"></script>
<script src="js/ZeroClipboard.js"></script>
<script src="js/milo.js"></script>
<script type="text/javascript" src="js/reporting.js"></script>
<script src="js/loadjs.js"></script>
<script src="js/report.js"></script>
<script src="js/swfobject.js"></script>
<script type="text/javascript" src="js/dr.js"> </script>
<script>
$("#fenxiang").on('click', function(){  
	TGDialogS("dianji");
});
function TGDialogS(e){
    need("biz.dialog-min",function(Dialog){
Dialog.show({
	id:e,
	bgcolor:'#000', //弹出“遮罩”的颜色，格式为"#FF6600"，可修改，默认为"#fff"
	opacity:50      //弹出“遮罩”的透明度，格式为｛10-100｝，可选
});
    });
    
}
function closeDialog(){
    need("biz.dialog-min",function(Dialog){
Dialog.hide();
    });
}
</script>


</body>
</html>