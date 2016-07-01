<%@page import="org.mxkl.service.Mxklloginsert"%>
<%@page import="org.common.util.ThreadPool"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.mxkl.dao.Newsdao"%>
<%@page import="org.mxkl.bean.Newsbean"%>
<%@page import="org.mxkl.service.Service"%>
<%@page import="org.mxkl.util.CheckLoad"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
if(request.getHeader("X-Real-IP").equals("121.42.0.88")){
	response.sendRedirect("https://www.baidu.com/");
}
	CheckLoad check = new CheckLoad();
	String str = "";
	String str2 = "";
	String str3 = "";
	if(!check.JudgeIsMoblie(request)){
	    str = "background-size: 27%;";
	    str2 = "width: 22.875%;height: 37%;top: 83%;left: 45%;";
	    str3 = "width: 52%;";
	}else{
		str = "";
		str2 = "width:46.875%;height:12%;";
		str3 = "";
	}
	String query = request.getQueryString();
	String f = request.getParameter("f");
// 	System.out.println(f);
// 	System.out.println(request.getParameter("f"));
//    System.out.println(request.getHeader("referer"));
	
	ThreadPool.mThreadPool.execute(new Mxklloginsert(2001,"mengxiangkunlun",query,request.getRequestedSessionId(),request.getHeader("referer"),request.getHeader("user-agent"),request.getHeader("X-Real-IP")!=null?request.getHeader("X-Real-IP"):request.getRemoteAddr()));
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="zh-CN" class="is-mobile is-wechat page-home"><head><script type="text/javascript" async="" src="//tajs.qq.com/gdt.php?sId=47245038"></script><script type="text/javascript"  async="" src="//www.google-analytics.com/analytics.js"></script>
<!--         <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
<!--         <meta name="viewport" content="width=device-width,user-scalable=no,minimal-ui"> -->
<!--     <meta name="apple-mobile-web-app-capable" content="yes"> -->
<!--     <meta name="apple-mobile-web-app-status-bar-style" content="blank"> -->
    
<!--     <meta property="al:ios:url" content="https://itunes.apple.com/cn/app/heng-sao-qian-jun-tang-guo/id997636530"> -->
<!--     <meta property="al:ios:app_store_id" content="997636530"> -->
<!--     <meta property="al:ios:app_name" content="梦想昆仑"> -->

<link type="text/css" rel="stylesheet" href="css/main.css">        
<link href="http://web.xdcdn.net/game/hsqj/img/favicon.ico?1423469731" type="image/x-icon" rel="shortcut icon bookmark">
<link rel="apple-touch-icon-precomposed" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-60.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="76x76" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-76.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="120x120" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-120.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="152x152" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-152.png?1451359882">
        <!-- 为移动设备添加 viewport -->
<meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no">
    <!-- title -->
    <title>梦想昆仑</title>

  
<!-- This site is optimized with the Yoast WordPress SEO plugin v1.5.3 - https://yoast.com/wordpress/plugins/seo/ -->

<link rel="canonical" href="http://hs.xd.com/">
<link rel="next" href="http://hs.xd.com/page/2/">
<script charset="gb2312" type="text/javascript" src="js/jquery(mixNIE).last.js"></script>

<script charset="gb2312" type="text/javascript" src="js/my.js"></script>
<!-- / Yoast WordPress SEO plugin. -->
<style type="text/css">
.fancybox-margin{margin-right:0px;}
 #download{background-image: url(img/anniu2.jpg); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%; position: absolute;height:100%;width:100%;} 

</style>
</head>
<body >
 
<% 

	if(f.equalsIgnoreCase("uc")){
		out.println("<div style=\"display:none;\">");
		out.println("<script language=\"javascript\" type=\"text/javascript\" src=\"http://js.users.51.la/18897133.js\"></script>");
		out.println("<noscript><a href=\"http://www.51.la/?18897133\" target=\"_blank\"><img alt=\"&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;\" src=\"http://img.users.51.la/18897133.asp\" style=\"border:none\" /></a></noscript>");
		out.println("</div>");
	}
	if(f.equalsIgnoreCase("jrtt")){
		out.println("<div style=\"display:none;\">");
		out.println("<script language=\"javascript\" type=\"text/javascript\" src=\"http://js.users.51.la/18897128.js\"></script>");
		out.println("<noscript><a href=\"http://www.51.la/?18897128\" target=\"_blank\"><img alt=\"&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;\" src=\"http://img.users.51.la/18897128.asp\" style=\"border:none\" /></a></noscript>");
		out.println("</div>");	
	}
	if(f.equalsIgnoreCase("zht")){
		out.println("<div style=\"display:none;\">");
		out.println("<script language=\"javascript\" type=\"text/javascript\" src=\"http://js.users.51.la/18897136.js\"></script>");
		out.println("<noscript><a href=\"http://www.51.la/?18897136\" target=\"_blank\"><img alt=\"&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;\" src=\"http://img.users.51.la/18897136.asp\" style=\"border:none\" /></a></noscript>");
		out.println("</div>");	
	}
	
	%>
        
            <div onclick="forbg();" id="for-bg" style="background-color:#211f2c;<%=str%>;width: 100%;background-image: url(img/720x2500.jpg); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%; position: absolute; ">
             

                    <a id="download" href="Mxklskip?<%=query %>" class="dl-btn hide-text"  style="<%=str3%>;width:50%;height:20%;margin-top:133%;margin-left:23.5%;"></a>
<%--                     <a id="download"  class="dl-btn hide-text"  style="<%=str3%>;width:50%;height:20%;margin-top:133%;margin-left:23.5%;"></a> --%>
                
             </div> 
           <script type="text/javascript" >
               var width= document.documentElement.clientWidth;
           
               var bg = document.getElementById('for-bg');
                bg.style.height=width*3.47+'px';
                
//                 function forbg(){
//                 	var href = document.location.href
//                 	  var num=href.indexOf("?")
//                 	  var str=href.substr(num+1);
                	
//                 	document.location.href ="Mxklskip?"+str;
//                 }
             
             </script>   
        
</body></html>