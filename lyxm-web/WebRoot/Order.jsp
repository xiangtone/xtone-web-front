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
    window.onerror = function () { return true; }    
    </script>   
    <script type="text/javascript">
    function jjkf(){
    	alert("即将开放，敬请期待！");
    	
    	
    }
    
    </script>  
</head>
<body>
			
     <div class="fbg" style="background:url(images/orderbg.jpg) center top no-repeat;">
         <div class="fcontainer">
             <div class="flogo"><a href="index.jsp"><img src="images/flogo.png" alt="logo"></a></div>
             <!-- 视频链接 -->
             <div class="fv" style="text-align:center;height:600px">
		  
              <div style="width:100%;height:50%"></div>
           <div style="margin-left:40px;margin-bottom:20px;">
            <table><tr>
			<td><img src="images\xian_left.png";border=0;height=68px;width=140px></td>
			<td><img src="images/sep_first.png"></td>
			<td><img src="images/xian_right.png" border=0;padding-left=20px></td>
			</tr>
			</table>
			</div>
             <a href="javascript:jjkf()">            
             <div id="qhyy1"></div>
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
             
             <div style="margin-top:10px;text-align:center;font-size:20px;color:red">已有<%=rowCount %>人预约</div>
             </a>
             </div>
             
         		<div class="box3">
				<p class="suc_yy">成功预约即可获得</p>
				<div class="bx_frame pr">
					<div class="bx_pot"></div>
					<span class="hand sp pa"></span>
					<a href="javascript:;" class="lq_gift_btn pa sp"></a>
					<div class="bx_fc pa">
						<div class="fc pr">
							<table class="fc_tab">
								<tbody><tr>
									<td class="ft">宝匣内容：</td>
									<td>钻石x88 </td>
								</tr>
								<tr>
									<td></td>
									<td>金币x8888 </td>
								</tr>
								<tr>
									<td></td>
									<td>浪漫值x20 </td>
								</tr>
								<tr>
									<td></td>
									<td>五色石x1888 </td>
								</tr>
							</tbody></table>
							<p>礼包将于不删档测试期在游戏内发放，请关注官方信息及时注册领取哦</p>
							<i class="sp pa"></i>
						</div>
					</div>
				</div>
			</div>
             
             
             <div style="text-align:center; weidth:1002;height:400px">
             <div style="margin-left:40px;margin-bottom:20px;">
            <table><tr>
			<td><img src="images\xian_left.png";border=0;height=68px;width=140px></td>
			<td><img src="images/sep_first.png"></td>
			<td><img src="images/xian_right.png" border=0;padding-left=20px></td>
			</tr>
			</table>
			</div>
             <div>2</div><div>3</div><div>4</div>            
             
             </div>
             
             
          
             
             
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

	 
</body>
</html>