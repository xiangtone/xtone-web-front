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
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">
    <meta content="telephone=no, email=no" name="format-detection">
    <title>灵域仙魔</title>
    <metaname="viewport" content="width=100%, initial-scale=0.9"/>
	<link rel="stylesheet" type="text/css" href="jscss/newscss.css" media="all">
	<link rel="stylesheet" href="mui/dist/css/mui.css">
    <link rel="stylesheet" href="mui/sass/mui.scss">
    <link rel="stylesheet" href="mui/dist/css/mui.min.css">

	 <link rel="stylesheet" type="text/css" href="mui/dist/css/mui.css" media="all">
	<script src="jscss/jquery-1.7.js"></script>
	<script src="mui/dist/js/mui.js"></script>
	<script src="mui/dist/js/mui.min.js"></script>
</head>

<body>
	     <%
//                System.out.println(request.getHeader("referer"));
                int pagenum;
               try{
                Integer tem = Integer.parseInt(request.getParameter("page"));
            
                	pagenum = Integer.valueOf(tem);
                 }catch(Exception ex){
                	 pagenum = 1;
                 }
              int[] countall= {15,15,15,15,15};
              
              
          %>  


    <div style="transform: scale(2.12812); transform-origin: left top 0px;" class="container">
        <!--页眉-->
<header class="clearfix">
    <!--顶栏-->
   
    <!--顶栏 end-->
    <!--头图-->
    <section class="head-pic" style="height:400px;">
       <div id="slider1" class="mui-slider" style="width:100%;height:413px;align:center;margin-left:0px;margin-top:0px;">
			<div class="mui-slider-group mui-slider-loop">
				<!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
				<div class="mui-slider-item mui-slider-item-duplicate">
					<a href="#">
						<img src="images/activity2.png">
					</a>
				</div>
				<!-- 第一张 -->
				<div class="mui-slider-item">
					<a href="#">
						<img src="images/activity1.png">
					</a>
				</div>
				<!-- 第二张 -->
				<div class="mui-slider-item">
					<a href="#">
						<img src="images/activity2.png">
					</a>
				</div>
				
				
				<!-- 额外增加的一个节点(循环轮播：最后一个节点是第一张轮播) -->
				<div class="mui-slider-item mui-slider-item-duplicate">
					<a href="#">
						<img src="images/activity1.png">
					</a>
				</div>
			</div>
			<div class="mui-slider-indicator">
				<div class="mui-indicator mui-active"></div>
				<div class="mui-indicator"></div>
			</div>
		</div>
    </section>
    <!--头图 end-->
</header>        
        <!--页眉 end-->

        <section class="location">
            <div class="loc-l"><a data-sb-indepth="true" href="index.jsp">官网首页</a>&nbsp;&gt;&nbsp;新闻公告</div>
            <a data-sb-indepth="true" class="goback" href="index.jsp">返回</a>
        </section>

        <section class="list">
            <div class="ln-nav">
                <ul>
                    <li class="active">综合</li>
                    <li>新闻</li>
                    <li>公告</li>
                    <li>活动</li>
                    <li>玩法攻略</li>
                </ul>
            </div>

            <ul class="ln-con">
                <li class="ln-item active">
                    <ul id="ul1">
                       <script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "post",
                                      url: "../news?type=0&pagenum="+<%=pagenum%>+"&count=15",
                                      data: {type:1,count:15},
                                    		  //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('.ln-item  #ul1').html(html);
                                   }
                                 })

                               })
                              </script>
                          </ul>  
                    <a class="more" id="more1" data-id="1002001000000000000" href="javascript:void(0);">查看更多</a>
                    
                    
                    <%
                        Connection con=null;
                     	PreparedStatement ps = null;
                     	ResultSet rs = null;
                     	String exchange = "";
                     	int[] rowCount= new int[5];
                     	try{
                     		con = ConnectionService.getInstance().getConnectionForLocal();   		
                     		String sql = "SELECT COUNT(1) rowCount FROM tbl_cms_contents WHERE status=1 and  catalog in ('news','announce','activity')";
                     		ps = con.prepareStatement(sql);
                     		rs = ps.executeQuery();
                     		while(rs.next()){
                     		rowCount[0] = rs.getInt("rowCount");
                     			
                     			
                     		
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
                 
                     <script type="text/javascript">
                     $(".more").click(function () {
                    	   var count;
                    	   if($("#ul1 li").length< <%=rowCount[0] %> )
                    		   {
                    		   	count=$("#ul1 li").length+0+5;
                    		   }else{ count = $("#ul1 li").length+0+0}
                                  $.ajax({
                                    type: "GET",
                                     url: "../news?type=0&pagenum=1&count="+count,
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('.ln-item #ul1').html(html);
                                   }
                                 })
                   				
                               })
                      </script>
                 
                    
                </li>
                <li class="ln-item">
                   <ul id="ul2">              
                              <script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "post",
                                      url: "../news?type=1&pagenum="+<%=pagenum%>+"&count=15",
                                      data: {type:1,count:15},
                                    		  //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('.ln-item  #ul2').html(html);
                                   }
                                 })

                               })
                              </script>
                           </ul>
                   <a class="more"  id="more2" data-id="1002001000000000000" href="javascript:void(0);">查看更多</a>
                     
                    <%

                     	try{
                     		con = ConnectionService.getInstance().getConnectionForLocal();   		
                     		String sql = "SELECT COUNT(1) rowCount FROM tbl_cms_contents WHERE status=1 and  catalog='news'";
                     		ps = con.prepareStatement(sql);
                     		rs = ps.executeQuery();
                     		while(rs.next()){
                     		rowCount[1] = rs.getInt("rowCount");                    		
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
                 
                     <script type="text/javascript">
                     $("#more2").click(function () {
                    	   var count;
                    	   if($("#ul2 li").length < <%=rowCount[1] %> )
                    		   {
                    		   	count=$("#ul2 li").length+0+5;
                    		   }else{ count = $("#ul2 li").length+0+0;}
                                  $.ajax({
                                    type: "GET",
                                     url: "../news?type=1&pagenum=1&count="+count,
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('.ln-item #ul2').html(html);
                                   }
                                 })
                   				
                               })
                      </script>
                </li>
                <li class="ln-item">
                     <ul id="ul3">
                    
                            <script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "GET",
                                      url: "../news?type=3&pagenum="+<%=pagenum%>+"&count=5",
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('#ul3').html(html);
                                   }
                                 })

                               })
                              </script>
                      </ul>
                    <a class="more" id="more3" data-id="1002002000000000000" href="javascript:void(0);">查看更多</a>
                        <%

                     	try{
                     		con = ConnectionService.getInstance().getConnectionForLocal();   		
                     		String sql = "SELECT COUNT(1) rowCount FROM tbl_cms_contents WHERE status=1 and  catalog='announce'";
                     		ps = con.prepareStatement(sql);
                     		rs = ps.executeQuery();
                     		while(rs.next()){
                     		rowCount[2] = rs.getInt("rowCount");                    		
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
                 
                     <script type="text/javascript">
                     $("#more3").click(function () {
                    	   var count;
                    	   if($("#ul3 li").length < <%=rowCount[2] %> )
                    		   {
                    		   	count=$("#ul3 li").length+0+5;
                    		   }else{ count = $("#ul3 li").length+0+0;}
                                  $.ajax({
                                    type: "GET",
                                     url: "../news?type=3&pagenum=1&count="+count,
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('.ln-item #ul3').html(html);
                                   }
                                 })
                   				
                               })
                      </script>
                </li>
                <li class="ln-item">
                  <ul id="ul4">
                                 
                                 <script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "GET",
                                      url: "../news?type=2&pagenum="+<%=pagenum%>+"&count=15",
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('.ln-item #ul4').html(html);
                                   }
                                 })

                               })
                              </script>                                     
                    </ul>
                     <a class="more" id="more4" data-id="1002003000000000000" href="javascript:void(0);">查看更多</a>
                         <%

                     	try{
                     		con = ConnectionService.getInstance().getConnectionForLocal();   		
                     		String sql = "SELECT COUNT(1) rowCount FROM tbl_cms_contents WHERE status=1 and  catalog='activity'";
                     		ps = con.prepareStatement(sql);
                     		rs = ps.executeQuery();
                     		while(rs.next()){
                     		rowCount[3] = rs.getInt("rowCount");                    		
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
                 
                     <script type="text/javascript">
                     $("#more4").click(function () {
                    	 
                     
                    	   var count;
                    	   if($("#ul4 li").length < <%=rowCount[3] %> )
                    		   {
                    		   	count=$("#ul4 li").length+0+5;
                    		   }else{ count = $("#ul4 li").length+0+0;}
                                  $.ajax({
                                    type: "GET",
                                     url: "../news?type=2&pagenum=1&count="+count,
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('.ln-item #ul4').html(html);
                                   }
                                 })
                   				
                               })
                      </script>
                </li>
                <li class="ln-item">
                   <ul id="ul5">
                       <script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "GET",
                                      url: "../guides?type=0&pagenum="+<%=pagenum%>+"&count=15",
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('.ln-item #ul5').html(html);
                                   }
                                 })

                               })
                              </script>        
                        
                                                 </ul>
                    <a class="more" id="more5" data-id="1002004000000000000" href="javascript:void(0);">查看更多</a>
                    <%

                     	try{
                     		con = ConnectionService.getInstance().getConnectionForLocal();   		
                     		String sql = "SELECT COUNT(1) rowCount FROM tbl_cms_contents where status=1 and catalog in('play','strategy')";
                     		ps = con.prepareStatement(sql);
                     		rs = ps.executeQuery();
                     		while(rs.next()){
                     		rowCount[4] = rs.getInt("rowCount");   
                     		System.out.println(rowCount[4]);
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
                 
                     <script type="text/javascript">
                     $("#more5").click(function () {
                    	 
                     
                    	   var count;
                    	   if($("#ul5 li").length < <%=rowCount[4] %> )
                    		   {
                    		   	count=$("#ul5 li").length+0+5;
                    		   }else{ count = $("#ul5 li").length+0+0;}
                                  $.ajax({
                                    type: "GET",
                                     url: "../guides?type=0&pagenum=1&count="+count,
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'" target="_blank"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('.ln-item #ul5').html(html);
                                   }
                                 })
                   				
                               })
                      </script>
                    
                </li>
            </ul>

        </section>
<!-- 
<footer style="height:260px">
		<img src="images/qqinfo.png">
		<img src="images/companyinfo.png">
		
	
</footer>		   -->  
    </div>

    <script src="jscss/zepto.min.js"></script>
    <script src="jscss/scale.js"></script>
    <script src="jscss/base1.js"></script>
    <script>  

function buildHtml(res) {
    var html = "";
    html = '<li><a href="/article/' + res.id + '">'+res.title+'</a><span></span></li>';
    return html;
}

var slider1 = mui("#slider1");
slider1.slider({
	interval: 3000
});
    </script>





</body></html>
