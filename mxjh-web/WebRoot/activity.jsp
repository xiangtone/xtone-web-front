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
		<link rel="shortcut icon" href="" type="image/x-icon"><meta name="Keywords" content="">
		<meta name="description" content=""><meta name="applicable-device" content="pc,mobile"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"><meta http-equiv="X-UA-Compatible" content="IE=9;IE=8;IE=7;IE=EDGE,chrome=1">
        <link type="text/css" rel="stylesheet" href="cssforpc/201512122.css">
        <link rel="stylesheet" href="cssforpc/footer.css">
     
       <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
     
        <script src="js&css/hm.js"></script><script type="text/javascript" language="javascript" src="js&css/jquery-1.js"></script>
        <script type="text/javascript" language="javascript" src="jsforpc/base-20151217.js" charset="gb2312"></script>
        <!-- <script type="text/javascript" src="/rsc/js/tan.js?v=16" charset="gb2312"></script> -->
    <!--兼容ie6-->
    <!--[if IE 6]>
    <script src="/rsc/js/pngAlaph.js?v=16"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--百度统计-->   
    <script type="text/javascript" src="js&css/baidu.js"></script>   
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
                 <div class="logo"><a target="_blank" href="index.jsp"></a></div>
<div class="nav">
    <div class="navBtn b1"><a href="indexIn.jsp"></a></div>
    <div class="navBtn b2"><a href="News.jsp"></a></div>
    <div class="navBtn b3"><a href="Events.jsp"></a></div>
    <div class="navBtn b4"><a href="Strategy.jsp"></a></div>
    <div class="navBtn b5"><a href="http://tieba.baidu.com/f?kw=%E6%A2%A6%E6%83%B3%E6%B1%9F%E6%B9%96"></a></div>
    <div class="navBtn b6"><a href="qhyy.jsp"></a></div>
</div>
<div class="movBtn"><a class="popcl" href="http://sdo-shabake.com/video"></a></div>
                </div>
                <div class="conNav">
                    <span>新闻公告</span>
                    <em><a href="index.jsp">官网首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;<a>新闻公告</a></em>
                </div>
                <div class="nW_main">
                    <div class="conMain">
                        <div class="con">
                            <!-- 新闻类别按钮 开始-->
                            <div class="nNewsTit">
                                <ul>
                                <li class="" id="nli_0"><a href="News.jsp" class="roll_t" title="">综合</a></li>
                                <li class="" id="nli_1"><a href="newsa.jsp" class="roll_t" title="">新闻</a></li>
                                <li class="" id="nli_2"><a href="activity.jsp" class="roll_t" title="">活动</a></li>
                                <li class="" id="nli_3"><a href="announce.jsp" class="roll_t" title="">公告</a></li>
                                
                                </ul>
                            </div>
                            <div class="nNews_xian"><div class="red2" style="left:106px;"></div></div>
                            <div class="h_15"></div>
                            <!-- 新闻类别按钮 结束-->
                            <!-- 新闻列表 开始-->
                          <div id="news_2" style="display:none;" class="list">
                          <ul>
                            <script type="text/javascript">
                              $(document).ready(function(){
                                $.ajax({
                                  type: "GET",
                                    url: "Selnews?type=03&pagenum="+<%=pageid%>+"&count=10",
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
                                  $('#news_2 ul').html(html);
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
                            	 out.print("&nbsp<a href='activity.jsp?type=2&pagenum="+pagen+"'>上一页&nbsp </a>");
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
                        		String sql = "SELECT COUNT(1) rowCount FROM tbl_cms_contents WHERE status=1 and catalog='activity'";
                        		ps = con.prepareStatement(sql);
                        		rs = ps.executeQuery();
                        		while(rs.next()){
                        		rowCount = rs.getInt("rowCount");
                        		if(rowCount>pageid*15){
                        			 pagen=pageid+1;
                        			 out.print("&nbsp<a href='activity.jsp?type=2&pagenum="+pagen+"&count=15'>下一页&nbsp </a>");
                                     
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
    <div class="fr_ewm">
    <span><img src="img/wxewm01.png" height="98px" width="98px">
    </span></div>   
    <a href="http://cdnsrc.xtonegame.com/download/lyxm/lyxm_xt.apk">
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
			   $('.nNewsTit #nli_2 a').addClass("active");
			   $('.con #news_2').show();
		   }
		   window.onload=showfirst;		  
	   })
	 </script> 

</body></html>
