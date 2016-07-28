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
<html lang="zh-cn"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta property="qc:admins" content="15472131256533256375">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  
    <link rel="shortcut icon" href="" type="image/x-icon"><meta name="Keywords" content="">
	<link rel="stylesheet" type="text/css" href="js&css/common.css">
    <script type="text/javascript" src="js&css/jquery-1.js"></script>
    <script type="text/javascript" src="js&css/slide.htm"></script>
    <script type="text/javascript" src="js&css/placeholderfriend.js"></script>
    <script type="text/javascript" src="js&css/jquery.js"></script>
	<title>灵域仙魔</title>
	 <script type="text/javascript">

              width_screen=document.documentElement.clientWidth;
              bodyheight=1.555*document.documentElement.clientWidth;
            
   </script> 
	
	
		
	<script type="text/javascript">    
    window.onerror = function () { return true; }    
    </script>   
    <script type="text/javascript">
    function jjkf(){
    	window.location.href="qhyy.jsp";    	
    	
    }
    
    </script>
    
    
  <script type="text/javascript">
   $(function(){
    focus:input =function(){
     var oval = $(this).val();
     if (oval != " ") {
      $(this).val(" ");
     };
     blur:input = function(){
     if (oval == " ") {
      $(this).val(oval);
     };
    }
   }(jQuery);
  </script>
   <script type="text/javascript">
	   $(document).ready(function(){
		   function showfirst(){
			   $('#ftab-0').show();
		   }
		   window.onload=showfirst;		  
	   })
	 </script>    
</head>
<body>
<!-- <div class="erweima"> -->
<!--   <img src="images/erweima.jpg" alt=""> -->
<!-- </div>  -->
     <div class="fbg">
         <div class="fcontainer">
             <div class="flogo"><a href="index.jsp"><img src="images/flogo.png" alt="logo"></a></div>
             <!-- 视频链接 -->
             <div class="fv">
				<!--                  <div style="text-align:center; bottom:0px;"><a href="javascript:jjkf()"><img src="images/qhyy.png"></a></div> -->
             
              <div style="width:100%;height:70%"></div>
             <a href="qhyy.jsp" target="_blank">            
             <div id="qhyy"></div>
             <% 
            
         	Connection con = null;
         	PreparedStatement ps = null;
         	ResultSet rs = null;
         	String exchange = "";
         	int rowCount=0;
         	try{
         		con = ConnectionService.getInstance().getConnectionForLocal();   		
         		String sql = "SELECT COUNT(1) rowCount FROM tbl_orders_users";
         		ps = con.prepareStatement(sql);
         		rs = ps.executeQuery();
         		while(rs.next()){
         		rowCount = rs.getInt("rowCount");
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
             
             
             <div style="margin-top:10px;text-align:center;">已有<%=rowCount %>人预约</div>
             </a>
             </div>
         </div>
         <!-- 下载 -->
         <div class="fload">
            <ul>
               <li id="li_1"><a href="http://uri6.com/2euqUv"></a></li>
               <li id="li_2"><a href="index.jsp"></a></li>
               <li id="li_3"><a href="http://uri6.com/YnmAZf"></a></li>
            </ul>
         </div>
         <!-- 职业介绍 -->
        <!--  <div class="fbg1">    
             <script type="text/javascript">
             $(function(){           	 
              $.ajax({           	  
            	  type: "GET",
                  url: "/lyxm.xtonegame.com/getjson",
                  data: {name:$("#name").val(),introduction:$("#introduction").val(),pic1:$("#pic1").val(),pic2:$("#pic2").val()},
                  dataType: "json",
                  success: function(data){
                      var html = '<h2><img src="js&css/ftit.png" alt=""></h2>';
                      $.each(data, function(commentIndex, comment){
                      	  
                          html+='<div id="ftab-'+commentIndex+'" class="ftab-main" style="display:none">'+
                                 '<img src="'+comment['pic2']+'" alt="" height="81px" width="185px">'+
                                '<span><img src="'+comment['pic1']+'"></span>'+
                                 '<p>'+comment['introduction']+'</p></div>'
                    	  
                      })
                      	  html+='<div class="ftab-conl"><ul>'
                      	  
                          $.each(data, function(commentIndex, comment){
                          			html+='<li id="l'+commentIndex+'" onclick=dofun('+commentIndex+')>'+comment['name']+'</li>'
                          })
                      
                      		html+='</ul></div>'
                      $('.fbg1').html(html);
                      		
                      //alert(html);		
          			}
            	  
              })                                    
              
             })
                  
             
             </script>
           
         </div> -->
         <div class="fbg1">         
                 <p><img src="images/zyjs.png" style="top:20px" />&nbsp职业介绍<p>
             <div class="ftab-main" id="ftab-0" style="z-index:0;">
             <table><tr>
			<td><img src="images\conxy.png";border=0;height=68px;width=140px></td>
			<td>&nbsp&nbsp&nbsp&nbsp</td>
			<td><img src="images/xydw.png" border=5;padding-left=20px></td>
			</tr></table>
               <!--   <img src="images\conxy.png" alt="" height="68px" width="140px">
                 <img alt="" src="images/xydw.png" float:left> -->
                 <span style="width:825px;height:395px;background:url(images/rwfs.png) left center;top:-90px;left:158px"></span>
                 <p>战场上最强大的杀手！手持法杖，掌控元素之力，高群攻伤害！技能多，依靠高超的技巧与风骚的走位更是让敌人眼花缭乱！</p>
             </div>
             <div class="ftab-main" id="ftab-1" style="display: none;">
                  <table><tr>
			<td><img src="images\conkz.png";border=0;height=68px;width=140px></td>
			<td>&nbsp&nbsp&nbsp&nbsp</td>
			<td><img src="images/kzdw.png" border=5;padding-left=20px></td>
			</tr></table>
                 <span style="left:430px"><img src="images\rwzs.png" ></span>
                 <p>战场上的先锋，手持利剑，勇闯敌阵！PK节奏爽快！1V1单挑很少有人能够完全正面的击败他！！</p>
             </div>
             <div class="ftab-main" id="ftab-2" style="display: none;">
                  <table><tr>
			<td><img src="images\conjl.png";border=0;height=68px;width=140px></td>
			<td>&nbsp&nbsp&nbsp&nbsp</td>
			<td><img src="images/jldw.png" border=5;padding-left=20px></td>
			</tr></table>
                 <span style="left:468px"><img src="images\rwds.png" alt="人物道士"></span>
                 <p>战场上最理想的辅助!并有神秘的召唤术，可召唤精灵、神兽、魔王作为强大的作战伙伴！还拥有治疗和增强防御等辅助手段！</p>
             </div>
             <div class="ftab-conl" style="position:absolute;z-index:1;margin-top:20px;">
                <ul>
                   <li id="l0"><a id="a0" class="" href="javascript:void(0);"></a></li>
                   <li id="l1"><a id="a1" class="" href="javascript:void(0);"></a></li>
                   <li id="l2"><a id="a2" class="" href="javascript:void(0);"></a></li>
                </ul>
             </div>
         </div>
         
         
         
         <!-- 上线 -->
             <div class="state-line" style="display:none;">
                  <ul>
                    <span class="ffsl"></span>
                    <span class="ffsr"></span>
                    <li class="active">
                      <i>
                      <span class="fsl"></span></i>
                      <p>版正式上线！</p>
                    </li>
                    <li>
                      <i><span class="fsr"></span>
                      <span class="fsl"></span></i>
                      <p>版正式上线！</p>
                    </li>
                    <li>
                      <i><span class="fsr"></span>
                      <span class="fsl"></span></i>
                      <p>安卓版正式上线！</p>
                    </li>
                    <li>
                      <i><span class="fsr"></span>
                      </i>
                      <p>安卓版正式上线！</p>
                    </li>
                  </ul>
             </div>

     </div>
     <div class="footerx">
    <div class="logox" style="padding-left:20px;">
        <div class="logo-s" style="padding:0 50px;">
        <a class="baidux"> <img src="images/footer.png" style="border-right: 1px solid grey;" alt=""></a>
    </div>
        <div class="font">
           <div class="font">
        	<p>备案号:粤ICP备11029425号-2 丨粤网文[2013]0810-210号丨</p>
            <p>抵制不良游戏 拒绝盗版游戏 注意自我保护 谨防上当受骗</p>
            <p>适度游戏益脑 沉迷游戏伤身 合理安排时间 享受健康生活</p>
    	    </div>
        </div>
    </div>

</div>
 <script>
        $(document).ready(function(){
            var oConl = $('.ftab-conl li');
            oConl.click(function(){
               var num = $(this).index();
               $('.ftab-main').hide();
               $('#ftab-'+num).show();
               $('.ftab-conl li a').removeClass("on2");
               $('.ftab-conl li a#a'+num).addClass("on2");	
            });
        });
</script>
	 
</body>
</html>