<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="./data/style.css">
<meta name="viewport" content="width=device-width, target-densitydpi=160dpi, initial-scale=1.0, maximum-scale=1, user-scalable=no, minimal-ui"/>
<meta name="viewport" content="width=device-width, initial-scale=1" /> 
<!-- 为移动设备添加 viewport -->
<meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no">
<title>打地鼠</title>
<style>
	#panel{height:300px;width:300px;background:#ccc;-margin:50px 0 0 200px;}
	#panel ul{list-style:none;display:block;float:left;margin:0;padding:0;}
	#panel ul:hover {cursor: url('img/chuizi.png'),auto;//此处图片路径要依据自己的路径来修改}
	#panel li:hover {cursor: url('img/chuizi.png'),auto;//此处图片路径要依据自己的路径来修改}
	#panel li{display:block;float:left;width:100px;height:100px;
			overflow:hidden;position:relative;text-align:center;}
	#panel li span{display:block;position:relative;left:0;top:60px;
			width:100px;height:40px;background:url(img/hole.png) no-repeat center 0;z-index:100;}
	.progress{width: 300px; height: 16px; background-color: #CCC; position: relative;}
    .progress .ibar {width: 300px; height: 16px; background-color: #9370DB; position: absolute;}
    .progress .num{position: absolute;}
    .add {display: none;color: #B80000;font-size: 16px;font-family: Arial,Helvetica,sans-serif;font-weight: bold;position: absolute;bottom: 0px;left: 4px;}
    /*锁死界面选择复制功能*/
    body{
		-moz-user-select: none; /*火狐*/
		-webkit-user-select: none; /*webkit浏览器*/
		-ms-user-select: none; /*IE10*/
		-khtml-user-select: none; /*早期浏览器*/
		user-select: none;
	}
	/*锁死界面选择复制功能*/
</style>

</head>
<!-- 锁死界面选择复制功能 -->
<body oncontextmenu="return false" onselectstart="return false" >
<div class="container" >
<span id="text">说明：红色的点击得分100，蓝色的点击扣分100.</span>
<div class="progress">
            <div class="ibar" id="ibar"></div>
            <div class="num" id="num" onselectstart="return false;">0</div>
</div>
<div class="game-container">
<div id="panel">
	<ul>
		<li id="0" ><span></span></li>
		<li id="1" ><span></span></li>
		<li id="2" ><span></span></li>
		<li id="3" ><span></span></li>
		<li id="4" ><span></span></li>
		<li id="5" ><span></span></li>
		<li id="6" ><span></span></li>
		<li id="7" ><span></span></li>
		<li id="8" ><span></span></li>
	</ul> 
</div>
</div>
<div onselectstart="return false;">分数：<span id="score">0</span>
	<span id="add" class="add" style="bottom: 40px;display: none;">+1</span>
</div>
<div onselectstart="return false;">倒计时：<span id="time">45</span></div>
<input type="button" value="再来一次" onclick="GameStart();" /> 
</div>
<script type="text/javascript">try{document.execCommand("BackgroundImageCache",false,true);}catch(e){}</script>
<script src="BeatMouse.js" type="text/javascript"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="http://cdn.bootcss.com/hammer.js/1.0.0/jquery.hammer.min.js"></script>
<script src="hammer.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	
	$('body').on('touchmove', function (event) {
	    event.preventDefault();
	});
	/*锁死界面选择复制功能*/
	$(document).bind("contextmenu",function(){return false;});

	$(document).bind("selectstart",function(){return false;});
	
	$("span").bind("copy cut paste",function(e){
        return false;
    });
	/*锁死界面选择复制功能*/
	for(var i=0;i<9;i++){
		toush(i);
	}
	GameStart();
});

function toush(id){
	var hammer = new Hammer(document.getElementById(id));
	hammer.on("tap", function (e) {
		hit(id);
	});
}
	/*锁死界面选择复制功能*/
	$(document).bind("contextmenu",function(){return false;});

	$(document).bind("selectstart",function(){return false;});
	/*锁死界面选择复制功能*/
</script>
<!-- 实验利用js来限定页面布局，限定区域为1020至320 -->
<script type="text/javascript">
$(function(){
	//获取当前的设备屏幕的宽度
	var phoneWidth =  parseInt(window.screen.width);
	if(phoneWidth>320&&phoneWidth<1020){
		//alert(phoneWidth);
		//
		$("html").css("font-size","15px");
		$("body"),css({"font-size": "15px","margin": "20px 0px","padding": "0 20px"});
		$("h1 .title").css({"font-size": "27px","margin-top": "15px"});
		$(".container").css({"width": "280px","margin": "0 auto"});
		$(".score-container, .best-container").css({"margin-top": "0","padding": "15px 10px",'min-width': '40px'});
		$(".heading").css({'margin-bottom': '10px'});
		$(".game-intro").css({'width': '55%','display': 'block','box-sizing': 'border-box','line-height': '1.65'});
		$(".restart-button").css({'width': '42%','padding': '0' ,'display': 'block','box-sizing': 'border-box','margin-to': '2px'});
		$(".game-container").css({'margin-top': '17px','position': 'relative','-padding': '10px','cursor': 'default','-webkit-touch-callout': 'none','-ms-touch-callout': 'none','-webkit-user-select': 'none','-moz-user-select': 'none','-ms-user-select': 'none','-ms-touch-action': 'none','touch-action': 'none','background': '#bbada0','border-radius': '6px','width': '280px','height': '280px','-webkit-box-sizing': 'border-box','-moz-box-sizing': 'border-box','box-sizing': 'border-box'});
		$(".game-message").css({'display': 'none','position': 'absolute','top': '0','right': '0','bottom': '0','left': '0','background': 'rgba(238, 228, 218, 0.73)','z-index': '100','padding-top': '40px','text-align': 'center','-webkit-animation': 'fade-in 800ms ease 1200ms','-moz-animation': 'fade-in 800ms ease 1200ms','animation': 'fade-in 800ms ease 1200ms','-webkit-animation-fill-mode': 'both','-moz-animation-fill-mode': 'both','animation-fill-mode': 'both'});
		$(".game-message p").css({'font-size': '60px','font-weight': 'bold','height': '60px','line-height': '60px','margin-top': '222px'});
		$(".game-message .lower").css({'display': 'block','margin-top': '29px'});
		$(".game-message .mailing-list").css({'margin-top': '52px'});
		$(".game-message .mailing-list strong").css({'display': 'block','margin-bottom': '10px'});
		$(".game-message .mailing-list .mailing-list-email-field").css({'width': '230px','margin-right': '5px'});
		$(".game-message a").css({'display': 'inline-block','background': '#8f7a66','border-radius': '3px','padding': '0 20px','text-decoration': 'none','color': '#f9f6f2','height': '40px','line-height': '42px','cursor': 'pointer','margin-left': '9px'});
		$(".game-message a.keep-playing-button").css({'display': 'none'});
		$(".game-message .score-sharing").css({'display': 'inline-block','vertical-align': 'middle','margin-left': '10px'});
		$(".game-message.game-won").css({'background': 'rgba(237, 194, 46, 0.5)','color': '#f9f6f2'});
		$(".game-message.game-won a.keep-playing-button").css({'display': 'inline-block'});
		$(".game-message.game-won, .game-message.game-over").css({'display': 'block'});
		$(".game-message.game-won p, .game-message.game-over p").css({'-webkit-animation': 'slide-up 1.5s ease-in-out 2500ms','-moz-animation': 'slide-up 1.5s ease-in-out 2500ms','animation': 'slide-up 1.5s ease-in-out 2500ms','-webkit-animation-fill-mode': 'both','-moz-animation-fill-mode': 'both','animation-fill-mode': 'both'});
		$(".game-message.game-won .mailing-list, .game-message.game-over .mailing-list").css({'-webkit-animation': 'fade-in 1.5s ease-in-out 2500ms','-moz-animation': 'fade-in 1.5s ease-in-out 2500ms','animation': 'fade-in 1.5s ease-in-out 2500ms','-webkit-animation-fill-mode': 'both','-moz-animation-fill-mode': 'both','animation-fill-mode': 'both'});
		$(".grid-container").css({'position': 'absolute','z-index': '1'});
		$(".grid-row").css({'margin-bottom': '10px'});
		$(".grid-row:last-child").css({'margin-bottom': '0'});
		$(".grid-row:after").css({'content': "",'display': 'block','clear': 'both'});
		$(".grid-cell").css({'width': '57.5px','height': '57.5px','margin-right': '10px','float': 'left','border-radius': '3px','background': 'rgba(238, 228, 218, 0.35)'});
		$(".grid-cell:last-child").css({'margin-right': '0'});
		$(".tile-container").css({'position': 'absolute','z-index': '2'});
	}
});
</script>
<!-- 
作者：王崇悟
来源：知乎
 -->
<!--移动端版本兼容
<script type="text/javascript">
         var phoneWidth =  parseInt(window.screen.width);
         var phoneScale = phoneWidth/640;
         var ua = navigator.userAgent;
         if (/Android (\d+\.\d+)/.test(ua)){
                   var version = parseFloat(RegExp.$1);
                   if(version>2.3){
                            document.write('<meta name="viewport" content="width=640, minimum-scale = '+phoneScale+', maximum-scale = '+phoneScale+', target-densitydpi=device-dpi">');
                   }else{
                            document.write('<meta name="viewport" content="width=640, target-densitydpi=device-dpi">');
                   }
         } else {
                   document.write('<meta name="viewport" content="width=640, user-scalable=no, target-densitydpi=device-dpi">');
         }
</script>
<!--移动端版本兼容 end -->
</body>
</html>