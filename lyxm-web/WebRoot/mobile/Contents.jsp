<%@page import="org.common.util.ConnectionService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>灵域仙魔</title>



<meta charset="UTF-8">


<script src="js.dat" async="" type="text/javascript"></script><script charset="gb2312" type="text/javascript" src="jscss/jquery(mixNIE).last.js"></script>
<script charset="gb2312" type="text/javascript" src="jscss/index2.js"></script>
<!-- 为移动设备添加 viewport -->
<meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no">

<link rel="stylesheet" type="text/css" href="jscss/index2.css" media="all">
</head>

<%
	String contentType=request.getParameter("type");
	String contentId=request.getParameter("id"); 
	
%>

<body>

<header class="header">
    <div class="top-bar">
        <div class="logo fl" style=""><a href="javascript:history.back(-1);" style="background:url(images/btn-left.png) center left no-repeat;margin-left:-28px;margin-top:1px" ></a></div>
        <div class="con-tit"><a href="javascript:;">news</a></div>
        <a href="index.jsp"><div class="" style="width:48px;height:48px;float:right;margin-top:-53px;margin-right:13px;background:url() top center no-repeat"></div>
        </a>
    </div>
    <nav class="nav-bar" id="j_head_nav" style="display: none;">
    <div class="t">
    	<div style="float: right; width: 50%; margin-top: 2px;">
		<script type="text/javascript">(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));var bdcs = document.createElement('script');bdcs.type = 'text/javascript';bdcs.async = true;bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=2207325287948193293' + '&plate_url=' + encodeURIComponent(window.location.href) + '&tn=SE_hldp07461_tf7tzn3j&t=' + Math.ceil(new Date()/3600000);var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(bdcs, s);setTimeout(function () {var tn_s=document.createElement('input');tn_s.type='hidden';tn_s.value='SE_hldp07461_tf7tzn3j';tn_s.name='tn';if(document.getElementById('bdcs-search-form'))document.getElementById('bdcs-search-form').appendChild(tn_s);},1000);})();</script><div id="bdcs"></div><div id="bdcs"></div>
        	<div class="clear"></div>
        </div>
        <a href="http://www.18183.com/sitemap.html" style="display: none;">站点地图</a>
        <span>频道</span>
    </div>

</nav>

</header>

<article class="content">
 <style type="text/css">
	body #NIE-art .artText p img {width:90%;height:90%;}
</style>
  <section class="re-mod mod-frame-1" style="padding-bottom: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
         <div id="NIE-art">
          <script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "GET",
                                      url: "/lyxm.xtonegame.com/content?id=<%=contentId%>",
                                      // data: {id:$("#id").val(),content:$("#content").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<h1 class="artTitle">【'+comment['catalog']+'】&nbsp'+comment['title']+'</h1>'+
                                                      
                                                      		' <span class="artDate">发布日期:'+comment['lastModifyTime']+'</span>'+
                                                      		'<div class="artText">'+comment['content']+'</div>'+
                                                      		'<p></p>'+
                                                      		'<p><span class="qun">&nbsp&nbsp&nbsp&nbsp官方Q群: 495265372</span></p>'+  
                                                      		'<p><span class="qun">&nbsp&nbsp&nbsp&nbsp游戏客服: 3232698308</span></p>'+  
                                                      	    '<div class="w_380">'+
                                                      		'</div>'
                                                      	
                                                      		
                                                                                         
                                                  })
                                     $('#NIE-art').html(html);
                                   }
                                 })

                               })
                              </script>
         
         
          </div>
   
    </section>
    
</article>

<div class="poster-adjacent" style="margin-left: 10px; font-size: 13.5px;">

  <%
                        Connection con=null;
                     	PreparedStatement ps = null;
                     	ResultSet rs = null;
                     	String exchange = "";
                     	try{
                     		con = ConnectionService.getInstance().getConnectionForLocal();   		
                     		String sql = "SELECT id,catalog,title FROM tbl_cms_contents WHERE id< "+contentId+"  AND STATUS=1 and catalog not in ('wallpaper','cutpic') ORDER BY id DESC LIMIT 1";
                     		ps = con.prepareStatement(sql);
                     		rs = ps.executeQuery();
                     		if(rs.next()){
                     			 switch(rs.getString("catalog")){
                     			 case "news":
                     				 exchange="新闻";
                     				 break;
                     			 case "announce":
                     				 exchange="公告";
                     				 break;
                     			 case "activity":
                     				 exchange="活动";
                     				 break;
                     			 case "events":
                     				 exchange="精彩活动";
                     				 break;
                     			 case "strategy":
                     				 exchange="游戏玩法";
                     				 break;
                     			 case "play":
                     				 exchange="游戏攻略";
                     				 break;
                     			default:
                     				exchange=rs.getString("catalog");
                     			 }
                     			 out.print(" <p class='no-break' style='margin-top: 10px; margin-right: auto;'><a data-sb-indepth='true' href='/lyxm.xtonegame.com/mobile/Contents.jsp?id="+rs.getInt("id")+"'>上一篇：【"+exchange+"】"+rs.getString("title")+" </a></p>");
                                 
                     		
                     		}else{
                     			out.print(" <p class='no-break' style='margin-top: 10px; margin-right: auto;'><a data-sb-indepth='true' href=''>上一篇：无</a></p>");
                     		}    
                     		
                     		String sql1 = "SELECT id,catalog,title FROM tbl_cms_contents WHERE id> "+contentId+"  AND STATUS=1 and catalog not in ('wallpaper','cutpic') ORDER BY id DESC LIMIT 1";
                     		ps = con.prepareStatement(sql1);
                     		rs = ps.executeQuery();
                     		if(rs.next()){
                     			 switch(rs.getString("catalog")){
                     			 case "news":
                     				 exchange="新闻";
                     				 break;
                     			 case "announce":
                     				 exchange="公告";
                     				 break;
                     			 case "activity":
                     				 exchange="活动";
                     				 break;
                     			 case "events":
                     				 exchange="精彩活动";
                     				 break;
                     			 case "strategy":
                     				 exchange="游戏玩法";
                     				 break;
                     			 case "play":
                     				 exchange="游戏攻略";
                     				 break;
                     			default:
                     				exchange=rs.getString("catalog");
                     			 }
                     			 out.print(" <p class='no-break' style='margin-top: 10px; margin-right: auto;'><a data-sb-indepth='true' href='/lyxm.xtonegame.com/mobile/Contents.jsp?id="+rs.getInt("id")+"'>下一篇：【"+exchange+"】"+rs.getString("title")+" </a></p>");
                                 
                     		
                     		}else{
                     			out.print(" <p class='no-break' style='margin-top: 10px; margin-right: auto;'><a data-sb-indepth='true' href=''>下一篇：无</a></p>");
                     		}    
                     		
                     		
                     	}catch(Exception e){
                     		e.printStackTrace();
                     	}finally{
                     		if (con != null) {
                     			try {
                     				con.close();
                     			} catch (Exception e) {
                     				// TODO Auto-generated catch block
                     				e.printStackTrace();
                     			}
                     		}
                     	
                     	}					          
                    	 
                    	 %> 


                
              </div>

<script type="text/javascript">
	$(function(){
		$(".artText img").removeAttr("style");
		$(".artText img").css({"width":"90%","display":"block","clear":"both","margin":"auto"});
 	});
</script>




</body></html>
