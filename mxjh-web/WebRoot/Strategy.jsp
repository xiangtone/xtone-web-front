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
<html xmlns="http://www.w3.org/1999/xhtml"><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>灵域仙魔
        </title>
		<link rel="shortcut icon" href="" type="image/x-icon"><meta name="Keywords" content="沙巴克传奇,沙巴克,传奇,沙巴克传奇官网,新游,盛大,正版传奇,角色扮演,RPG手游,传奇手机版,传奇手游,热血传奇手游,屠龙刀,1.76,传奇手游攻略,热血传奇"><meta name="description" content="《沙巴克传奇》是由盛大网络最新力推的正版传奇IP手机游戏,游戏不仅继承了传奇游戏的核心玩法,延续了传奇类游戏的经典设定,更是支持手机千人同屏的攻城战.无论是精致细腻的地图场景,还是眩人双目的技能都会带给玩家不一样的感受.《沙巴克传奇》将带你真正地重拾兄弟情义,点燃激情,让我们再战沙巴克,我就是盛大传奇!"><meta name="applicable-device" content="pc,mobile"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"><meta http-equiv="X-UA-Compatible" content="IE=9;IE=8;IE=7;IE=EDGE,chrome=1">
         <link type="text/css" rel="stylesheet" href="cssforpc/201512122.css">
        <link rel="stylesheet" href="cssforpc/footer.css">
     
       <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
     
        <script src="js&css/hm.js"></script><script type="text/javascript" language="javascript" src="js&css/jquery-1.js"></script>
        <script type="text/javascript" language="javascript" src="js&css/base-20151217.js" charset="gb2312"></script>
        <!-- <script type="text/javascript" src="/rsc/js/tan.js?v=16" charset="gb2312"></script> -->
    <!--兼容ie6-->
    <!--[if IE 6]>
    <script src="/rsc/js/pngAlaph.js?v=16"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--百度统计-->   
     
     </head>
    <body>


<%
	int pageid;
	int pagen; 
	String pages=request.getParameter("pagenum"); 
if(pages==null){
	 pageid=1;	
} 
else{ 
	Integer tem = Integer.valueOf(request.getParameter("pagenum")); 
	pageid = tem.intValue();
}
%>

    <!--视频弹出内容 start-->
<div id="dialog-overlay"></div>
<div class="alertBox" id="alertBox">
    <div class="alertCon">
        <div id="ajaxCon">
            <!-- ajax cont -->
        </div>
        <p style="margin:0" class="close" title="关闭"></p>
    </div>
</div>
<!--视频弹出内容 end-->        
<div class="nWrap" style="">
<div class="header"></div> 
            <div class="nWrapper" >
                <div class="nW_top">
                 <div class="logo"><a href="index.jsp"></a></div>
<div class="nav">
    <div class="navBtn b1"><a href="index.jsp"></a></div>
    <div class="navBtn b2"><a href="News.jsp"></a></div>
    <div class="navBtn b3"><a href="Events.jsp"></a></div>
    <div class="navBtn b4"><a href="Strategy.jsp"></a></div>
    <div class="navBtn b5"><a href="http://tieba.baidu.com/f?ie=utf-8&kw=%E7%81%B5%E5%9F%9F%E4%BB%99%E9%AD%94&fr=search"></a></div>
    <div class="navBtn b6"><a href="qhyy.jsp"></a></div>
</div>
<div class="movBtn"><a class="popcl" href="http://sdo-shabake.com/video"></a></div>
                </div>
                <div class="conNav">
                    <span>玩法攻略</span>
                    <em><a href="index.jsp">官网首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;<a>游戏玩法</a></em>
                </div>
                <div class="nW_main">
                    <div class="conMain">
                        <div class="con">
                            <!-- 新闻类别按钮 开始-->
                            <div class="nNewsTit">
                                <ul style="margin-left:10px">
                                
                                <li class="" id="nli_0"><a href="Strategy.jsp" class="roll_t" title="">游戏玩法</a></li>
                                <li class="" id="nli_1"><a href="gameplay.jsp" class="roll_t" title="">游戏攻略</a></li>
                                
                                
                                </ul>
                            </div>
                            <div class="nNews_xian"><div class="red2" style="left:106px;"></div></div>
                            <div class="h_15"></div>
                            <!-- 新闻类别按钮 结束-->
                            <!-- 新闻列表 开始-->
                            <div id="news_0" style="display:block;" class="list">
                            <ul>
                              <script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "GET",
                                      url: "Selnews?type=21&pagenum="+<%=pageid%>+"&count=10",
                                      data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#ff4106;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em><span style="color:#ff4106;">'+comment['lastModifyTime']+'</span></a></li>'
                                                      		  
                                                  })
                                     $('#news_0 ul').html(html);
                                   }
                                 })

                               })
                              </script>
                        </ul>
                            </div>

                          
                      
                            <div class="page">
                            
                           <%
                            
                             if(pageid==1){                            
                             out.print("&nbsp<span class='de_prev'>上一页&nbsp </span>");
                             }else{
                            	 pagen=pageid-1;
                            	 out.print("&nbsp<a href='Strategy.jsp?type=2&pagenum="+pagen+"&count=15'>上一页&nbsp </a>");
                             }  
                             
                           %>
                           <% 
                       		Connection con = null;
                        	PreparedStatement ps = null;
                        	ResultSet rs = null;
                        	String exchange = "";
                        	int rowCount=0;
                        	try{
                        		con = ConnectionService.getInstance().getConnectionForLocal();   		
                        		String sql = "SELECT COUNT(1) rowCount FROM tbl_cms_contents WHERE status=1 and catalog='strategy'";
                        		ps = con.prepareStatement(sql);
                        		rs = ps.executeQuery();
                        		while(rs.next()){
                        		rowCount = rs.getInt("rowCount");
                        		if(rowCount>pageid*15){
                        			 pagen=pageid+1;
                        			 out.print("&nbsp<a href='Strategy.jsp?type=2&pagenum="+pagen+"&count=15'>下一页&nbsp </a>");
                                     
                        		}else{
                        			
                        			 out.print("&nbsp<span class='de_prev'>下一页&nbsp </span>");
                        		}
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

                        </div>
                    </div>

                    <div style="position: absolute; top: 0px; margin-left: 307px;" class="fr">
    <div class="fr_ewm"><span></span></div>    <a href="http://cdnsrc.xtonegame.com/download/lyxm/lyxm_xt.apk">
    <div class="fr_btn1" style="cursor:pinter;"></div></a>
    <a href="javascript:alert('暂未开通，敬请期待')">
    <div class="fr_btn2" style=""></div></a>
    <!--<div class="fr_btn1"><a href="javascript:alert('敬请期待！')"></a></div>
    <div class="fr_btn2"><a href="javascript:alert('敬请期待！')"></a></div>-->
    <div class="fr_goTop"><a id="goTop" href="javascript:void(0)"></a></div>
</div>

                </div>


                <div class="clearit"></div>
            </div>
            <div class="clearit"></div>
        </div>
        <div class="footerx">
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
    <!--<script type="text/javascript">var CopyRightcss = 'http://static.sdg-china.com/sdg/pic/SDGCOPYRIGHT/each/black.css';</script>-->
    <!--<script type="text/javascript" src="http://static.sdg-china.com/copyright/js/sbkcqCopyRight.js" charset="gb2312"></script>-->

<script type="text/javascript">
	   $(document).ready(function(){
		   function showfirst(){
			   $('.nNewsTit li:first a').addClass("active");
			   $('.con #news_0').show();
		   }
		   window.onload=showfirst;		  
	   })
	 </script> 

</body></html>
