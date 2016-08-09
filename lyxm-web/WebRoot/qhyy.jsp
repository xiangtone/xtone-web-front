<%@page import="org.mxkl.util.CheckLoad"%>
<%@page import="org.common.util.ConnectionService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.lyxm.info.Counter" %>
<%    
CheckLoad check = new CheckLoad();

if(check.JudgeIsMoblie(request)){
  response.sendRedirect("mobile.jsp");
}


String phone = null;
try{
phone = (String)session.getAttribute("id");}catch(Exception ex){
	ex.printStackTrace(); 
}

	Counter CountFileHandler=new Counter();//创建对象    
	      int count=0;    
	  if(application.getAttribute("count")==null){     
		  count=CountFileHandler.readFile(request.getRealPath("/")+"count.txt");//读取文件获取数据赋给count    
		  application.setAttribute("count",new Integer(count));  }  
	      count=(Integer)application.getAttribute("count");  

	     /*  if(session.isNew()) */
	    	 count = count+1;  
	      application.setAttribute("count",count);  
	      CountFileHandler.writeFile(request.getRealPath("/")+"count.txt",count);//更新文件记录
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- [if lt IE 7]> <html class="ie6" lang="en"> <![endif] -->
<!-- [if IE 7]> <html class="ie6" lang="en"> <![endif] -->
<!-- [if IE 8]> <html class="ie6" lang="en"> <![endif] -->
<!-- [if IE 9]> <html class="ie6" lang="en"> <![endif] -->
<!-- [if (gt IE 9)|!(IE)]><!-->
<html lang="zh-CN">
<!-- <![endif] -->
<head>
<meta property="qc:admins" content="2514161501560476571556375710116230" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta name="robots" content="all">
<meta name="author" content="Tencent-CP">
<meta name="Description" content="《全民斗战神》是由《斗战神》原班团队倾力打造的腾讯3D动作手游钜制。连击、浮空、闪避！极具操控感的操作系统，挑战操作极限！拳拳到肉，真实场景反馈，让你领略极致的打击快感！首创七十二变玩法，突破职业桎梏，一次成长，玩遍所有职业！ ">
<title>灵域仙魔</title>
<!-- <script>
(function(){
	var a=navigator.userAgent;
	if(-1!=a.indexOf("iPhone")||-1!=a.indexOf("iPad")||-1!=a.indexOf("iPod")||-1!=a.indexOf("Android")){
		a=document.referrer;
		if(-1<a.indexOf("baidu.com")||-1<a.indexOf("sogou.com")||-1<a.indexOf("haosou.com")||-1<a.indexOf("hao76.com"))
			if(a=void 0,window.sessionStorage)sessionStorage.setItem("channel","seo");
			else{var a=a||0,b="";0!=a&&(b=new Date,b.setTime(b.getTime()+1E3*a),b="; expires="+b.toGMTString());document.cookie="channel="+escape("seo")+b+"; path=/"}self.location="/m/"}})();
</script>
 -->
  <script type="text/javascript">

              width_screen=document.documentElement.clientWidth;
              bodyheight=document.documentElement.clientWidth;
              
       </script> 

<style>
/* reset */
div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td{margin:0;padding:0}
table{border-collapse:collapse;border-spacing:0}
address,caption,cite,code,dfn,em,strong,th,var{font-weight:normal;font-style:normal}
ol,ul{list-style:none}
caption,th{text-align:left}
h1,h2,h3,h4,h5,h6{font-weight:normal;font-size:100%}
q:before,q:after{content:''}
fieldset,img,abbr,acronym{border:0}

/* 页面样式 */
.c:before,.c:after {content:"";display:table}
.c:after {clear:both}
.c {zoom:1}
body {font:12px/1.5;
font-family:"\5FAE\8F6F\96C5\9ED1";
text-align:justify;
background:top center no-repeat;
background-image:url(images/orderbg.jpg);
}
a{text-decoration:none;overflow:hidden;}
a:hover{text-decoration:none;}
.wrap,.flash_box{width: 100%;min-width: 1000px;}
.wrap{width: 100%;min-width:1000px;}
.wrap{background:url() no-repeat;}
.wrap .container,.flash_box .container{width:1000px;margin:0 auto;}
.pr{position:relative;}
.pa{position:absolute;}
.fl{float: left;}
.fr{float: right;}
.hide{display:block;width:0;height:0;overflow:hidden;}
.db{display:block;text-indent:-999em;}
:focus{outline: none;}
.foot-cpright{min-width: 960px!important;}
.sp,.ico-topbtn,.txt-topbtn,.gift_list li .bx_num{background: url() no-repeat;}
/*foot*/

/*head*/
.head1{background: url() no-repeat;height: 400px;}
.logo{width: 190px;height: 121px;top:20px;left:0;z-index: 88;background: url(images/flogo.png) no-repeat;}
.btn-home{top: 30px;right: 10px;width: 125px;height: 42px;padding: 7px 18px 0 10px;}	
.ico-topbtn{float: left;background-position: 0 -60px;width: 35px;height: 35px;}
.txt-topbtn{float: right;background-position: -53px -74px;width: 78px;height: 20px;margin-top: 8px;}
		
.btn-home:hover .ico-topbtn{animation:swingleft 0.5s 0s ease-out both;-webkit-animation:swingleft 0.5s 0s ease-out both;}		
.btn-home:hover .txt-topbtn{animation:swingright 0.5s 0s ease-out both;-webkit-animation:swingright 0.5s 0s ease-out both;}

/*content*/
.content{background: url() no-repeat;}
.content1{background: url() no-repeat 0 1000px;}
.box1{padding-top: 400px;}

.box1 a,.yy_b_btn1{left:150px;bottom:40px;display: block;width: 500px;height: 111px;animation:zoomIn 0.5s 0s ease-out both;-webkit-animation:zoomIn 0.5s 0s ease-out both;}

.box1 a,.yy_b_btn{left:270px;bottom:-1px;display: block;width: 500px;height: 111px;background:url("images/btnorder.png");animation:zoomIn 0.5s 0s ease-out both;-webkit-animation:zoomIn 0.5s 0s ease-out both;}
.box1 a,.yy_b_btn:hover{background:url("images/btnorderh.png");}



.btn_ht{height: 99px;}
.btn_ht1{height: 59px;}
.num{font-size: 16px;color: #e0bc93;text-align: center;padding-top: 20px;}
.num span{color:red;margin: 0px 4px;}

.box2{height: 275px;}
.jdt_bg{width: 1000px;height: 270px;background: url(http://game.gtimg.cn/images/qmdzs/cp/a20160509gwyy/jdt.png) no-repeat;}

.jdt_list.on1 .p1,.jdt_list.on2 .p2,.jdt_list.on3 .p3,.jdt_list.on4 .p4{color: #b3521d;}
.jdt_list.on1 .st{left:10px;top:40px;}
.jdt_list.on2 .st{left:242px;top:25px;}
.jdt_list.on3 .st{left:552px;top:25px;}
.jdt_list.on4 .st{left:818px;top:25px;}
.jdt_list .st{position:absolute;width: 218px;height: 116px;}
.jdt_list p{position:absolute;text-align: center;font-size: 20px;color: #cd9137;font-weight: bold;}
.jdt_list p.p1{left: 0px;top:205px;}
.jdt_list p.p2{left: 222px;top:140px;}
.jdt_list p.p3{left:479px;top:190px;}
.jdt_list p.p4{left: 809px;top:140px;}
.jdt_list p.wd1{width: 213px;}
.jdt_list p.wd2{width: 247px;margin-left: 16px;}
.jdt_list p.wd3{width: 329px;}
.jdt_list p.wd4{width: 193px;}
.jdt_pt{display: block;width: 150px;height: 110px;position: absolute;}
.pt_dzw{left: 30px;top:140px;}
.d_ip{left: 285px;top:120px;}
.z_st{right: 282px;top:120px;}
.b_sd{right: 18px;top:120px;}
.box3{padding: 40px 0px 110px;}
.suc_yy{text-align:center;font-size: 16px;color: #ad8c62;line-height: 20px;}
.bx_frame{width: 460px;height: 235px;margin:0px auto;}
.bx_pot{width: 346px;height: 235px;margin: 0 auto;cursor: pointer;background:url(images/libaoxiang.png) center no-repeat;}
.hand{display: block;width: 52px;height: 65px;background-position:  -280px -155px;left: 210px;top:103px;cursor: pointer;}
.lq_gift_btn{left:120px;bottom:-45px;display: block;width: 237px;height: 35px;background:url(images/huoqulibao.png) center no-repeat;}
.bx_fc{left: 335px;top:-25px;display: none;}
.box4{padding-top: 65px;}
.gift_list{padding-left: 1px;}
.gift_list li{position:relative;width: 330px;float: left;margin-right: 4px;cursor: pointer;}
.gift_list li.z_index1{z-index: 30;}
.gift_list li.z_index2{z-index: 20;}
.gift_list li.z_index3{z-index: 10;}
.gift_list li.mr{margin-right: 0px;}
.gift_list li .bx_num{height: 43px;font-size: 22px;color: #500f0f;font-weight: bold;text-align: center;
						line-height: 36px;left: 94px;t}
.gift_list li a{display: block;height: 30px;font-size: 16px;color: #ffb454;text-align: center;line-height: 30px;
					text-decoration: underline;}
.gift_list li .gift_fc{position: absolute;top:16px;left: 244px;display: none;}
.gift_list li img{height:200px;width:240px;top:100px;left: 20px;}				
.gift_list li .suc_fd{width: 330px;font-size: 16px;font-weight: bold;color: #6f3818;text-align: center;}
.gift_list li .suc_fd em{font-style:normal;color: #fdcd59;font-weight: bold;}
.gift_list li  table{text-align:center}					
.yq_frid{position:relative;left:50%;margin-left:-220px;display:block;width: 441px;height: 93px;background:url("images/yqfrd.png") top center no-repeat;}
.ck_yq{text-align: center;font-size: 16px;color: #e0bc93;}
.ck_yq a{font-size: 16px;color: #e0bc93;line-height: 30px;text-decoration: underline;margin-left:10px;}
.ck_yq a:hover{text-decoration: underline;}
.ewm_frame{padding: 50px 0px 45px;}
.ewm_list{padding-left:300px;_padding-left:50px;}
.ewm_list li{float:left;border: 2px solid #73231c;margin-left: 100px;background: #ffffff;}
.ewm_list li img{display: block;border: none;}
.ewm_list li p{font-size: 16px;color: #570f0b;text-align: center;line-height: 30px;}
.fc{width: 220px;background: #fcedc1;padding:15px 0px;}
.tc{text-align: center;}
.fc_tab{width: 180px;margin:0px auto;}
.fc_b_tab{width: 200px;}
.fc_tab td.ft{font-size: 16px;}
.fc_tab td{font-size: 14px;color: #2f270f;height: 24px;line-height: 24px;text-align: left;}
.fc p{padding-top:5px;width:180px;font-size:14px;color: #6f623c;margin: 0px auto;}
.fc i{left:-12px;bottom:10px;display: block;width: 12px;height: 19px;background-position: -288px -124px;}
.flash_box{left: 0px;top:42px;width: 100%;height:800px;z-index: 9;margin-top:-30px;}
.flash_box .container{left: 50%;top: 0;margin-left: -500px;height: 100%;}
.login{left:0;bottom:120px;width: 1000px;text-align: center;font-size: 14px;color: #ffffff;line-height: 14px;}
.login a{color: #FCEDC1;margin:0px 5px;}

.box5{height: 403px;}
.box5_con{padding-top: 64px;}
.box5_frm{width: 331px;height:230px;float: left;padding-top: 26px;border: 1px solid #51291d;border-right: none;}
.box5_frm img{display: block;margin: 0 auto;}
.bd_rit{border-right:1px solid #51291d;}
.rcv_q{display: block;width: 264px;height: 59px;background-position: -7px -465px;margin:18px auto 0;}
.lg_dsp{font-size: 14px;color: #c09c6e;text-align: center;line-height: 28px;}
@keyframes swingleft{
    from{transform:translateX(-10px);opacity:0;}
    to{transform:translateX(0);opacity:1;}
}
@keyframes swingright{
    from{transform:translateX(10px);opacity:0;}
    to{transform:translateX(0);opacity:1;}
}
@-webkit-keyframes swingleft{
    from{-webkit-transform:translateX(-10px);opacity:0;}
    to{-webkit-transform:translateX(0);opacity:1;}
}
@-webkit-keyframes swingright{
    from{-webkit-transform:translateX(10px);opacity:0;}
    to{-webkit-transform:translateX(0);opacity:1;}
}		

@-webkit-keyframes zoomIn {
	0% {
		opacity: 0;
		-webkit-transform: scale3d(.3, .3, .3);
		transform: scale3d(.3, .3, .3);
	}
	50% {
		opacity: 1;
	}
}
@keyframes zoomIn {
	0% {
		opacity: 0;
		-webkit-transform: scale3d(.3, .3, .3);
		-ms-transform: scale3d(.3, .3, .3);
		transform: scale3d(.3, .3, .3);
	}
	50% {
		opacity: 1;
	}
}

/*pop*/
.dialog{display: none;}
.pop_con{width: 802px;background: url(http://game.gtimg.cn/images/qmdzs/cp/a20160509gwyy/tc_bg.jpg) no-repeat;border: 2px solid #ffeace;}
.pop{padding:0px 0px 20px;} 
.pop1_tit{width: 226px;height: 46px;background-position: 0 -340px;margin: 0px auto;}
.pop_tab{margin:20px auto 15px;width: 670px;height: 260px;}
.pop_tab td{font-size: 24px;color: black;}
.pop_tab td.tr{text-align: right;}
.pop_tab .lh{line-height: 21px;}
.pop_tab td .radio{float:left;display: block;height: 41px;line-height:41px;background-position: -284px -223px;padding-left: 30px;color: #fee5bf;overflow: hidden;}
.pop_tab td .ml{margin-left: 50px;}
.pop_tab td .radio.on{background-position: -284px -263px;}
.pop_tab td .pl{margin-left: 20px;}
.pop_tab .txt{width: 200px;height: 40px;background: #ffffff;font-size: 24px;line-height:40px;color: #6e6e6e;padding-left: 15px;border: none;}
.pop_tab .yzm{display:block;width: 155px;height: 40px;background: #ffd143;color: #4a2515;text-align: center;line-height: 40px;border:0px;font-size:20px}
.pop_desp{font-size:24px;color: #cda364;text-align: center;}
.submit{display: block;width: 215px;height: 60px;background: #ffd244;font-size: 30px;color: #4a2515;text-align: center;line-height: 60px;
			margin: 30px auto 0px;}
.pop_close{top:-1px;right:-45px;display: block;width: 47px;height: 47px;background-position:  -260px -328px;}

.pop2{font-size: 24px;color: #fee5bf;width: 680px;margin: 0px auto;}
.pop2_tab,.pop3_tab{width: 680px;margin: 15px auto;}
.pop2_tab td,.pop3_tab td{font-size: 24px;color: #fee5bf;height: 30px;}
.pop2_tab .wd{width: 360px;}
.pop2_desp{line-height: 30px;}
.pop2_desp1{line-height: 40px;}
.pop2_desp span{color: #ffa829;}
.pop2_desp a{display: inline-block;vertical-align:middle;width: 155px;height: 40px;background: #ffd143;color: #4a2515;text-align: center;
			line-height: 40px;margin-left: 30px;}
.p_line{width:670px;height: 20px;margin: 0px auto;}
.line_b{border-bottom: 1px solid #693f2d;}
.line_t{border-top: 1px solid #31190e;}
.p_pt{padding-top: 30px;}
.pop2_ewm{border: 1px solid #e39f45;width: 130px;height: 130px;margin: 20px auto 0;}

.pop_login{font-size: 24px;color: #fee5bf;padding:55px 0px;}
.pop_login p{text-align: center;line-height: 30px;}
.p_login{padding:60px 0px 0px 105px;_padding:60px 0px 0px 55px;}
.p_login a{display: block;float: left;margin-left: 60px;width: 205px;height: 65px;background: #ffd244;color: #4a2515;text-align: center;line-height: 65px;
			}
.p_login a.grn{background: #18f392;}

.phone{padding:90px 0px;font-size: 24px;color: #fee5bf;text-align: center;line-height: 40px;}
.ft{font-size: 24px;color: #fee5bf;line-height: 34px;}
.bx_y{padding:60px 0px;text-align: center;}
.pop8_tit{width: 219px;height: 46px;background-position: -7px -409px;margin: 0px auto;}
.pop8_pl{padding: 20px 0px 0px 150px;}
.pop8{padding:40px 0px;}

.bx_y2{text-align: center;padding:30px 0 0 0;}
.bx_y3{text-align: center;padding:0 0 30px 0;}

.ovhid span{display: inline-block;width: 460px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;}
.pop3_tab td{height: 40px;}
.pop8_tab{width: 470px;margin:15px auto 0;margin-left: 271px;}
.pop8_tab td{font-size: 24px;color: #fee5bf;height: 36px; padding:0 5px;}
.pop8_tab span{color: #ffa829;display:inline-block;width:240px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden; height:23px;}
.pop8_tl{text-align: left;padding-left: 280px;}
</style>
<style media="screen" type="text/css">#flash {visibility:hidden}#fsh {visibility:hidden}</style>
<link type="text/css" rel="stylesheet" href="js&css/buttons.css">
<script charset="gb2312" type="text/javascript" src="qhyy_files/cgi_official_website.htm"></script>
<script charset="gb2312" type="text/javascript" src="qhyy_files/data.js">
</script><script charset="gb2312" type="text/javascript" src="qhyy_files/data.js"></script>
<script charset="gb2312" type="text/javascript" src="qhyy_files/data.js"></script>
<script src="qhyy_files/report.htm" type="text/javascript"></script></head>
<body style="width:100%;height:auto;margin:0;">
<!--头部flash-->
<div class="flash_box pa">
	
	<div class="container pa">
	<% if(phone==null){
		out.write("<div style=\"margin-top:10px;margin-left:86.5%;color:#666666;font-size:15px;\">您好，请先"+
				"<a id=\"dlbtn\"  style=\"color:blue;font-size:15px;\" href=\"javascript:void(0)\"><u>登录</u></a>"+
				"</div>");
		}

	else{
		out.write("<div style=\"margin-top:10px;margin-left:86.5%;color:#666666;font-size:15px;\">"+"<u style=\"color:blue;\">"+phone+"</u>"+",您好"+
	              "<a style=\"margin-left:200px;width:100px;height:29px;\" href=\"Cancelsession\"><img style=\"margin-top:-30px;\" src=\"images\\yuyue-tuichu.png\"></img></a> "+
				  "</div>");
	}
				
				
				%>
			<div class="yy_b_btn1 sp pa" style="margin-left:40px;margin-bottom:20px;">
            <table><tr>
			<td><img src="images/xian_left.png";border=0;height=68px;width=140px></td>
			<td><img src="images/sep_first.png"></td>
			<td><img src="images/xian_right.png" border=0;padding-left=20px></td>
			</tr>
			</table>
			</div>
		
		
		<a href="javascript:;" class="yy_b_btn sp pa" ontouchstart="pgvSendClick({hottag:'a20160509gwyy.btn.yuyue'});"></a> 
		<div class="login pa">
		
		</div>
	</div>
</div>

<div class="wrap">  
	<div class="container">
		<div class="head1 pr">
			<h1 class="hide">仙魔争霸，由你主宰</h1>
		   <a href="index.jsp" class="logo db pa" target="_blank" title="灵域仙魔">灵域仙魔</a>
			
		</div>
		<div class="content">
		<div class="content1">
			<div class="box1">
							
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
				
				
				<p class="num" style="font-size:30px;color:red">已有 <span><%=rowCount %></span> 人预约</p>
			</div>
			<div class="box3">
				<p class="suc_yy">成功预约即可获得</p>
				<div class="bx_frame pr" id="lbbtn1">
					<div class="bx_pot"></div>
					<span class="hand sp pa"></span>
					<a href="javascript:;" class="lq_gift_btn pa sp"></a>
					<div class="bx_fc pa">
						<div class="fc pr">
							<table class="fc_tab">
								<tbody><tr>
									<td class="ft">宝箱内容：</td>
									<td>高级金币符*1</td>
								</tr>
								<tr>
									<td></td>
									<td>中级金币符*2</td>
								</tr>
								<tr>
									<td></td>
									<td>绑定元宝1500</td>
								</tr>
								<tr>
									<td></td>
									<td>千年人参*2</td>
								</tr>
									<tr>
									<td></td>
									<td>三级强化石*5</td>
								</tr>
									<tr>
									<td></td>
									<td>真龙丹*2</td>
								</tr>
									<tr>
									<td></td>
									<td>双倍经验符*1</td>
								</tr>
									<tr>
									<td></td>
									<td>坐骑进阶丹*10</td>
								</tr>
							</tbody></table>
							<p>礼包在封测公测期间均可使用，兑换限1次，请关注官方信息及时注册领取哦</p>
							<i class="sp pa"></i>
						</div>
					</div>
				</div>
			</div>
			
		
			<div class="box4">
			<div class="" style="margin-left:80px;margin-bottom:20px;">
            <table><tr>
			<td><img src="images\xian_left.png";border=0;height=68px;width=140px></td>
			<td style="font-size:48px;color:#2e2323;">邀请好友，仙盟争霸</td>
			<td><img src="images/xian_right.png" border=0;padding-left=20px></td>
			</tr>
			</table>
			</div>
				<ul class="gift_list c">
					<li class="z_index1">
					
					
					<table>
					<tr><td><p class="bx_num">高级宝箱  </p></td></tr>
					<tr><td><div class="suc_fd">成功邀请<em>3</em>名好友</div></td></tr>
					<tr><td><img id="lbbtn2" src="images/gaojibaoxiang.png"></td></tr>
<!-- 					<tr><td><a id="lbbtn2" href="javascript:;" style="color:#980c00;">领取礼包</a></td></tr> -->
					
					
					</table>
						
						<div class="gift_fc">
							<div class="fc pr">
								<table class="fc_tab fc_b_tab">
									<tbody><tr>
										<td class="ft">宝箱内容：</td>
										<td>百转招魂药水*10</td>
									</tr>
									<tr>
										<td></td>
										<td>绑定元宝*500</td>
									</tr>
									<tr>
										<td></td>
										<td>50W金币</td>
									</tr>
									<tr>
										<td></td>
										<td>押运令*5</td>
									</tr>
										<tr>
										<td></td>
										<td>千年人参*5</td>
									</tr>
										<tr>
										<td></td>
										<td>防御药水*5</td>
									</tr>
										<tr>
										<td></td>
										<td>赎罪卷轴*5</td>
									</tr>
								</tbody></table>
								<p>礼包在封测公测期间均可使用，兑换限1次，请关注官方信息及时注册领取哦</p>
								<i class="sp pa"></i>
							</div>
						</div>
					</li>
					<li class="z_index2">	
					<table>
					<tr><td><p class="bx_num">豪华宝箱</p></td></tr>
					<tr><td><div class="suc_fd">成功邀请<em>5</em>名好友</div></td></tr>
					<tr><td><img id="lbbtn3" src="images/haohuabaoxiang.png"></td></tr>
<!-- 					<tr><td><a id="lbbtn3" href="javascript:;" style="color:#980c00;">领取礼包</a></td></tr>					 -->
					</table>					
					
						<div class="gift_fc">
							<div class="fc pr">
								<table class="fc_tab fc_b_tab">
									<tbody><tr>
										<td class="ft">宝箱内容：</td>
										<td>百转招魂药水*10</td>
									</tr>
									<tr>
										<td></td>
										<td>绑定元宝*500</td>
									</tr>
									<tr>
										<td></td>
										<td>50W金币</td>
									</tr>
									<tr>
										<td></td>
										<td>修为灵丹*5</td>
									</tr>
									<tr>
										<td></td>
										<td>千年人参*5</td>
									</tr>
									<tr>
										<td></td>
										<td>攻击药水*5</td>
									</tr>
									<tr>
										<td></td>
										<td>赎罪卷轴*5</td>
									</tr>
								</tbody></table>
								<p>礼包在封测公测期间均可使用，兑换限1次，请关注官方信息及时注册领取哦</p>
								<i class="sp pa"></i>
							</div>
						</div>
					</li>
					<li class="mr z_index3">
					<table>
					<tr><td><p class="bx_num">至尊宝箱</p></td></tr>
					<tr><td><div class="suc_fd">成功邀请<em>10</em>名好友</div></td></tr>
					<tr><td><img id="lbbtn4" src="images/zhizunbaoxiang.png"></td></tr>
<!-- 					<tr><td><a id="lbbtn4" href="javascript:;" style="color:#980c00;">领取礼包</a></td></tr>					 -->
					</table>	
						<div class="gift_fc">
							<div class="fc pr">
								<table class="fc_tab fc_b_tab">
									<tbody><tr>
										<td class="ft">宝箱内容：</td>
										<td>金砖*2</td>
									</tr>
									<tr>
										<td></td>
										<td>绑定元宝*3000</td>
									</tr>
									<tr>
										<td></td>
										<td>高级金币符*5</td>
									</tr>
									<tr>
										<td></td>
										<td>修为灵丹*5</td>
									</tr>
										<tr>
										<td></td>
										<td>声望积分令牌*5</td>
									</tr>
										<tr>
										<td></td>
										<td>四级强化石*5</td>
									</tr>
										<tr>
										<td></td>
										<td>赎罪卷轴*10</td>
									</tr>
										<tr>
										<td></td>
										<td>百转招魂药水*10</td>
									</tr>
										<tr>
										<td></td>
										<td>坐骑进阶丹*20</td>
									</tr>
										<tr>
										<td></td>
										<td>双倍经验符*2</td>
									</tr>
								</tbody></table>
								<p>礼包在封测公测期间均可使用，兑换限1次，请关注官方信息及时注册领取哦</p>
								<i class="sp pa"></i>
							</div>
						</div>
					</li>
				</ul>
				<p>&nbsp</p>
				<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis yq_frid sp"></a>
				<p>&nbsp</p>
				<p class="ck_yq">已有<span><%=count %></span>人查看</p>
				<div class="ewm_frame">
					<ul class="ewm_list c">
						<li>
							<img src="images/erweima.png" height="180" width="187">
							<p>关注微信公众号</p>
						</li>
					
					</ul>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
<!-- 快速登录 -->
<div class="dialog" id="pop111" role="dialog" tabindex="-1" style="display:none; visibility: visible; position: fixed; z-index: 9999; left: 50%; top: 50%; margin-top: -243px; margin-left: -403px;"> 
<div style="position:absolute;z-index:10000;margin-top:30px;margin-left:38%;">
	<img src="images/kuaisudenglu.png"></img>
	</div>
    <div class="pop_con pr" style="border:0;background-image: url(images/dikuan.png); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%;">
    	<div class="pop">
    		<p class="pop1_tit sp"></p>
    		<table class="pop_tab">
    			<tbody>
    		
    			<tr>
    				<td class="tr">手机号码：</td>
    				<td><input class="txt pl" id="mobiledl" type="text"></td>
    				<td><button id="yzmsdl" href="javascript:;" class="yzm button small orange" style="padding:1px;font-size:15px">发送登录码</button></td>
    			</tr>
    						<tr>
    				<td class="tr">登录码：</td>
    				<td><input class="txt pl" id="codedl" type="text"></td>
    				<td></td>
    			</tr>
    				<tr>
    				<td class="tr lh">验证码：</td>
    				<td class="c">
    					<input class="txt pl" type="text" id="code2dl">
    				</td>
    				<td>
<div id="vCode2dl" style="width:140px; height: 40px; border: 1px solid #ccc; display: inline-block;"></div>
    				</td>
    			</tr>
<!--     			<tr> -->
<!--     				<td class="tr">邀请码（选填）：</td> -->
<!--     				<td><input class="txt pl" id="yqCode" type="text"></td> -->
<!--     				<td></td> -->
<!--     			</tr> -->
    		</tbody></table>
<!--     		<p class="pop_desp" style="color:999999;">填写好友发给你的邀请码，帮助好友获得惊喜宝箱！</p> -->
    		<a href="javascript:;" id="yySubmitdl" class="submit">登录</a>
    	</div>
    	<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭" style="background-image: url(images/guanbianniu.png); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%;"></a>
    </div>
    
</div>
<!-- 请先抢号预约  -->
<div class="dialog" id="qxyy" class="dianji"> 

<img id="closebtn" src="images\guanbianniu.png" width="20px" align="right" style="margin-left:800px;"></img>


    <div id="uplbneirong" class="pop_con pr" style="position:relative;height:130px;border:0;background-image: url(images/dikuan.png); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%;">
          <div id="kong" style="width:100%;height:37px;"></div>
          <div id="lbneirong" style="height:100%;width:100%;text-align:center;">
       

想要获得礼包吗？先抢号预约哦~</br></br>邀请好友抢号预约，还能获得豪华礼包哦！
</div>
    </div>
    
</div>
<!--点击抢号预约-->
<div class="dialog" id="pop1" > <div  style="position:absolute;z-index:10000;margin-top:10px;margin-left:34.5%;"><img src="images/kuaisuyuyue.png"></img></div>
    <div class="pop_con pr" style="border:0;background-image: url(images/dikuan.png); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%;">
    	<div class="pop">
    		<p class="pop1_tit sp"></p>
    		<table class="pop_tab">
    			<tbody>
    		
    			<tr>
    				<td class="tr">手机号码：</td>
    				<td><input class="txt pl" id="mobile" type="text"></td>
    				<td><button id="yzms" href="javascript:;" class="yzm button small orange" style="padding:1px;font-size:16px;">发送登录码</button></td>
    			</tr>
    						<tr>
    				<td class="tr">登录码：</td>
    				<td><input class="txt pl" id="code" type="text"></td>
    				<td></td>
    			</tr>
    				<tr>
    				<td class="tr lh">验证码：</td>
    				<td class="c">
    					<input class="txt pl" type="text" id="code2"/>
    				</td>
    				<td>
    				<div id="vCode2" style="width:140px; height: 40px; border: 1px solid #ccc; display: inline-block;"></div>
    				</td>
    			</tr>
    			<tr>
    				<td class="tr">邀请码（选填）：</td>
    				<td><input class="txt pl" id="yqCode" type="text"></td>
    				<td></td>
    			</tr>
    		</tbody></table>
    		<p class="pop_desp" style="color:999999;">填写好友发给你的邀请码，帮助好友获得惊喜宝箱！</p>
    		<a href="javascript:;" id="yySubmit" class="submit">提交</a>
    	</div>
    	<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭" style="background-image: url(images/guanbianniu.png); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%;"></a>
    </div>
    
</div>


<!--成功预约-->
<div class="dialog" id="pop2">
	<div class="pop_con pr">
		<div class="pop pop2">
			<p class="pop2_desp">恭喜您，<br>已成功预约《全民斗战神》！</p>
			<table class="pop2_tab pop3_tab">
				<tbody><tr>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td class="ovhid" colspan="3"></td>
				</tr>
			</tbody></table>
			<p class="pop2_desp pop2_desp1">您的邀请码是： <span id="svnPath"></span><a href="javascript:;" id="svnbtn" onclick="" class="btn blue" data-clipboard-target="svnPath">复制</a></p>
			<p class="p_line line_b"></p>
			<p class="p_line line_t"></p>
			<p class="pop2_desp">快将邀请码告知您的好友，好友预约成功您可获得惊喜宝箱哦！</p>
			<p class="pop2_desp p_pt">方法1：复制邀请码，好友预约时填写；<br>
									方法2：用微信或手机QQ扫描下方二维码邀请好友。
			</p>
			<div class="pop2_ewm"><img height="130" width="130"></div>
		</div>
		<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭"></a>
	</div>
</div>

<!--手机号已使用-->
<div class="dialog" id="pop5">
	<div class="pop_con phone pr">
		<p>手机号已被占用，<br>一个手机只能绑定一个账号！</p>
		<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭"></a>
	</div>
</div>

<!--领取宝箱（满足条件）-->
<div class="dialog" id="pop6">
	<div class="pop_con bx_y pr">
		<p class="ft">宝箱将于不删档测试期在游戏内发放，<br>请关注官方信息及时注册领取哦~</p>
		<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭"></a>
	</div>
</div>

<!--领取宝箱（不满足条件）-->
<div class="dialog" id="pop7">
	<div class="pop_con bx_y pr">
		<p class="ft">您还没满足获得该宝箱的条件哦！</p>
		<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭"></a>
	</div>
</div>

<!--查看我的邀请）-->
<div class="dialog" id="pop8">
	<div class="pop_con pr">
		<div class="pop8">
			<p class="pop8_tit sp"></p>
			<div class="p_pt">
				<p class="ft tc pop8_tl">邀请好友，获得宝箱！</p>
				<p class="pop2_desp ft tc pop8_tl">您的邀请码是： <span></span></p>
				<p class="pop2_desp ft tc pop8_tl">已邀请：<span></span>人</p>
				<table class="pop8_tab">
					<!--tr>
						<td>邀请人名称: <span>tesrrrrrrrrrrrrrrrrrrrrrrrrrrrr</span></td>
						<td>邀请人名称 : <span>tesrrrrrrrrrrrrrrrrrrrrrrrrrrrr</span></td>
					</tr>
					<tr>
						<td>邀请人名称: <span>tesrrrrrrrrrrrrrrrrrrrrrrrrrrrr</span></td>
						<td>邀请人名称 : <span>tesrrrrrrrrrrrrrrrrrrrrrrrrrrrr</span></td>
					</tr-->
				</table>
			</div>
			<a href="javascript:;" id="yq_frid" class="submit">继续邀请</a>
		</div>
		<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭"></a>
	</div>
</div>

<!--敬请期待！-->
<div class="dialog" id="pop9">
	<div class="pop_con pr pop9">
		<p class="ft bx_y">敬请期待！</p>
		<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭"></a>
	</div>
</div>

<!--的的！-->
<div class="dialog" id="pop10">
	<div class="pop_con pr pop9">
		<p class="ft bx_y2"><img src="qhyy_files/qr_dd.png" alt="的的现金券" height="300" width="300"></p>
    <p class="ft bx_y3">扫一扫，立刻领取“滴滴”现金券</p>
		<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭"></a>
	</div>
</div>

<!--携程！-->
<div class="dialog" id="pop11">
	<div class="pop_con pr pop9">
		<p class="ft bx_y2"><img src="qhyy_files/qr_xc.png" alt="携程现金券" height="300" width="300"></p>
    <p class="ft bx_y3">扫一扫，立刻领取“携程”现金券</p>
		<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭"></a>
	</div>
</div>

<!--大众！-->
<div class="dialog" id="pop12">
	<div class="pop_con pr pop9">
		<p class="ft bx_y2"><img src="qhyy_files/qr_dz.png" alt="大众点评现金券" height="300" width="300"></p>
    <p class="ft bx_y3">扫一扫，立刻领取“大众点评”现金券</p>
		<a class="pop_close sp pa" href="javascript:showDialog.hide()" title="关闭"></a>
	</div>
</div>
<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1" charset="utf-8"></script>
<script src="js&css/yanzhengma.js"></script>
<script src="js&css/qhyy.js"></script>
<script src="js&css/jquery-1.js"></script>
<script src="js&css/ZeroClipboard.js"></script>
<script src="js&css/milo.js"></script>
<script type="text/javascript" src="js&css/reporting.js"></script>
<script src="js&css/loadjs.js"></script>
<script src="js&css/report.js"></script>
<script src="js&css/swfobject.js"></script>

<script>  
// alert(document.getElementById('closebtn').offsetLeft)

$(".yy_b_btn").on('click', function(){
	TGDialogS("pop1");
});
$("#dlbtn").on('click', function(){
	TGDialogS("pop111");
});

// $("#qxyy").on('click', function(){
// 	showDialog.hide()
// });
$("#closebtn").on('click', function(){

	showDialog.hide()
});
$("#lbbtn1").on('click', function(){
	
	giftAjaxCommit(1)
});
$("#lbbtn2").on('click', function(){
	
	giftAjaxCommit(2)
});
$("#lbbtn3").on('click', function(){
	
	giftAjaxCommit(3)
});
$("#lbbtn4").on('click', function(){
	
	giftAjaxCommit(4)
});
var clip = new ZeroClipboard( document.getElementById("svnbtn"), {
  moviePath: "http://qmdzs.qq.com/cp/a20160509gwyy/ZeroClipboard.swf"
} );
// 复制内容到剪贴板成功后的操作
clip.on( 'complete', function(client, args) {
   alert("复制成功，复制内容为："+ args.text);
} );
var sys = 0;
//flash
var params = { scale:"noscale", wmode:"transparent",align: "middle",allowFullscreen: "true",allowScriptAccess: "always"}
swfobject.embedSWF("http://qmdzs.qq.com/cp/a20160509gwyy/flash.swf", "flash", "100%", "100%", "8.0.0","http://ossweb-img.qq.com/images/swf/expressInstall.swf", null, params); 
swfobject.embedSWF("http://qmdzs.qq.com/cp/a20160509gwyy/fsh.swf", "fsh", "100%", "100%", "8.0.0","http://ossweb-img.qq.com/images/swf/expressInstall.swf", null, params); 

//预约宝箱浮层
$(".bx_pot").hover(function(){
	$(".bx_fc").stop(true).fadeIn();
},function(){
	$(".bx_fc").hide();
})
$(".hand").hover(function(){
	$(".bx_fc").stop(true).fadeIn();
},function(){
	$(".bx_fc").hide();
})
//邀请好友，并肩西游浮层
$(".gift_list li").each(function(i){
	$(this).hover(function(){
		$(".gift_fc").eq(i).show();
	},function(){
		$(".gift_fc").eq(i).hide();
	})
})

//弹窗样式
$(".radio").each(function(i){
	$(this).click(function(){
		$(this).addClass("on").siblings().removeClass("on");
        if($(this).text() == 'IOS'){
            sys = 0;
        }else if($(this).text() == '安卓'){
            sys = 1;
        }
	})
})


function TGDialogS(e){
            need("biz.dialog-min",function(Dialog){
		Dialog.show({
			id:e,
			bgcolor:'rgba(0, 0, 0, 0.55)', //弹出“遮罩”的颜色，格式为"#FF6600"，可修改，默认为"#fff"
			opacity:50      //弹出“遮罩”的透明度，格式为｛10-100｝，可选
		});
            });
            
}
function closeDialog(){
            need("biz.dialog-min",function(Dialog){
		Dialog.hide();
            });
}




// 通用Top和统计


</script><div style="position: absolute; left: -9999px; top: -9999px; width: 15px; height: 15px; z-index: 9999;" data-clipboard-ready="true" class="global-zeroclipboard-container" id="global-zeroclipboard-html-bridge">      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="global-zeroclipboard-flash-bridge" height="100%" width="100%">         <param name="movie" value="http://qmdzs.qq.com/cp/a20160509gwyy/ZeroClipboard.swf?nocache=1467597531174">         <param name="allowScriptAccess" value="sameDomain">         <param name="scale" value="exactfit">         <param name="loop" value="false">         <param name="menu" value="false">         <param name="quality" value="best">         <param name="bgcolor" value="#ffffff">         <param name="wmode" value="transparent">         <param name="flashvars" value="">         <embed src="qhyy_files/ZeroClipboard.swf" loop="false" menu="false" quality="best" bgcolor="#ffffff" name="global-zeroclipboard-flash-bridge" allowscriptaccess="always" allowfullscreen="false" type="application/x-shockwave-flash" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="" scale="exactfit" height="100%" width="100%">                </object></div>

<script src="js&css/ww_tcss.js"></script>
<script>if(typeof(pgvMain) == 'function')pgvMain();</script><script src="qhyy_files/qmdzs.htm" type="text/javascript"></script>


<script type="text/javascript" src="js&css/dr.js">
</script><script type="text/javascript" src="qhyy_files/dr.htm"></script><script src="qhyy_files/qmdzs_002.htm" type="text/javascript"></script>
</body></html>
<!--[if !IE]>|xGv00|a32fc438b3db8df74339a1f3d57bde83<![endif]-->