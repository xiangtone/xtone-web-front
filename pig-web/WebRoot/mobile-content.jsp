<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.mxkl.bean.Newsbean"%>
<%@page import="org.mxkl.dao.Newsdao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>豬來了</title>
<link rel="stylesheet" href="css/index.css">
<link href="img/imgz/favicon.ico" rel="icon" type="image/x-icon" />

<style type="text/css" id="znBdcsStyle">#bdcs-rec{display:none;}</style><meta charset="utf-8">


<script charset="gb2312" type="text/javascript" src="js/jquery(mixNIE).last.js"></script>
<script charset="gb2312" type="text/javascript" src="js/index2.js"></script>
<!-- 为移动设备添加 viewport -->
<meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no">
</head>

<body>
<%
Integer tem = Integer.valueOf(request.getParameter("id")); 
int id = tem.intValue();
System.out.println(id);
Newsbean newsbean = Newsdao.selectByid(id);

%>
<header class="header">
    <div class="top-bar">
        <div class="con-tit"><a href="javascript:;"><%=newsbean.getCatalog().substring(0) %></a></div>
        <div class="fr"><span class="mod-tit1" style="background: transparent url('img/img/mp_list/bg_m.png') no-repeat scroll center center / auto 25px;"><i class="sign" id="nav_forum" onclick="headerToggle()"></i></span></div>
        <div class="logo fl" style="background: transparent url('img/img/mp_news/back.png') no-repeat scroll left center / 20px auto;"><a href="javascript:history.back(-1);" ></a></div>
    </div>
    <nav class="nav-bar" id="j_head_nav" style="display:none;">
    <div class="t">
    	<div style="float:right; width:50%; margin-top:2px;">
		<script type="text/javascript">(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));var bdcs = document.createElement('script');bdcs.type = 'text/javascript';bdcs.async = true;bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=2207325287948193293' + '&plate_url=' + encodeURIComponent(window.location.href) + '&tn=SE_hldp07461_tf7tzn3j&t=' + Math.ceil(new Date()/3600000);var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(bdcs, s);setTimeout(function () {var tn_s=document.createElement('input');tn_s.type='hidden';tn_s.value='SE_hldp07461_tf7tzn3j';tn_s.name='tn';if(document.getElementById('bdcs-search-form'))document.getElementById('bdcs-search-form').appendChild(tn_s);},1000);})();</script><div id="bdcs"></div>
        	<div class="clear"></div>
        </div>
        <a href="http://www.18183.com/sitemap.html" style="display:none">站点地图</a>
        <span>频道</span>
    </div>

</nav>

</header>

<article class="content">
 <%
	                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	        			String timeStr = sdf.format(newsbean.getAddTime());
     %>
  <section class="re-mod mod-frame-1" style="padding-bottom:0px;background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
         <div id="NIE-art">
                    <h1 class="artTitle"><%=newsbean.getTitle() %></h1>
                    <span class="artDate"><%=timeStr %></span>
                    <div class="artText">
                    	
                       <%=newsbean.getContent() %>
	<div style="text-align: center;"><span style="font-family:微软雅黑;"><span style="font-size:14px;"><span style="color:#000000;"></span></span></span></div>

                    </div> 
                </div>
   
    </section>
    
</article>
<%

ArrayList<Newsbean> list = (ArrayList)Newsdao.selectAll("select * from tbl_cms_contents where catalog like 'mxkl_%' ORDER BY priority DESC");
Newsbean newsbean2;
Newsbean newsbean3;
int index = 0;
String last = null;
String next = null;
int lastid = 0;
int nextid = 0;

for(Newsbean news:list){
	if(news.getId()==id)
		index = list.indexOf(news);
	
}
try{
newsbean2 = list.get((index-1));
last = "上一篇："+ newsbean2.getTitle();
lastid = newsbean2.getId();

}catch(Exception ex){
	
}
try{
newsbean3 = list.get(index+1);
next = "下一篇："+newsbean3.getTitle();
nextid = newsbean3.getId();
}
catch(Exception ex){
	
}
if(last==null)
	last = " ";
if(next==null)
	next = " ";

%>
<div class="poster-adjacent" style="margin-left:30px;font-size:13.5px;font-weight:;">
                <p class="no-break" style="margin-top:10px;margin-left:;margin-right:auto;"><a href="content.jsp?id=<%= lastid %>"><%=last%></a></p>
        
                <p class="no-break" style="margin-top:10px;margin-left:;"><a href="content.jsp?id=<%= nextid %>"><%=next %></a></p>
            </div>

<script type="text/javascript">
	$(function(){
		$(".artText img").removeAttr("style");
		$(".artText img").css({"width":"90%","display":"block","clear":"both","margin":"auto"});
 	});
</script>

</body>
</html>