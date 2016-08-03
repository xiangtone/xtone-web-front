<%@page import="com.lyxm.info.Message"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="org.mxkl.util.HttpsRequest"%>
<%@page import="org.mxkl.util.CheckLoad"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%

String phone = null;
try{
phone = (String)session.getAttribute("id");}catch(Exception ex){
	ex.printStackTrace(); 
}
String userCode = "";
String code = request.getParameter("code");
HttpsRequest req = new HttpsRequest();
String resours = (String)req.sendGet("https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx26d9b9ff5f0fc4ed&secret=8b1de189eefa9c0d78c1a847122eaf38&code="+code+"&grant_type=authorization_code");
//	System.out.println(resours);
//	System.out.println(1010);
Gson gson = new Gson();
Message msg = gson.fromJson(resours, Message.class);
String openid = msg.getOpenid();
session.setAttribute("openid",openid);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-9">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="Welcome to the wedding website for Sarah and Brad's Big Day!">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />

<link rel="apple-touch-icon-precomposed" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-60.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="76x76" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-76.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="120x120" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-120.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="152x152" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-152.png?1451359882">
<link rel="shortcut icon" href="logo.icon">

<link rel="stylesheet" href="css/main.css">
<script src="js2/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<title>灵域仙魔</title>
<style type="text/css">
	body{
	width: 100%; 
	height: 100%; 
	background-image: url(images/index/tiaozhuan.jpg); 
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
		<div class="logo">
        	<div class="logo-a">
        		<img  src="images/index/logo.png">
        	</div>	      	
        </div>
        <div class="share">
        	<p ><strong class="font-d">恭喜您</strong></p>
        	<p ><strong class="font-d">已成功预约《灵域仙魔》</strong></p>	
        </div>
        <div class="share1">
	        	<div class="share2">
	        		<strong class="font-d">您de邀请码是:</strong><strong id="cde" style="color:red;font-size:12px;"><%=phone %></strong>
	        	</div>
	        	<div class="share3">
	        		<img  src="images/index/tishi.png">
	        	</div>
	        	<p class="share4"><strong class="font-d">将邀请码发给好友，或分享当前页面，即可获取宝箱！</strong></p>
	        </div>
        <div class="box-ax">
        	<div class="box-ax1">
        		<img  src="images/index/gaoji.png">
        	</div>
        	<div class="box-ax2">
        		<img  src="images/index/haohua.png">
        	</div>
        	<div class="box-ax3">
        		<img  src="images/index/zhizun.png">
        	</div>
        </div>
        <div class="pro">
        	<div class="pro-1">
        		<img  src="images/index/fenxiang.png">
        	</div>
        </div>
</body>
</html>