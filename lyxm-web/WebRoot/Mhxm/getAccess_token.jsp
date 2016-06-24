<%@page import="org.mxkl.dao.MhxmCodeDao"%>
<%@page import="org.mxkl.dao.QqxzCodeDAO"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="org.mxkl.dao.CodeDAO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="org.mxkl.info.Message"%>
<%@page import="org.mxkl.util.HttpsRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	    /*CheckLoad check = new CheckLoad();
		if(!check.JudgeIsMoblie(request)){
			response.sendRedirect("http://www.baidu.com");
		}*/
		String code = request.getParameter("code");
		//System.out.println("code: "+code);
		HttpsRequest req = new HttpsRequest();
		String resours = (String)req.sendGet("https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx26d9b9ff5f0fc4ed&secret=8b1de189eefa9c0d78c1a847122eaf38&code="+code+"&grant_type=authorization_code");
		Gson gson = new Gson();
		Message msg = gson.fromJson(resours, Message.class);
		String openid = msg.getOpenid();
		String userCode = "";
		MhxmCodeDao dao = new MhxmCodeDao();
		
		String codeForOpenId = dao.checkOpenId(openid);
		
		if(codeForOpenId!=null){
			userCode = codeForOpenId+"";
		}else{
			String CodeNumber = dao.checkGameId();
			if(CodeNumber!=null){
				Date date = new Date();
				long time = date.getTime();
				if(dao.updateOpenIdForId(CodeNumber, openid,time)>0){
					userCode = CodeNumber+" ";
				}else{
					userCode = "服务器繁忙，请稍后重试！";
				}
				
			}else{
				userCode = "兑换码已发放完！";
			} 
		}
    %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=640;target-densitydpi=device-dpi;minimum-scale=0.5;maximum-scale=2.0,user-scalable=yes">
    <title>礼包兑换码 </title>
<meta name="keywords" content="大礼包,官方,梦想昆仑">
<meta name="description" content="梦想昆仑">
<!-- 为移动设备添加 viewport -->
<meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no">  
<link rel="stylesheet" type="text/css" href="../js-css/code/skm.css">
<link rel="stylesheet" href="../js-css/code/idangerous.css">
<link rel="stylesheet" href="../js-css/code/style_wap.css">
<link rel="stylesheet" href="../js-css/code/swiper-demos.css">
<script src="../js-css/code/jquery-1.js"></script>
<!-- Swiper -->
<script src="../js-css/code/idangerous.js"></script>
<!-- Demos code -->
<script src="../js-css/code/swiper-demos.js"></script>
<script src="../js-css/code/main.js"></script>
<link href="../js-css/code/dialog.css" rel="stylesheet">
<script src="../js-css/code/dialog.js"></script>
<script src="../js-css/code/lrtk.js"></script></head><body style="background: rgb(245,245,245);width: 100%;">

<!-- Demos code -->


<div id="wrap" style="width: 100%;">
<section>
<div class="content" style="width: 100%;">
  <div class="news_detail_title" style="margin: 0px 5px -2px 5px;"> 
  	<img alt="" src="js-css/code/qqxz-icon.png" style="width: 65px; height: 65px;margin: 10px 8px 0px 15px;float: left;">
  	<div style="float: left; margin-top: 15px;margin-left: 10px;">
  		<p style="font-size: 15px;" align="left">《梦幻仙魔》</p>
  		<p style="font-size: 15px;" align="left">微信无敌宝藏大礼包</p>
  		<p style="font-size: 15px;color: rgb(164, 164, 170);" align="left">结束时间：永久</p>
  	</div>
  	<br style="clear: both;" />
  </div>
  <p class="news_detail_time" style="font-size: 11px;">　</p>
  <div style="width: 90%; height: 38px; margin: auto; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border-radius: 5px;">
  	 <p align="center" style="font-size: 17px; padding-top: 9px; color: rgb(255, 82, 37);"><input value="<%=userCode %>" type="text" readOnly="true" style="text-align: center;color:rgb(255, 82, 37);font-size: 17px;border-style:none; " /></p>
  </div>
  <p class="news_detail_time" style="font-size: 15px;margin-top: 10px;">
  <!-- <br style="clear: both;" /> -->
  <p align="center" style="font-size: 13px;color: rgb(164, 164, 165);">长按复制</p>
  <!-- <p class="news_detail_time" style="font-size: 20px;">　</p> -->
  <div class="w"> <div style="color: rgb(51, 102, 255); line-height: 16px;width: 95%">
 <div>&nbsp;</div> 
 <div style="line-height: 9px">&nbsp;</div> 
<div style="background: rgb(241, 241, 247) none repeat scroll 0% 0%; width: 105%; height: 37px;border:1px solid rgb(164, 164, 166)"><span style="color: rgb(164, 164, 176); padding-top: 9px;"><span style="font-family: 微软雅黑;"><span style="font-size: 16px; display: block; padding-top: 9px; padding-left: 21px;">礼包内容</span></span></span></div>
<div>&nbsp;</div>
<div style="margin-left: 20px"><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 14px;">银币*1000</span></span></span></div><div style="line-height: 0px">&nbsp;</div>
<div style="margin-left: 20px"><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 14px;">坐骑进阶丹*5</span></span></span></div><div style="line-height: 0px">&nbsp;</div>
<div style="margin-left: 20px"><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 14px;">藏宝图*1</span></span></span></div><div style="line-height: 0px">&nbsp;</div>
<!-- <div style="margin-left: 20px"><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 14px;">5W铜币</span></span></span></div><div style="line-height: 0px">&nbsp;</div> -->
<!-- <div style="margin-left: 20px"><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 14px;">20个秘宝商店刷新令牌</span></span></span></div> -->
<div>&nbsp;</div>
<div style="background: rgb(241, 241, 247) none repeat scroll 0% 0%; width: 105%; height: 37px;border:1px solid rgb(164, 164, 166)"><span style="color: rgb(164, 164, 176); padding-top: 9px;"><span style="font-family: 微软雅黑;"><span style="font-size: 16px; display: block; padding-top: 9px; padding-left: 21px;">使用说明</span></span></span></div>
<div>&nbsp;</div>
<div style="margin-left: 20px"><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 14px;">1、</span></span></span><span style="color: rgb(0, 0, 0);line-height: 0px;"><span style="font-family: 微软雅黑;"><span style="font-size: 14px;word-break:normal; ">在游戏主城界面点击活动按钮，进入活动界面后在礼包码一栏输入礼包码点击确定即可领取&nbsp;</span></span></span></div><div>&nbsp;</div>

<div style="margin-left: 20px;line-height: 0px;"><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 14px;">2、</span></span></span><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 14px;">一个微信号只能领取一次礼包码&nbsp;</span></span></span></div>
<div>&nbsp;</div>
<div>&nbsp;</div>



<script>
	var hqg = hqg || {};
	hqg.booking = function (obj){
		$(obj).parent().next().slideToggle();	
	}
</script>
<div style="display: none; z-index: 502; position: fixed;" id="dialog_game_gift" class="dialog"><div class="content">
  <div style="width:450px;">
    <div style=" height:42px ; background:#a30b05; padding:5px; padding-top:10px; padding-right:10px;"> <img id="dialog_game_gift_btn_close" onclick="dialog_gift.hide();" class="close" src="%E3%80%8A%E8%8A%B1%E5%8D%83%E9%AA%A8%E3%80%8B%E5%AE%98%E6%96%B9%E5%A4%A7%E7%A4%BC%E5%8C%85%20-_files/btn_dialog_close.jpg" style="float:right; cursor:pointer;"> </div>
    <div style="background:#ff7570; padding:10px;">
      <div id="dialog_game_gift_content_detail">
        <div id="getgift_info"> </div>
      </div>
    </div>
  </div>
</div></div><div style="left: 0px; top: 0px; width: 100%; height: 1633px; z-index: 501; position: absolute; display: none;" id="dialog_game_gift-overlay" class="dialog-overlay"></div></body></html>