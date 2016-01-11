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
	#panel li{display:block;float:left;width:100px;height:100px;
			overflow:hidden;position:relative;text-align:center;}
	#panel li span{display:block;position:relative;left:0;top:60px;
			width:100px;height:40px;background:url(img/hole.gif) 0 -60px;z-index:100;}
	#panel table{list-style:none;display:block;float:left;margin:0;padding:0;}
	#panel td{display:block;float:left;width:100px;height:100px;
			overflow:hidden;position:relative;text-align:center;}
	#panel td span{display:block;position:relative;left:0;top:60px;
			width:100px;height:40px;background:url(img/hole.gif) 0 -60px;z-index:100;}
	.progress{width: 300px; height: 16px; background-color: #CCC; position: relative;}
    .progress .ibar {width: 300px; height: 16px; background-color: #9370DB; position: absolute;}
    .progress .num{position: absolute;}
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
<div class="container">
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
<div onselectstart="return false;">分数：<span id="score">0</span></div>
<div onselectstart="return false;">倒计时：<span id="time">60</span></div>
<input type="button" value="开始" onclick="GameStart();" />
</div>
<script type="text/javascript">try{document.execCommand("BackgroundImageCache",false,true);}catch(e){}</script>
<script src="BeatMouse.js" type="text/javascript"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
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
		var hammer = new Hammer(document.getElementById(i));
		hammer.ontap = function(ev) { 
			alert("click");
			hit(i);
		};
	}
	
});
	/*锁死界面选择复制功能*/
	$(document).bind("contextmenu",function(){return false;});

	$(document).bind("selectstart",function(){return false;});
	/*锁死界面选择复制功能*/
</script>
</body>
</html>