<%@page import="org.common.util.ConnectionService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
  <script type="text/javascript">
    function browserRedirect() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
        if ((bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) ){
            window.location.href="mobile/index.jsp";
        }
    }
    browserRedirect();
	</script> 
	<script language="javascript">
 var scrollFunc=function(e){ 
  e=e || window.event; 
  if(e.wheelDelta && event.ctrlKey){//IE/Opera/Chrome 
   event.returnValue=false;
  }else if(e.detail){//Firefox 
   event.returnValue=false; 
  } 
 }  
 
 /*注册事件*/ 
 if(document.addEventListener){ 
 document.addEventListener('DOMMouseScroll',scrollFunc,false); 
 }//W3C 
 window.onmousewheel=document.onmousewheel=scrollFunc;//IE/Opera/Chrome/Safari 

</script>
    <meta charset="UTF-8">
<!--This is Git Project From LXF/lxf-gw-20160315-->
    <title>梦想江湖</title>
	<meta name="from" content="">
	<meta name="author" content="">
     <meta http-equiv="X-UA-Compatible" content="IE=8">
	<meta name="copyright" content="">
	<meta name="editor" content="leleli">
	<meta name="designer" content="gzyiying">
	<meta name="front-end technicist" content="limengshi">
	<meta name="pmid" content="15869">
   <meta name="renderer" content="webkit|ie-comp|ie-stand"> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"  content="width=device-width, initial-scale=0.8, maximum-scale=1.0, user-scalable=no;"/>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="renderer" content="webkit">
  
<script src="jsforpc/jquery-1.js"></script>
<link rel="stylesheet" type="text/css" href="jsforpc/fullPage/jquery.fullPage.css"/>
<link rel="stylesheet" type="text/css" href="cssforpc/index.css"/>
<link rel="stylesheet" type="text/css" href="cssforpc/footer.css"/>
<link rel="stylesheet" type="text/css" href="cssforpc/share.v5.css"/>
<link rel="shortcut icon" href="logo.ico" type="image/x-icon" />
<script type="text/javascript" charset="gbk" src="jsforpc/fullPage/jquery.fullPage.js"></script>
<script type="text/javascript" charset="gbk" src="jsforpc/fullPage/jquery.fullPage.min.js"></script>




<script language="javascript">
 var scrollFunc=function(e){ 
  e=e || window.event; 
  if(e.wheelDelta && event.ctrlKey){//IE/Opera/Chrome 
   event.returnValue=false;
  }else if(e.detail){//Firefox 
   event.returnValue=false; 
  } 
 }  
 
 /*注册事件*/ 
 if(document.addEventListener){ 
 document.addEventListener('DOMMouseScroll',scrollFunc,false); 
 }//W3C 
 window.onmousewheel=document.onmousewheel=scrollFunc;//IE/Opera/Chrome/Safari 
  
</script>



<script type="text/javascript">
			
              width_screen=document.documentElement.clientWidth;
              height_screen=document.documentElement.clientHeight;
</script>
</head>
<body>
	 <script type="text/javascript">
	 var event=event||window.event;
	 var sx=event.offsetX || event.layerX;                       
	 var sy=event.offsetY || event.layerY;
      function moveFunc(event){
	   var event=event||window.event;
	   event.x=event.x||event.pageX;
	   event.y=event.y||event.pageY;
	   /* if(sx==event.x&&sy==event.y){              
		  }else if(sx==event.x&&event.y-sy>30){		 
			  $(".section .leaf").css("transform","translate3d(37.2333px,19px,0px)")  
		  } else if(sx==event.x&&sy-event.y>30){		 
			  $(".section .leaf").css("transform","translate3d(37.2333px,10px,0px)")  
		  }else if(sx-event.x>30&&sy==event.y){		 
			  $(".section .leaf").css("transform","translate3d(30.2333px,14.5px,0px)")  
		  }else if(sx-event.x>30&&event.y-sy>30){		 
			  $(".section .leaf").css("transform","translate3d(30.2333px,19px,0px)")  
		  }else if(sx-event.x>30&&sy-event.y>30){		 
			  $(".section .leaf").css("transform","translate3d(30.2333px,10px,0px)")  
		  }else if(event.x-sx>30&&sy==event.y){
			  $(".section .leaf").css("transform","translate3d(44.2333px,14.5px,0px)")  		   
		  }	else if(event.x-sx>30&&event.y-sy>30){
			  $(".section .leaf").css("transform","translate3d(44.2333px,19px,0px)")  	   
		  }	else if(event.x-sx>30&&sy-event.y>30){
			  $(".section .leaf").css("transform","translate3d(44.2333px,10px,0px)")  	   
		  } */		  
	   if(sx==event.x&&sy==event.y){              
		  }else if(sx==event.x&&sy<event.y){		 
			  $(".section .leaf").css("transform","translate3d(37.2333px,19px,0px)")  
		  } else if(sx==event.x&&sy>event.y){		 
			  $(".section .leaf").css("transform","translate3d(37.2333px,10px,0px)")  
		  }else if(sx>event.x&&sy==event.y){		 
			  $(".section .leaf").css("transform","translate3d(30.2333px,14.5px,0px)")  
		  }else if(sx>event.x&&sy<event.y){		 
			  $(".section .leaf").css("transform","translate3d(30.2333px,19px,0px)")  
		  }else if(sx>event.x&&sy>event.y){		 
			  $(".section .leaf").css("transform","translate3d(30.2333px,10px,0px)")  
		  }else if(sx<event.x&&sy==event.y){
			  $(".section .leaf").css("transform","translate3d(44.2333px,14.5px,0px)")  		   
		  }	else if(sx<event.x&&sy<event.y){
			  $(".section .leaf").css("transform","translate3d(44.2333px,19px,0px)")  	   
		  }	else if(sx<event.x&&sy>event.y){
			  $(".section .leaf").css("transform","translate3d(44.2333px,10px,0px)")  	   
		  }		  
		  sx=event.x;
		  sy=event.y ;  
   }
    </script>
   

    <div id="fullpage" class="wrap">
    
    <div id="nie-download-com" class="nie-download nie-download-com" onclick="javascript:void(0)" data-download="lxf|gw">
        <div class="NIE-qrcode"><img src="img/wxewm01.png"></div>
         <div class="buttons">
            <a href="" class="link-apple NIE-button-ios" target="_blank">App Store下载</a>
            <a href="" class="link-android NIE-button-android" target="_blank">安卓版下载</a>
         </div>
    </div>
    <!-- 第一屏 start -->

 <div id="01" style="height: 800px;" class="section section-01" onmousemove=moveFunc(event)>
 		<div class="role role-02"></div>
        <img src="img/yxfm.png" alt="" class="title">
        <span class="slogan_date"></span>
        <div id="nie-download" class="nie-download" data-download="lxf|gw">
            <div class="NIE-qrcode"><img src="img/wxewm01.png"></div>
             <div class="buttons">
                <a href="" class="link-apple NIE-button-ios" target="_blank" style="width:146px;height:60px;background:url(img/iosxz.png);">App Store下载</a>
                <a href="" class="link-android NIE-button-android" target="_blank">安卓版下载</a>
             </div>
        </div>
        <a href="javascript:;" class="qrcode_wx_box"></a>
         <a href="javascript:;" class="erweima" style="display:none"></a>
        
        <a href="indexIn.jsp" class="luntan_btn" target="_blank">进入管网</a>
        <a href="javascript:;" class="gift_con">安卓礼包</a>
        <div class="code_show">
            <img src="" alt="" title="">
        </div>
    </div>
    <!-- 第一屏 end -->
    <!-- 第二屏 start -->
    <div id="02" style="height: 800px;" class="section section-02"  onmousemove=moveFunc(event)>
        
        <h2></h2>
        <p class="desc"></p>
        <div class="role role-03"></div>
        <div class="role-name"></div>
        <div style="transform: translate3d(37.2333px, 14.5px, 0px);" class="leaf"></div>
        <span class="tips_download"></span>
        <a href="javascript:;" class="tips_gift"></a>
        <!-- <div class="leaf leaf-01"></div>
        <div class="leaf leaf-02"></div>
        <div class="leaf leaf-03"></div>
        <div class="leaf leaf-04"></div> -->
        <div class="slideTxtBox" style="z-index:19">
           
            <div class="hd" style="z-index:19">
                <span class="arrow">
                    <a class="next"></a>
                    <a class="prev"></a>
                </span>
            </div>
            <div class="bd" id="pics" style="z-index:19">
                <ul id="0">
                    <li class="slide-item-01">
                        <a href="javascript:;" data-big="img/11_0001_2.png" data-index="0">
                            <img src="img/pg02_01.png" alt="img_01" height="237px" width="90%">
                        </a>
                    </li>
                    <li class="slide-item-02">
                        <a href="javascript:;" data-big="img/11_0000_1.png" data-index="1">
                            <img src="img/pg02_02.png" alt="img_02" height="237px" width="90%">
                        </a>
                    </li>
                </ul>
                <ul id="1" style="display: none;">
                    <li class="slide-item-01">
                        <a href="javascript:;" data-big="img/11_0003_4.png" data-index="2">
                            <img src="img/pg02_03.png" alt="img_03" height="237px" width="90%">
                        </a>
                    </li>
                    <li class="slide-item-02">
                        <a href="javascript:;" data-big="img/11_0002_3.png" data-index="3">
                            <img src="img/pg02_04.png" alt="img_04" height="237px" width="90%">
                        </a>
                    </li>
                </ul>
               <script type="text/javascript">
           
            	 
            	 $("#pics #0").css("display","block");
            	 
            	 $(".arrow .next").click(function(){
            		 if(document.getElementById("0").style.display=="block"){
            			 $("#pics #0").css("display","none");
            			 $("#pics #1").css("display","block");         			 
            		 }
            	 }) ;
            	  
            	 $(".arrow .prev").click(function(){
            		 if(document.getElementById("1").style.display=="block"){
            			 $("#pics #1").css("display","none");
            			 $("#pics #0").css("display","block");
            		 }
            	 }); 
              
               </script> 
               <script type="text/javascript">
               $(document).ready( function() {
                   var o, e = $("#mask"),
                   n = $(".picture-box"),
                   a = $("#pics a"),
                   i = $(".picture-box-prev"),
                   t = $(".picture-box-next");
                   a.click(function() {
                       o = 1 * $(this).attr("data-index"),
                       e.show().animate({
                           opacity: "0.85"
                       }),
                       n.find("img").attr("src", $(this).attr("data-big")),
                       n.show()
                   }),
                   $(".btn-close").click(function() {
                       e.hide().animate({
                           opacity: "0"
                       }),
                       n.hide(),
                       $("#video-box").hide(),
                       $("#video2-box").hide(),
                       $(".pop-box").hide()
                   }),
                   t.click(function() {
                       var e;
                       o == a.length - 1 ? o = 0 : o++,
                       e =  a.eq(o).attr("data-big"),
                       n.find("img").attr("src", e)
                   }),
                   i.click(function() {
                       var e;
                       0 == o ? o = a.length - 1 : o--,
                       e =  a.eq(o).attr("data-big"),
                       n.find("img").attr("src", e)
                   })
               })
               </script>
                
            </div>

        </div>
    </div>
    <!-- 第二屏 end -->
    <!-- 第三屏 start -->
    <div id="03" style="height: 800px;" class="section section-03" onmousemove=moveFunc(event)>
        <div class="role role-04" style="height:940px;"></div>
        <h2>强对决</h2>
        <p class="desc"></p>
        <!-- <div class="role-name role-name-01">小武</div>
        <div class="role-name role-name-02">无名</div> -->
       <div style="transform: translate3d(37.2333px, 14.5px, 0px);" class="leaf"></div>
        <span class="tips_download"></span>
        <a href="javascript:;" class="tips_gift"></a>
    </div>
    <!-- 第三屏 end -->
    <!-- 第四屏 start -->
    <div id="04" style="height: 800px;" class="section section-04 " onmousemove=moveFunc(event)>
        <h2></h2>
        <p class="desc"></p>
        <div class="role role-05"></div>
        <div style="transform: translate3d(37.2333px, 14.5px, 0px);" class="leaf"></div>
        <span class="tips_download"></span>
        <a href="javascript:;" class="tips_gift"></a>
        
        <div class="pic-box">
          
         
        </div>
    </div>

    <!-- 第五屏 start -->
    <div id="05" style="height: 800px;" class="section section-05 " onmousemove=moveFunc(event)>
        <h2></h2>
        <p class="desc"></p>
        <div class="role role-06"></div>
        <div class="role role-08"></div>
        <div class="role role-09"></div>
        <div class="role role-07"></div>
        <span class="tips_download"></span>
        <a href="javascript:;" class="tips_gift"></a>
        <div style="transform: translate3d(37.2333px, 14.5px, 0px);" class="leaf"></div>
        <div class="role-name role-name-01"></div>
        <div class="role-name role-name-02"></div>
        <div class="role-name role-name-03"></div>
        <div class="role-name role-name-04"></div>

        
    </div>
    
    <!-- 第五屏 end -->
      <!-- 第6屏 start -->
    <div id="06" style="height: 800px;background:url(img/bg_06.jpg) top center no-repeat;background-size:cover;" class="section section-06" onmousemove=moveFunc(event)>
        <h2></h2>
        <p class="desc"></p>
        <div class="role role-06"></div>
        <div class="role role-08"></div>
        <div class="role role-09"></div>
        <div class="role role-07"></div>
        <span class="tips_download"></span>
        <a href="javascript:;" class="tips_gift"></a>
        <div style="transform: translate3d(37.2333px, 14.5px, 0px);" class="leaf"></div>      
        <div class="role-name role-name-01"></div>
        <div class="role-name role-name-02"></div>
        <div class="role-name role-name-03"></div>
        <div class="role-name role-name-04"></div>
        
        
    </div>
   
    
    <!-- 第6屏 end -->
     <!--此乃底部-->
    <div id="07"  class="footerx section  section-07  myConten fp-auto-height" style="min-height:100px; max-height:472px;height: 140px !important;">
      <!--   <div style="display: block;" class="share-box" id="NIE-share"><div class="NIE-share NIE-share6"><span class="NIE-share-txt">分享到:</span><ul class="NIE-share-iconBtn"><li><a target="_self" title="分享到微信二维码" href="javascript:;" style="" class="iconfont NIE-share-btn23"><span class="iconfont"></span><em>微信</em></a></li><li><a target="_self" title="分享到易信" href="javascript:;" style="" class="iconfont NIE-share-btn22"><span class="iconfont"></span><em>易信</em></a></li><li><a target="_self" title="分享到新浪微博" href="javascript:;" style="" class="iconfont NIE-share-btn2"><span class="iconfont"></span><em>新浪微博</em></a></li><li><a href="javascript:void(0)" class="iconfont morebtn"><span class="iconfont"></span><em>更多</em></a></li></ul><div class="NIE-share-clearfix"></div><div class="NIE-share-more"><ul><li><a target="_self" title="分享到QQ空间" href="javascript:;" style="" class="iconfont NIE-share-btn1">QQ空间</a></li><li><a target="_self" title="分享到人人网" href="javascript:;" style="" class="iconfont NIE-share-btn8">人人网</a></li><li><a target="_self" title="分享到腾讯微博" href="javascript:;" style="" class="iconfont NIE-share-btn3">腾讯微博</a></li><li><a target="_self" title="分享到QQ好友" href="javascript:;" style="" class="iconfont NIE-share-btn24">QQ好友</a></li><li><a target="_self" title="分享到豆瓣" href="javascript:;" style="" class="iconfont NIE-share-btn11">豆瓣</a></li><li><a target="_self" title="分享到百度贴吧" href="javascript:;" style="" class="iconfont NIE-share-btn14">百度贴吧</a></li></ul></div></div><div class="NIE-share-clearfix"></div></div>

       <div id="NIE-copyRight"><p id="NIE-copyRight-corp" style="width: 832px; text-align: left; margin: 0px auto; padding: 15px 0px 0px; font-size: 12px; font-family: &quot;宋体&quot;; line-height: 24px; display: block; position: relative;"><span style="vertical-align: top; top: 4px; display: inline-block; position: relative;"><a href="http://www.163.com/" target="_blank" style="width: 118px; height: 31px; padding-right: 0px; display: inline-block; cursor: pointer; background: transparent url(&quot;netease.1.png&quot;) no-repeat scroll 0% 0%;"></a><a href="http://game.163.com/" target="_blank" style="width: 134px; height: 31px; padding-right: 15px; display: inline-block; cursor: pointer; background: transparent url(&quot;nie.1.png&quot;) no-repeat scroll 0% 0%;"></a></span><span style="text-align: left; display: inline-block; padding-left: 6px;"><span id="ncp-l1"><a href="http://gb.corp.163.com/gb/about/overview.html" target="_blank">公司简介</a> - <a href="http://help.163.com/" target="_blank">客户服务</a> - <a href="http://gb.corp.163.com/gb/legal.html" target="_blank">相关法律</a> - <a href="http://game.163.com/about/about.html" target="_blank">网易游戏</a> - <a href="http://game.163.com/about/contactus.html" target="_blank">联系我们</a> - <a href="http://game.163.com/bs/business.html" target="_blank">商务合作</a> - <a href="http://game.163.com/job/" target="_blank">加入我们</a> - <a href="http://game.163.com/sy/client/userAgreement2.html" target="_blank">用户协议</a></span><br><span id="ncp-l2">网易公司版权所有 ©1997-2016　　  </span></span><a href="http://www.leihuo.net/jiazhang.html" style="display: inline-block; padding: 2px; color: white; background-color: rgb(97, 0, 0); position: absolute; right: 70px; top: 38px;" target="_blank">点击查看家长监护工程&nbsp;&gt;</a><br><span id="ncp-l3" style="display: inline-block; padding-top: 10px;">本游戏适合16岁以上的玩家进入。<br>积极健康的游戏心态是健康游戏的开端，本游戏故事情节设置紧凑，请您合理控制游戏时间，避免沉溺游戏影响生活，注意自我保护，防范网络陷阱。<br>《网络文化经营许可证》浙网文[2016]0155-055号 </span></p></div>
 		-->
 	   <div class="logox" style="padding-left:20px;">
        <div class="logo-s" style="padding:0 50px;">

       <a class="baidux"> <img src="img/footer.png" style="border-right: 3px solid grey;" alt=""></a>
        </div>
        <div class="font">
           <p>备案号:粤ICP备11029425号-2 丨粤网文[2013]0810-210号丨</p>
           <p>抵制不良游戏 拒绝盗版游戏 注意自我保护 谨防上当受骗</p>
           <p>适度游戏益脑 沉迷游戏伤身 合理安排时间 享受健康生活</p>
        </div>
    </div>
 	
 
     </div>
</div> 
<!-- 导航1 -->
<div style="display: block; background-color:rgba(180,190,190,0.9);" class="nav-box nav-box-01 nav-suo" id="nav-box-01">
    <div class="nav-con clearfix" >
        <div class="nav-item nav-news-box">
            <!-- from 新闻发布系统 【16v1PC官网首页.新闻模块】-->
            <ul class="txt-list">
            
            
            <!-- ajax 获取新闻信息 -->
              <script type="text/javascript">
		         $(function(){

                      $.ajax({
                          type: "GET",
                          url: "Selnews?type=01&count=5",
                          //data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                   
                                          html+='<li><a href="Contents.jsp?id='+comment['id']+'" target="_blank">'+
                                        		  '<span class="dot"> * </span>'+
                                        		  '<span class="txt"> &nbsp'+comment['title']+'</span>'+
                                        		  '<span class="time">'+comment['lastModifyTime']+'</span>'+
                                        		  '</a></li>'
                                      })
                                      $('.txt-list').html(html);
                          }
                      })

             })
             </script>
</ul>
<!--stamp:c04759ab-7694-4ec0-892a-1cf898dcbe81,tplId:14829,pageId:18309,tplName:16v1PC官网首页.新闻模块-->

            <a href="News.jsp" target="_blank" class="btn-more"></a>
            <i></i>
        </div>
        <div class="nav-item nav-games-box clearfix">
                     <a href="javascript:;" class="fea-01" style="height:150px;width:60px;background:url(img/dflx2.png); background-repeat: no-repeat;"></a>
           			 <a href="javascript:;" class="fea-02" style="height:150px;width:60px;background:url(img/wldh2.png); background-repeat: no-repeat;"></a>
          			  <a href="javascript:;" class="fea-03" style="height:150px;width:60px;background:url(img/xkyc2.png); background-repeat: no-repeat;"></a>
           			 <a href="javascript:;" class="fea-04" style="height:150px;width:60px;background:url(img/jyhz2.png); background-repeat: no-repeat;"></a>
          			 <a href="javascript:;" class="fea-05" style="height:150px;width:60px;background:url(img/szdp2.png); background-repeat: no-repeat;"></a>
                <style>
                .nav-con  .nav-games-box .fea-01:hover{background:url(img/dflx1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-02:hover{background:url(img/wldh1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-03:hover{background:url(img/xkyc1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-04:hover{background:url(img/jyhz1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-05:hover{background:url(img/szdp1.png) no-repeat !important}
                
                .nav-con  .nav-games-box .fea-01.on{background:url(img/dflx1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-02.on{background:url(img/wldh1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-03.on{background:url(img/xkyc1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-04.on{background:url(img/jyhz1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-05.on{background:url(img/szdp1.png) no-repeat !important}
               
               </style>
            <i></i>
        </div>
    </div>
    <i class="nav-txt" style="color:black;"><i class="triangle"></i>展开导航</i>
</div>

<!-- 导航2 -->
<div id="nav-box-02" style="display: none;background-color:rgba(200,200,200,0.8)" class="nav-box nav-box-02 nav-suo" >

            <div class="nav-con clearfix">
                <div class="nav-item nav-games-box clearfix">
                
                     <a href="javascript:;" class="fea-01" style="height:150px;width:60px;background:url(img/dflx2.png); background-repeat: no-repeat;"></a>
           			 <a href="javascript:;" class="fea-02" style="height:150px;width:60px;background:url(img/wldh2.png); background-repeat: no-repeat;"></a>
          			  <a href="javascript:;" class="fea-03"  style="height:150px;width:60px;background:url(img/xkyc2.png); background-repeat: no-repeat;"></a>
           			 <a href="javascript:;" class="fea-04" style="height:150px;width:60px;background:url(img/jyhz2.png); background-repeat: no-repeat;"></a>
          			 <a href="javascript:;" class="fea-05" style="height:150px;width:60px;background:url(img/szdp2.png); background-repeat: no-repeat;"></a>
                <style>
                
                .nav-con  .nav-games-box .fea-01:hover{background:url(img/dflx1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-02:hover{background:url(img/wldh1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-03:hover{background:url(img/xkyc1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-04:hover{background:url(img/jyhz1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-05:hover{background:url(img/szdp1.png) no-repeat !important}
                 
                .nav-con  .nav-games-box .fea-01.on{background:url(img/dflx1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-02.on{background:url(img/wldh1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-03.on{background:url(img/xkyc1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-04.on{background:url(img/jyhz1.png) no-repeat !important}
                .nav-con  .nav-games-box .fea-05.on{background:url(img/szdp1.png) no-repeat !important}
               
               </style>
                    <i></i>
                </div>
                <a href="index.jsp#1" class="btn-back"><i></i>返回首页</a>
                <a href="javascript:void(0);" class="btn-nav-download Jdownload"><i></i>下载游戏</a>
                <div class="public-box">
                    <img src="img/wxewm01.jpg" alt="" height="90" width="90">
                    <i style="background:url(img/gzwz.png) top center no-repeat;"></i>
                </div>
            </div>
            
            <i class="nav-txt"><i class="triangle" ></i>展开导航</i>
     </div>


<a style="display: block;" href="javascript:;" class="i-arrow fp-next"></a>
    <!--弹窗文件-->
    <!--弹窗 start-->
<div id="NIE-overlayer"></div>

<!-- 领取安卓礼包 -->
<div class="pop pop-gift" id="pop-gift">
    <a href="javascript:void(0)" class="gift-close" style=""></a>
    <div class="con">
    	
        <h4><img src="img/gift11.png" style="margin-top:50px;text-align:center;transform: rotate(180deg);">&nbsp领取首发豪华礼包&nbsp<img src="img/gift11.png" style="margin-top:0px;text-align:center"></h4>
        <div class="gift-box" style="">
            <input maxlength="11" onblur="if(this.value==''){this.value='输入手机号码';this.style.color = '#9f9f9f'};" onfocus="this.value=this.value=='输入手机号码'?'':this.value;this.style.color = '#000'" value="输入手机号码" id="giftPhone" name="giftPhone" class="giftPhone" type="text">
            <div class="img-code-box">
                <input onblur="if(this.value==''){this.value='输入验证码';this.style.color = '#9f9f9f'};" onfocus="this.value=this.value=='输入验证码'?'':this.value;this.style.color = '#000'" value="输入验证码" id="code-num" class="code-num" type="text">
               
            </div>
            <span class="img-code" id="img-code">
            <img id="randomecode1" onclick="this.src='image/random.png?'+new Date()" src="image/random.png" alt="点击刷新验证码"  class="code">
            </span>
            <a href="javascript:void(0)" id="btn-gift" class="btn-gift" style="color:#ffe5b3;font-size:40px;text-align:center;height:68px;" value="立即领取">立即领取</a>
 			
 			<script type="text/javascript"> 			
 			var getCode = document.getElementById('btn-gift');
 			var wait = 60;
 			function time(btn){
 			    if (wait==0) {
 			        btn.removeAttribute("disabled");
 			        btn.innerHTML = "立即领取";
 			        wait = 60;
 			    }else{
 			        btn.setAttribute("disabled",true);
 			        btn.innerHTML = wait + "秒后重试";
 			        wait--;
 			        setTimeout(function(){
 			            time(btn);
 			        },1000);
 			    }
 			}

 			getCode.onclick = function(){
 				var codenum=$(".code-num").val();
 				var  phone=$(".giftPhone").val();
 				var test=!!phone.match(/^(0|86|17951)?(13[0-9]|15[0123456789]|17[678]|18[0-9]|14[57])[0-9]{8}$/);

 				if(codenum==null||codenum==""){
 					alert("验证码不能为空！")
 					}else{
 					$.ajax({
                        type: "GET",
                          url: "Checkcode?code="+codenum,                        
                          dataType: "json",
                          success: function(data){
                                      if(data==1){
                                    	  if(test==false){
                                    		  alert("手机号错误!");
                                    		  document.getElementById("randomecode1").src='image/random.png?'+new Date();
                                              
                                    	  }else{
                                    		  $.ajax({                                  			 
                                                      type: "GET",
                                                      url: "AddNumber?phone="+phone,                        
                                                      dataType: "text",
                                                      success: function(data){
                                                    	   
                                                        	if(data=='1'){
                                                        		alert("您已经领取了礼包，请勿重新领取");
                                                        		document.getElementById("giftPhone").value='输入手机号码';
                                                        		document.getElementById("code-num").value='输入验证码';
                                                        		document.getElementById("randomecode1").src='image/random.png?'+new Date();
                                                                 
                                                        	}else{
                                                        		 $(".gift-box").css("display","none");
                                                           	     $(".gift_success").css("display","block");
                                                           	   
                                                        	}
                                                        	
                                                        }
                                        	    	 
                                        	     });
                                    		
                                     /*   	    
                                    		 time(getCode);
                                    		 document.getElementById("randomecode1").src='image/random.png?'+new Date();
                                    	 */	                                      		 
                                   	  }
                                    	  
                                      }else{
                                    	  alert("验证码错误！");
                                    	  document.getElementById("randomecode1").src='image/random.png?'+new Date();
                                 		  
                                      }
                                      
                                      }                     
                       })

 					
 				}
 				
 			 /*    time(this); */
 			};
 			</script>
 		
        </div>

        <div class="gift_success" id="gift_success" style="">
            <h5 style="margin-left:16px">&nbsp;&nbsp;&nbsp;&nbsp;恭喜少侠领取礼包成功！</h5>
            <p class="gift-tit">使用说明：</p>
            <p>iOS与安卓玩家，进入游戏主页面→活动按钮→兑换按钮→输入短信中的礼包码，即可领取奖励。
            <font color="" size="2.5px"><br/><br/>备注：礼包码短信将在10分钟内发送至手机，敬请等待。</font></p>
            
        </div>
        <div class="gzh-wrap">
            <p class="sub-title sub-title-2">关注游戏微信公众号（<i>mxjhol</i>）赢独家好礼</p>
            <div class="gzh"><img src="img/wxewm01.png"></div>
        </div>
    </div>
</div>
<!--再抽一次弹窗 start-->
<div class="pop pop-yuyue" id="pop-yuyue">
    <a href="javascript:void(0)" class="close"></a>
    <div class="con">
        <h4>&nbsp;古龙正版&nbsp;动作武侠</h4>
        <div id="yuyue-box" class="yuyue-wrap">
            <p class="sub-title sub-title-1"><i>1</i>输入手机号码：</p>
            <div class="choose-box" id="choose-box">
                <span class="choose-title">选择手机系统：</span>
                <input name="systemtype" value="ios" class="choose" type="radio"><label class="ios-type" data-val="ios"><i></i>苹果</label>
                <input name="systemtype" value="android" class="choose" type="radio"><label class="android-type" data-val="android"><i></i>安卓</label>
            </div>

            <input onblur="if(this.value==''){this.value='在此输入手机号码';this.style.color = '#9f9f9f'};" onfocus="this.value=this.value=='在此输入手机号码'?'':this.value;this.style.color = '#000'" value="在此输入手机号码" class="phonenum" name="phonenum" maxlength="11" id="phonenum" style="color: rgb(159, 159, 159);" type="text">
            <a href="javascript:void(0);" class="yuyue-btn" id="yuyue">立即预约</a>
        </div>
        <div class="gzh-wrap">
            <p class="sub-title sub-title-2"><i>2</i>关注游戏微信公众号（lxfcq163），赢专属好礼。</p>
            <div class="gzh"><img src="img/wxewm01.png" height="119" width="119"></div>
        </div>
    </div>
</div>
<!--再抽一次弹窗 end-->



<!--下载 start-->
<div class="pop pop-yuyue pop-download" id="pop-download"  style="">
   

    <a href="javascript:void(0)" class="close"></a>
    <div class="con">
    	<img alt="logo" src="img/logo_mxjh.png">
        <h4>&nbsp;连服对战手游&nbsp;&nbsp;刷新战斗哲学</h4>
        <div class="download-wrap clearfix" id="nie-download02" data-download="lxf|gw">
            <div class="download-img">
                <div class="NIE-qrcode"><img src="img/wxewm01.png"></div>
                <em>扫一扫进入江湖</em>
            </div>
            <div class="download-btns buttons">
                <!-- <em>第一次下载请使用WIFI环境！</em> -->
                <a href="" target="_blank" class="btn-download btn-download-ios NIE-button-ios">App store 下载</a>
                <a href="" target="_blank" class="btn-download btn-download-and NIE-button-android">安卓下载</a>
            </div>
        </div>
        <div class="gzh-wrap">
            <p class="sub-title sub-title-2">关注游戏微信公众号（mxjhol）赢独家好礼。</p>
            <div class="gzh"><img src="img/wxewm01.png" height="119" width="119"></div>
        </div>
    </div>
</div>
<!--下载 end-->

<!-- 其他弹窗 -->
<div class="mask" id="mask"></div>
<div id="video-box" class="JpopBox pop-video-box">
    <div id="videoShow"></div>
    <i></i>
    <a href="javascript:;" class="pop-video-close JpopClose"></a>
</div>

<div class="picture-box">
    <i></i>
    <img src="" height="530" width="708">
    <a href="javascript:;" class="picture-box-next"></a>
    <a href="javascript:;" class="picture-box-prev"></a>
    <a href="javascript:;" class="pop-video-close JpopClose btn-close"></a>
</div>
    

    <!--分享-->
    <div id="share_content" style="display: none;"><!--设置浏览器及微信中点击分享的默认内容-->
        <div id="share_title" pub-name="分享文案">《陆小凤传奇》邀你决战紫禁之巅！</div><!--设置分享标题-->
        <div id="share_url" pub-name="分享地址"></div><!--设置分享ＵＲＬ-->
        <img id="share_pic" data-src=""><!--设置分享图片地址，使用src指定图片地址，可加快在微信中点击分享时弹框中分享图标的显示速度-->
        <div id="share_desc" pub-name="分享描述"></div>
    </div>
    <div pub-name="JS" id="js_bottom" style="display: none;"></div>
    <!-- 营销点代码 -->
    <iframe id="yxd" src="" pub-name="营销点代码" style="display: none;"></iframe>

    <!-- jquery mix NIE (最新版本）-->

<!-- fullpage.js 的基本设置 -->

	<script type="text/javascript">
		$(document).ready(function() {
			$('#fullpage').fullpage({

				sectionsColor: ['#1bbc9b', '#4BBFC3', '#7BAABE', 'whitesmoke', '#ccddff'],
				anchors: ['1', '2', '3', '4', '5','6','7'],
				menu: '#menu',
				scrollingSpeed: 300,
				scrollBar: true,
				menu: '#menu',
				continuousVertical: true
			});

		});
		
	  </script>
 <!--下一页跳转     next page onclick-->
     <script type="text/javascript">
     $(".i-arrow").click(function(){
    	 var hash=window.location.hash;
    	 var nextpage;
    	 switch(hash){
			case '#1':
				nextpage="#2";
				break;	
			case '#2':
				nextpage="#3";
				break;
			case '#3':
				nextpage="#4";
				break;
			case '#4':
				nextpage="#5";
				break;
			case '#5':
				nextpage="#6";
				break;
			case '#6':
				nextpage="#7";
				break;
			default:
				nextpage="#2";
				break;
			}
    	 top.location=nextpage;
    	 
     }) ;
          
     </script>		 
			 	  
 <script type="text/javascript">
 
 	<!-- 页面加载 add / remove class -->
	$(document).ready(function() {
			var hash=window.location.hash;			 
			var idcode;
			switch(hash){
			case '#1':
				idcode="01";
				break;	
			case '#2':
				idcode="02";
				break;
			case '#3':
				idcode="03";
				break;
			case '#4':
				idcode="04";
				break;
			case '#5':
				idcode="05";
				break;	
			case '#6':
				idcode="06";
				break;	
			case '#7':
				idcode="06";
				break;	
			default:
				idcode="01";
				break;
			}
			sleep(100);
			 $(".section-"+idcode).addClass("section-in");
			 
			 if(hash=="#1"||hash==""||hash==null){
				 $("#nav-box-02").css("display","none");
				 $("#nav-box-01").css("display","block");
				 $(".i-arrow").css("display","block"); 
			 }else{
				 if(hash=="#7"){
					 $("#nav-box-01").css("display","none");
					 $("#nav-box-02").css("display","none");
					 $(".i-arrow").css("display","none"); 
				 }else{
				 $("#nav-box-01").css("display","none");
				 $("#nav-box-02").css("display","block");
				 $(".i-arrow").css("display","block"); 
				 }
			 }
			 var fea=idcode-1;
	
			 $('#nav-box-02 .nav-con  .nav-games-box a').removeClass("on");
			 $('#nav-box-02 .nav-con  .nav-games-box  .fea-0'+fea).addClass("on");
			 
			 
		});
	  $(window).bind('hashchange', function() {
			var hash=window.location.hash;	
			
			 if(hash=="#1"||hash==""||hash==null){
				 $("#nav-box-02").css("display","none");
				 $("#nav-box-01").css("display","block");
				 $(".i-arrow").css("display","block"); 
			 }else{
				 if(hash=="#7"){
					 $("#nav-box-01").css("display","none");
					 $("#nav-box-02").css("display","none");
					 $(".i-arrow").css("display","none"); 
				 }else{
				 $("#nav-box-01").css("display","none");
				 $("#nav-box-02").css("display","block");
				 $(".i-arrow").css("display","block"); 
				 }
			 }
			var idcode;
			switch(hash){
			case '#1':
				idcode="01";
				break;	
			case '#2':
				idcode="02";
	
				break;
			case '#3':
				idcode="03";
				
				break;
			case '#4':
				idcode="04";
				break;
			case '#5':
				idcode="05";
				break;	
			case '#6':
				idcode="06";
				break;	
			case '#7':
				idcode="06";
				break;	
			default:
				idcode="01";
				break;
			}
	
			 $(".section").removeClass("section-in");
			 
			 //sleep(300);
			 $(".section-"+idcode).addClass("section-in");
			 $("#"+idcode).addClass("section-in");
			 var fea=idcode-1;
			 $("#nav-box-02 .nav-con  .nav-games-box a").removeClass("on");
			 $("#nav-box-02 .nav-con  .nav-games-box  .fea-0"+fea).addClass("on");
						 
			
		});
	  </script>
	  <script type="text/javascript">
	  $(window).bind('mousewheel', function() {
			var hash=window.location.hash;	
			
			 if(hash=="#1"||hash==""||hash==null){
				 $("#nav-box-02").css("display","none");
				 $("#nav-box-01").css("display","block");
				 $(".i-arrow").css("display","block"); 
			 }else{
				 if(hash=="#7"){
					 $("#nav-box-01").css("display","none");
					 $("#nav-box-02").css("display","none");
					 $(".i-arrow").css("display","none"); 
				 }else{
				 $("#nav-box-01").css("display","none");
				 $("#nav-box-02").css("display","block");
				 $(".i-arrow").css("display","block"); 
				 }
			 }
			var idcode;
			switch(hash){
			case '#1':
				idcode="01";
				break;	
			case '#2':
				idcode="02";
	
				break;
			case '#3':
				idcode="03";
				
				break;
			case '#4':
				idcode="04";
				break;
			case '#5':
				idcode="05";
				break;	
			case '#6':
				idcode="06";
				break;	
			case '#7':
				idcode="06";
				break;	
			default:
				idcode="01";
				break;
			}
	
			 $(".section").removeClass("section-in");
			 
			  sleep(50);
			 $(".section-"+idcode).addClass("section-in");
			 $("#"+idcode).addClass("section-in");
						 
			
		});
	  
	  
	  </script>
	  <script type="text/javascript">
	  window.onhashchange= function() {
			var hash=window.location.hash;	
			
			if(hash=="#1"||hash==""||hash==null){
				 $("#nav-box-02").css("display","none");
				 $("#nav-box-01").css("display","block");
				 $(".i-arrow").css("display","block"); 
			 }else{
				 if(hash=="#7"){
					 $("#nav-box-01").css("display","none");
					 $("#nav-box-02").css("display","none");
					 $(".i-arrow").css("display","none"); 
				 }else{
				 $("#nav-box-01").css("display","none");
				 $("#nav-box-02").css("display","block");
				 $(".i-arrow").css("display","block"); 
				 }
			 }
			var idcode;
			switch(hash){
			case '#1':
				idcode="01";
				break;	
			case '#2':
				idcode="02";
	
				break;
			case '#3':
				idcode="03";
				
				break;
			case '#4':
				idcode="04";
				break;
			case '#5':
				idcode="05";
				break;	
			case '#6':
				idcode="06";
				break;	
			case '#7':
				idcode="06";
				break;	
			default:
				idcode="01";
				break;
			}
	
			 $(".section").removeClass("section-in");
			 
			 sleep(10);
			 $(".section-"+idcode).addClass("section-in");
			 $("#"+idcode).addClass("section-in");
						 
			
		};	  
	  </script>
	  
	<!--js暂停 function sleep  -->  
    <script type="text/javascript"> 
		function sleep(ms){
			ms +=new Date().getTime();
			while(new Date < ms ){
				
				
			}
				
		}
	  </script>
	  <script type="text/javascript">
	  $(".qrcode_wx_box").mouseover(function(){
		  $(".erweima").css("display","block");
		  
	  });  
	  $(".qrcode_wx_box").mouseout(function(){
		  $(".erweima").css("display","none");
		  
	  });  
	  </script>
	  <script type="text/javascript">
	  $(".gift_con").click(function(){
		$(".pop-gift").css("display","block");  
		  
	  });
	  $(".gift-close").click(function(){
			$(".pop-gift").css("display","none");  
			  
	  });
	
	  </script>
     
	 <style>
      .myContent{
        height: 300px;
      }
    </style>
    
    
   <!-- 关于页面上导航、分享和下载的鼠标事件  -->
   <script type="text/javascript">
   $("#nav-box-01").mouseover(function(){
	  $("#nav-box-01").css("height","160px"); 
	  $(".nav-suo .nav-con").css("display","block"); 
	  $(".nav-suo .nav-txt").css("display","none"); 
	   
   });
   $("#nav-box-01").mouseout(function(){
	      $("#nav-box-01").css("height","34px");
		  $(".nav-suo .nav-con").css("display","none"); 
		  $(".nav-suo .nav-txt").css("display","block"); 		   
	   });
   
   $("#nav-box-02").mouseover(function(){
		  $("#nav-box-02").css("height","160px"); 
		  $(".nav-suo .nav-con").css("display","block"); 
		  $(".nav-suo .nav-txt").css("display","none"); 
		   
	   });
	   $("#nav-box-02").mouseout(function(){
		      $("#nav-box-02").css("height","34px");
			  $(".nav-suo .nav-con").css("display","none"); 
			  $(".nav-suo .nav-txt").css("display","block"); 		   
		   });
   
   $(".tips_download").mouseover(function(){
	   $(".tips_download").css("display","none"); 
	  $("#nie-download-com").css("display","block"); 
	  $("#nie-download-com").css("right","2px"); 	   
   });
   $(".nie-download-com").mouseover(function(){
	   $(".tips_download").css("display","none"); 
	  $("#nie-download-com").css("display","block"); 
	  $("#nie-download-com").css("right","2px"); 	   
   });
   $(".nie-download-com").mouseout(function(){
	   	sleep(100);
	   	$(".nie-download-com").css("right","3px"); 
		  $(".nie-download-com").css("display","none"); 
		   $(".tips_download").css("display","block"); 		   
	   });
   
   
   </script>
   
   <!-- 关于导航的跳转 -->
   <script type="text/javascript">
   $(".fea-01").click(function(){
	   top.location="#2";
   });
   $(".fea-02").click(function(){
	   top.location="#3";
   });
   $(".fea-03").click(function(){
	   top.location="#4";
   });
   $(".fea-04").click(function(){
	   top.location="#5";
   });	   
   $(".fea-05").click(function(){
	   top.location="#6";   
   });
  </script>
  
  
  <!-- go bcak top -->
  <script type="text/javascript">
  $(".btn-nav-download").click(function(){
	  $(".pop-download").css("display","block");
  });
  $(".pop-download .close").click(function(){
	  $(".pop-download").css("display","none");
  });
  
  </script>
 <script type="text/javascript">
 $(document).ready(function(){
	$(".section-07 fp-tableCell").css("height","121px"); 	 
 });
</script>
</body>



</html>
