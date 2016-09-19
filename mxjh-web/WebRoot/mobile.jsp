<%@page import="com.mxjh.wechat.Wechat"%>
<%@page import="com.mxjh2.info.Message"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="org.common.util.ConnectionService"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mxjh2.info.Counter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String phone = null;
	try {
		phone = (String) session.getAttribute("id");
	} catch (Exception ex) {
		ex.printStackTrace();
	}
	String openid = request.getParameter("openid");
	session.setAttribute("openid", openid);
	if (openid != null)
		response.sendRedirect("mobile.jsp");
	Counter CountFileHandler = new Counter();//创建对象    
	int count = 0;
	if (application.getAttribute("count") == null) {
		count = CountFileHandler.readFile(request.getRealPath("/") + "count.txt");//读取文件获取数据赋给count    
		application.setAttribute("count", new Integer(count));
	}
	count = (Integer) application.getAttribute("count");

	/*  if(session.isNew()) */
	count = count + 1;
	application.setAttribute("count", count);
	CountFileHandler.writeFile(request.getRealPath("/") + "count.txt", count);//更新文件记录

	//ticket
	String ticket = Wechat.getTicketFromloc();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<div id="ticket" style="display: none;"><%=ticket%></div>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description"
	content="Welcome to the wedding website for Sarah and Brad's Big Day!">
<meta name="viewport"
	content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no">

<link rel="apple-touch-icon-precomposed"
	href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-60.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="76x76"
	href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-76.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="120x120"
	href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-120.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="152x152"
	href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-152.png?1451359882">
<link rel="shortcut icon" href="logo.ico" type="image/x-icon" />


<link rel="stylesheet" href="cssforpc/main.css">

<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="js/sha1.js"></script>
 <title>梦想江湖</title>
<style>
/* reset */
div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset,
	input, textarea, p, blockquote, th, td {
	margin: 0;
	padding: 0
}

table {
	border-collapse: collapse;
	border-spacing: 0
}

address, caption, cite, code, dfn, em, strong, th, var {
	font-weight: normal;
	font-style: normal
}

ol, ul {
	list-style: none
}

caption, th {
	text-align: left
}

h1, h2, h3, h4, h5, h6 {
	font-weight: normal;
	font-size: 100%
}

q:before, q:after {
	content: ''
}

fieldset, img, abbr, acronym {
	border: 0
}

/* 页面样式 */
.c:before, .c:after {
	content: "";
	display: table
}

.c:after {
	clear: both
}

.c {
	zoom: 1
}

body {
	font: 12px/1.5;
	font-family: "\5FAE\8F6F\96C5\9ED1";
	text-align: justify;
	background: url(imgqhyy/bg.jpg) top center no-repeat;
}

a {
	text-decoration: none;
	overflow: hidden;
}

a:hover {
	text-decoration: none;
}

.wrap, .flash_box {
	width: 100%;
	min-width: 1000px;
}

.wrap {
	width: 100%;
	min-width: 1000px;
}

.wrap {
	background: url() no-repeat;
}

.wrap .container, .flash_box .container {
	width: 1000px;
	margin: 0 auto;
}

.pr {
	position: relative;
}

.pa {
	position: absolute;
}

.fl {
	float: left;
}

.fr {
	float: right;
}

.hide {
	display: block;
	width: 0;
	height: 0;
	overflow: hidden;
}

.db {
	display: block;
	text-indent: -999em;
}

:focus {
	outline: none;
}

.foot-cpright {
	min-width: 960px !important;
}

.sp, .ico-topbtn, .txt-topbtn, .gift_list li .bx_num {
	background: url() no-repeat;
}
/*foot*/

/*head*/
.head1 {
	background: url() no-repeat;
	height: 400px;
}

.logo {
	width: 190px;
	height: 121px;
	top: 20px;
	left: 0;
	z-index: 88;
	background: url(mobileimg/logo.png) no-repeat;
}

.btn-home {
	top: 30px;
	right: 10px;
	width: 125px;
	height: 42px;
	padding: 7px 18px 0 10px;
}

.ico-topbtn {
	float: left;
	background-position: 0 -60px;
	width: 35px;
	height: 35px;
}

.txt-topbtn {
	float: right;
	background-position: -53px -74px;
	width: 78px;
	height: 20px;
	margin-top: 8px;
}

.btn-home:hover .ico-topbtn {
	animation: swingleft 0.5s 0s ease-out both;
	-webkit-animation: swingleft 0.5s 0s ease-out both;
}

.btn-home:hover .txt-topbtn {
	animation: swingright 0.5s 0s ease-out both;
	-webkit-animation: swingright 0.5s 0s ease-out both;
}

/*content*/
.content {
	background: url() no-repeat;
}

.content1 {
	background: url() no-repeat 0 1000px;
}

.box1 {
	padding-top: 400px;
}

.box1 a, .yy_b_btn1 {
	left: 150px;
	bottom: 40px;
	display: block;
	width: 500;
	height: 111px;
	animation: zoomIn 0.5s 0s ease-out both;
	-webkit-animation: zoomIn 0.5s 0s ease-out both;
}

.box1 a, .yy_b_btn {
	left: 270px;
	bottom: -1px;
	display: block;
	width: 500;
	height: 111px;
	background: url("images/btnorder.png");
	animation: zoomIn 0.5s 0s ease-out both;
	-webkit-animation: zoomIn 0.5s 0s ease-out both;
}

.box1 a, .yy_b_btn:hover {
	background: url("images/btnorderh.png");
}

.btn_ht {
	height: 99px;
}

.btn_ht1 {
	height: 59px;
}

.num {
	font-size: 16px;
	color: #e0bc93;
	text-align: center;
	padding-top: 20px;
}

.num span {
	color: red;
	margin: 0px 4px;
}

.box2 {
	height: 275px;
}

.jdt_bg {
	width: 1000px;
	height: 270px;
	background:
		url(http://game.gtimg.cn/images/qmdzs/cp/a20160509gwyy/jdt.png)
		no-repeat;
}

.jdt_list.on1 .p1, .jdt_list.on2 .p2, .jdt_list.on3 .p3, .jdt_list.on4 .p4
	{
	color: #b3521d;
}

.jdt_list.on1 .st {
	left: 10px;
	top: 40px;
}

.jdt_list.on2 .st {
	left: 242px;
	top: 25px;
}

.jdt_list.on3 .st {
	left: 552px;
	top: 25px;
}

.jdt_list.on4 .st {
	left: 818px;
	top: 25px;
}

.jdt_list .st {
	position: absolute;
	width: 218px;
	height: 116px;
}

.jdt_list p {
	position: absolute;
	text-align: center;
	font-size: 20px;
	color: #cd9137;
	font-weight: bold;
}

.jdt_list p.p1 {
	left: 0px;
	top: 205px;
}

.jdt_list p.p2 {
	left: 222px;
	top: 140px;
}

.jdt_list p.p3 {
	left: 479px;
	top: 190px;
}

.jdt_list p.p4 {
	left: 809px;
	top: 140px;
}

.jdt_list p.wd1 {
	width: 213px;
}

.jdt_list p.wd2 {
	width: 247px;
	margin-left: 16px;
}

.jdt_list p.wd3 {
	width: 329px;
}

.jdt_list p.wd4 {
	width: 193px;
}

.jdt_pt {
	display: block;
	width: 150px;
	height: 110px;
	position: absolute;
}

.pt_dzw {
	left: 30px;
	top: 140px;
}

.d_ip {
	left: 285px;
	top: 120px;
}

.z_st {
	right: 282px;
	top: 120px;
}

.b_sd {
	right: 18px;
	top: 120px;
}

.box3 {
	padding: 40px 0px 110px;
}

.suc_yy {
	text-align: center;
	font-size: 16px;
	color: #ad8c62;
	line-height: 20px;
}

.bx_frame {
	width: 460px;
	height: 235px;
	margin: 0px auto;
}

.bx_pot {
	width: 346px;
	height: 235px;
	margin: 0 auto;
	cursor: pointer;
	background: url(images/libaoxiang.png) center no-repeat;
}

.hand {
	display: block;
	width: 52px;
	height: 65px;
	background-position: -280px -155px;
	left: 210px;
	top: 103px;
	cursor: pointer;
}

.lq_gift_btn {
	left: 120px;
	bottom: -45px;
	display: block;
	width: 237px;
	height: 35px;
	background: url(images/huoqulibao.png) center no-repeat;
}

.bx_fc {
	left: 335px;
	top: -25px;
	display: none;
}

.box4 {
	padding-top: 65px;
}

.gift_list {
	padding-left: 1px;
}

.gift_list li {
	position: relative;
	width: 330px;
	float: left;
	margin-right: 4px;
	cursor: pointer;
}

.gift_list li.z_index1 {
	z-index: 30;
}

.gift_list li.z_index2 {
	z-index: 20;
}

.gift_list li.z_index3 {
	z-index: 10;
}

.gift_list li.mr {
	margin-right: 0px;
}

.gift_list li .bx_num {
	height: 43px;
	font-size: 22px;
	color: #500f0f;
	font-weight: bold;
	text-align: center;
	line-height: 36px;
	left: 94px;
	t
}

.gift_list li a {
	display: block;
	height: 30px;
	font-size: 16px;
	color: #ffb454;
	text-align: center;
	line-height: 30px;
	text-decoration: underline;
}

.gift_list li .gift_fc {
	position: absolute;
	top: 16px;
	left: 244px;
	display: none;
}

.gift_list li img {
	height: 200px;
	width: 240px;
	top: 100px;
	left: 20px;
}

.gift_list li .suc_fd {
	width: 330px;
	font-size: 16px;
	font-weight: bold;
	color: #6f3818;
	text-align: center;
}

.gift_list li .suc_fd em {
	font-style: normal;
	color: #fdcd59;
	font-weight: bold;
}

.gift_list li  table {
	text-align: center
}

.yq_frid {
	position: relative;
	left: 50%;
	margin-left: -220px;
	display: block;
	width: 441px;
	height: 93px;
	background: url("images/yqfrd.png") top center no-repeat;
}

.ck_yq {
	text-align: center;
	font-size: 16px;
	color: #e0bc93;
}

.ck_yq a {
	font-size: 16px;
	color: #e0bc93;
	line-height: 30px;
	text-decoration: underline;
	margin-left: 10px;
}

.ck_yq a:hover {
	text-decoration: underline;
}

.ewm_frame {
	padding: 50px 0px 45px;
}

.ewm_list {
	padding-left: 300px;
	_padding-left: 50px;
}

.ewm_list li {
	float: left;
	border: 2px solid #73231c;
	margin-left: 100px;
	background: #ffffff;
}

.ewm_list li img {
	display: block;
	border: none;
}

.ewm_list li p {
	font-size: 16px;
	color: #570f0b;
	text-align: center;
	line-height: 30px;
}

.fc {
	width: 220px;
	background: #fcedc1;
	padding: 15px 0px;
}

.tc {
	text-align: center;
}

.fc_tab {
	width: 180px;
	margin: 0px auto;
}

.fc_b_tab {
	width: 200px;
}

.fc_tab td.ft {
	font-size: 16px;
}

.fc_tab td {
	font-size: 14px;
	color: #2f270f;
	height: 24px;
	line-height: 24px;
	text-align: left;
}

.fc p {
	padding-top: 5px;
	width: 180px;
	font-size: 14px;
	color: #6f623c;
	margin: 0px auto;
}

.fc i {
	left: -12px;
	bottom: 10px;
	display: block;
	width: 12px;
	height: 19px;
	background-position: -288px -124px;
}

.flash_box {
	left: 0px;
	top: 42px;
	width: 100%;
	height: 800px;
	z-index: 9;
	margin-top: -30px;
}

.flash_box .container {
	left: 50%;
	top: 0;
	margin-left: -500px;
	height: 100%;
}

.login {
	left: 0;
	bottom: 120px;
	width: 1000px;
	text-align: center;
	font-size: 14px;
	color: #ffffff;
	line-height: 14px;
}

.login a {
	color: #FCEDC1;
	margin: 0px 5px;
}

.box5 {
	height: 403px;
}

.box5_con {
	padding-top: 64px;
}

.box5_frm {
	width: 331px;
	height: 230px;
	float: left;
	padding-top: 26px;
	border: 1px solid #51291d;
	border-right: none;
}

.box5_frm img {
	display: block;
	margin: 0 auto;
}

.bd_rit {
	border-right: 1px solid #51291d;
}

.rcv_q {
	display: block;
	width: 264px;
	height: 59px;
	background-position: -7px -465px;
	margin: 18px auto 0;
}

.lg_dsp {
	font-size: 14px;
	color: #c09c6e;
	text-align: center;
	line-height: 28px;
}

@
keyframes swingleft {
	from {transform: translateX(-10px);
	opacity: 0;
}

to {
	transform: translateX(0);
	opacity: 1;
}

}
@
keyframes swingright {
	from {transform: translateX(10px);
	opacity: 0;
}

to {
	transform: translateX(0);
	opacity: 1;
}

}
@
-webkit-keyframes swingleft {
	from {-webkit-transform: translateX(-10px);
	opacity: 0;
}

to {
	-webkit-transform: translateX(0);
	opacity: 1;
}

}
@
-webkit-keyframes swingright {
	from {-webkit-transform: translateX(10px);
	opacity: 0;
}

to {
	-webkit-transform: translateX(0);
	opacity: 1;
}

}
@
-webkit-keyframes zoomIn { 0% {
	opacity: 0;
	-webkit-transform: scale3d(.3, .3, .3);
	transform: scale3d(.3, .3, .3);
}

50%
{
opacity
:
 
1;
}
}
@
keyframes zoomIn { 0% {
	opacity: 0;
	-webkit-transform: scale3d(.3, .3, .3);
	-ms-transform: scale3d(.3, .3, .3);
	transform: scale3d(.3, .3, .3);
}

50%
{
opacity
:
 
1;
}
}

/*pop*/
.dialog {
	display: none;
}

.pop_con {
	width: 802px;
	

}

.pop {
	padding: 0px 0px 20px;
}

.pop1_tit {
	width: 226px;
	height: 30px;
	background-position: 0 -340px;
	margin: 0px auto;
}

.pop_tab {
	width: 670px;
	height: 150px;
}

.pop_tab td {
	font-size: 16px;
	color: #352a5f;
}

.pop_tab td.tr {
	text-align: left;
	padding-left:8%;

}

.pop_tab .lh {
	line-height: 21px;
}

.pop_tab td .radio {
	float: left;
	display: block;
	height: 41px;
	line-height: 41px;
	background-position: -284px -223px;
	padding-left: 30px;
	color: #fee5bf;
	overflow: hidden;
}

.pop_tab td .ml {
	margin-left: 50px;
}

.pop_tab td .radio.on {
	background-position: -284px -263px;
}

.pop_tab td .pl {
	margin-left: 14%;
}

.pop_tab .txt {
	width: 80%;
	height: 90%;
	background: #ffffff;
	line-height: 10px;
	color: #6e6e6e;
	padding-left: 3px;
	border: #53617e 2px solid;
}

.pop_tab .yzm {
	margin-left: 7%;
	display: block;
	color: #ffffff;
	text-align: center;
	line-height: 20px;
	border:#1d84bd 1px solid;
	background:#1d84bd ! important;
	border-radius:5px;
}

.pop_desp {
	font-size: 14px;
	color: #352a5f;
	text-align: left;
	padding-top:5%;
	padding-left:7%;
	padding-right:13%;
}

.submit {
	display: block;
	width: 31%;
	height: 34px;
	background: url(imgqhyy/tj.png) no-repeat;
	background-size:100%;
	font-size: 14px;
	color: #ffffff;
	text-align: center;
	line-height: 25px;
	margin: 4% 0 0 -3%;
}

.pop_close {
	top: -2px;
	right: -49px;
	display: block;
	width: 47px;
	height: 47px;
	background-position: -260px -328px;
}

.pop2 {
	font-size: 24px;
	color: #fee5bf;
	width: 680px;
	margin: 0px auto;
}

.pop2_tab, .pop3_tab {
	width: 680px;
	margin: 15px auto;
}

.pop2_tab td, .pop3_tab td {
	font-size: 24px;
	color: #fee5bf;
	height: 30px;
}

.pop2_tab .wd {
	width: 360px;
}

.pop2_desp {
	line-height: 30px;
}

.pop2_desp1 {
	line-height: 40px;
}

.pop2_desp span {
	color: #ffa829;
}

.pop2_desp a {
	display: inline-block;
	vertical-align: middle;
	width: 155px;
	height: 40px;
	background: #ffd143;
	color: #4a2515;
	text-align: center;
	line-height: 40px;
	margin-left: 30px;
}

.p_line {
	width: 670px;
	height: 20px;
	margin: 0px auto;
}

.line_b {
	border-bottom: 1px solid #693f2d;
}

.line_t {
	border-top: 1px solid #31190e;
}

.p_pt {
	padding-top: 30px;
}

.pop2_ewm {
	border: 1px solid #e39f45;
	width: 130px;
	height: 130px;
	margin: 20px auto 0;
}

.pop_login {
	font-size: 24px;
	color: #fee5bf;
	padding: 55px 0px;
}

.pop_login p {
	text-align: center;
	line-height: 30px;
}

.p_login {
	padding: 60px 0px 0px 105px;
	_padding: 60px 0px 0px 55px;
}

.p_login a {
	display: block;
	float: left;
	margin-left: 60px;
	width: 205px;
	height: 65px;
	background: #ffd244;
	color: #4a2515;
	text-align: center;
	line-height: 65px;
}

.p_login a.grn {
	background: #18f392;
}

.phone {
	padding: 90px 0px;
	font-size: 24px;
	color: #fee5bf;
	text-align: center;
	line-height: 40px;
}

.ft {
	font-size: 24px;
	color: #fee5bf;
	line-height: 34px;
}

.bx_y {
	padding: 60px 0px;
	text-align: center;
}

.pop8_tit {
	width: 219px;
	height: 46px;
	background-position: -7px -409px;
	margin: 0px auto;
}

.pop8_pl {
	padding: 20px 0px 0px 150px;
}

.pop8 {
	padding: 40px 0px;
}

.bx_y2 {
	text-align: center;
	padding: 30px 0 0 0;
}

.bx_y3 {
	text-align: center;
	padding: 0 0 30px 0;
}

.ovhid span {
	display: inline-block;
	width: 460px;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
}

.pop3_tab td {
	height: 40px;
}

.pop8_tab {
	width: 470px;
	margin: 15px auto 0;
	margin-left: 271px;
}

.pop8_tab td {
	font-size: 24px;
	color: #fee5bf;
	height: 36px;
	padding: 0 5px;
}

.pop8_tab span {
	color: #ffa829;
	display: inline-block;
	width: 240px;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	height: 23px;
}

.pop8_tl {
	text-align: left;
	padding-left: 280px;
}
.dialog tr{
	height:28px;
}
</style>
<style media="screen" type="text/css">
#flash {
	visibility: hidden
}

#fsh {
	visibility: hidden
}
</style>

<style type="text/css">
body {
	width: 100%;
	height: 100%;
	background-image: url(imgqhyy/bg.jpg);
	background-repeat: no-repeat;
	background-position: center 0;
	background-color: transparent;
	background-size: 100%;
	position: absolute;
	margin: 0;
}

</style>
</head>
<body>
	<div id="dianji"
		style="width: 80%; height: 80%; position: absolute; z-index: 10000; display: none;">
		<img style="width: 30%; margin-left: 60%; margin-top: 2%;"
			src="mobileimg\jiantou.png"></img>
		<div
			style="text-align: center; margin-top: 50px; font-family: '微软雅黑'; color: #ffffff; font-size: 20px; font-weight: light;">
			点击右上角分享</br>
			</br>邀请兄弟与您一起共战梦想江湖

		</div>
		<a href="javascript:showDialog.hide();"><img
			style="width: 30%; margin-left: 35%; margin-top: 15%;"
			src="mobileimg/guanbi.png"></img></a>
	</div>
	
	<%
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String exchange = "";
		int rowCount = 0;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			String sql = "SELECT COUNT(1) rowCount FROM tbl_orders_users";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				rowCount = rs.getInt("rowCount");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
	<div class="sept">
		<%
			if (phone == null) {
				out.write("<div style=\"margin-top:-112%;margin-left:70%;color:#666666;font-size:12px;\">您好，请先"
						+ "<a id=\"dlbtn\" href=\"javacript:;\" style=\"color:blue;font-size:12px;\"><u>登录</u></a>"
						+ "</div>");
			}

			else {
				out.write("<div style=\"margin-top:-112%;margin-left:70%;color:#666666;font-size:12px;\">"
						+ "<u style=\"color:blue;\">" + phone + "</u>" + ",您好"
						+ "<a href=\"Cancelsession\"><img style=\"position:absolute;width:51px;\" src=\"mobileimg\\tuichu.png\"></img></a> "
						+ "</div>");
			}
		%>
		<div class="sept-l float" style="margin-top: 107%;">
			<img src="">
		</div>
		<div class="sept-c float" style="margin-top: 107%;">
			
		</div>
		<div class="sept-r float" style="margin-top: 107%;">
			<img src="">
		</div>
	</div>
	<div class="sub" style="margin-top:50px;">
		<img alt="" src="imgqhyy/sf.png">
		<div id="yuyuebtn" class="sub-nav" style="margin-top:20px;">
			<img src="imgqhyy/qhyy.png">
		</div>
		<div class="sub-snav">
			<font id="yuyueNum" class="font-a">已有<%=rowCount%>人预约
			</font>
		</div>
		<div id="achievebtn">
			<div id="invitebtn" class="sub-dnav">
				<img src="imgqhyy/bx.png">
			</div>
			<div class="sub-bnav">
				<strong class="font-a"><<获取宝箱>></strong>
			</div>
		</div>
	</div>
	<div class="sept-1">
		<div class="sept-c-1 float" style="width: 100%;">
			<img src="imgqhyy/yxhy2.png" />
		</div>
		<div class="sept-r-1 float">
			
		</div>
	</div>
	<div class="invite">
		<div id="yaoqing" class="invite-1">
			<img src="imgqhyy/yqhy.png">
		</div>
		<div class="invite-2">
			<font class="font-a">已有<%=count%>人查看
			</font>
		</div>
	</div>

	<div id="seniorbtn" class="box">
		<div class="box-1 float">
			<img src="imgqhyy/bxgj.png">
		</div>
		<div class="box-2 float">
			<img src="imgqhyy/gjbx.png">
		</div>
	</div>
	<div id="luxurybtn" class="box-h">
		<div class="box-1 float">
			<img src="imgqhyy/bxhh.png">
		</div>
		<div class="box-2 float">
			<img src="imgqhyy/hhbx.png">
		</div>
	</div>
	<div id="extremebtn" class="box-z">
		<div class="box-1a float">
			<img src="imgqhyy/bxzz.png">
		</div>
		<div class="box-2 float">
			<img src="imgqhyy/zzbx.png">
		</div>
	</div>
	<div class="disb">
		<div class="disb-1 float">
			<strong class="font-a">礼包领取说明：</strong>
		</div>
		<div class="disb-2 float">
			<font class="font-a">1、满足宝箱邀请好友数量要求，即可解锁领取；</br>
				2、礼包在封测公测期间均可使用，兑换限1次，请关注官方信息及时注册领取哦。
			</font>
		</div>

	</div>
	<div style="width: 100%; height: 10px; display: block;"></div>
	<div class="scan"
		style="padding-top: 0;height:auto; margin-top: 124%; margin-bottom:4%; ">
		<div class="scan-1">
			<img style="margin-top: 10px;" src="imgqhyy/ewm.png">
		</div>
	</div>



	<div style="display: none">
		<!-- <script src='http//v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script> -->
	</div>

	<!-- 登录 -->
	<div class="dialog" id="pop111" role="dialog" tabindex="-1"
		style="background: url(imgqhyy/bg_yy.png);background-size: 100%;display: none; visibility: visible; position: fixed; z-index: 9999; width: 95%;height:auto;left:54% ! important;top:50%;">
		<table
			style="position: absolute; z-index: 10000; margin-top: 10%; margin-left: 7.5%;margin-right:13.5%;">
			
			<tbody style="width: 100%;">
			<tr>
			
			<td style="width:25%;"><img alt="" src="imgqhyy/xina2.png" style="width:100%;height:auto;"></td>
			<td style="width:40%;text-align:center;"><font style="font-size:22px;color:#352a5f;padding:0 5%;">快速登录</font></td>
			<td style="width:25%;"><img alt="" src="imgqhyy/xina.png" style="width:100%;height:auto;"></td>
			</tr>
			
			</tbody>
		</table>
		<div id="pop111close"
			style="margin-top: 5%; width: 20px; height: 20px; position: absolute; z-index: 10000;margin-left:81% ! important;">
			<a href="javascript:showDialog.hide()" title="关闭"
				style="position: absolute; width: 20px; height: 20px; background-image: url(imgqhyy/guanbianniu.png); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%;"></a>
		</div>
		<div class="pop_con pr"
			style=" width: 100%;padding-top:24%; ">
			<div class="pop" style="width: 100%;">
				<!-- <p class="pop1_tit sp"></p> -->
				<table style="width: 100%;" class="pop_tab">
					<tbody style="width: 100%;">

						<tr>
							<td class="tr">手机号码：</td>
							
						</tr>
						<tr>
							
							<td><input class="txt pl" id="mobiledl" type="text" style="height:27px;"></td>
							<td ><button id="yzmsdl" href="javascript:;" class="yzm">发送登录码</button></td>
						</tr>
						<tr>
							<td class="tr">登录码：</td>
							
						</tr>
						<tr>
							
							<td><input class="txt pl" id="codedl" type="text" style="height:27px;"></td>
							<td></td>
						</tr>
						<tr>
							<td class="tr lh">验证码：</td>
							
						</tr>
						<tr>
							
							<td class="c" style="width:53%;"><input class="txt pl" type="text" id="code2dl" style="height:27px;">
							</td>
							<td>
								<div id="vCode2dl"
									style="width: 104px; height: 30px; border: 1px solid #ccc; display: inline-block;"></div>
							</td>
						</tr>
						<!--     			<tr> -->
						<!--     				<td class="tr">邀请码（选填）：</td> -->
						<!--     				<td><input class="txt pl" id="yqCode" type="text"></td> -->
						<!--     				<td></td> -->
						<!--     			</tr> -->
					</tbody>
				</table>
				<!--     		<p class="pop_desp" style="color:999999;">填写好友发给你的邀请码，帮助好友获得惊喜宝箱！</p> -->
				<a href="javascript:;" id="yySubmitdl" class="submit" style="margin-left:30%;margin-top:8%;">登录</a>
			</div>

		</div>

	</div>
	<!-- 点击抢号预约 -->
	<center>
	<div class="dialog" id="pop1" style="width: 100%;background:url(imgqhyy/bg_yy.png) no-repeat;background-size:100%;top:50px ! important;position:fixed ! important;left:54% ! important;height:100%;">
		<table
			style="position: absolute; z-index: 10000; margin-top: 7%; margin-left: 7.5%;margin-right:13.5%;">
			
			<tbody style="width: 100%;">
			<tr>
			
			<td style="width:25%;"><img alt="" src="imgqhyy/xina2.png" style="width:100%;height:auto;"></td>
			<td style="width:40%;text-align:center;"><font style="font-size:25px;color:#352a5f;padding:0 5%;">快速预约</font></td>
			<td style="width:25%;"><img alt="" src="imgqhyy/xina.png" style="width:100%;height:auto;"></td>
			</tr>
			
			</tbody>
		</table>
		<div id="pop1close"
			style="margin-top: 5%; width: 20px; height: 20px; position: absolute; z-index: 10000;margin-left:79%;">
			<a href="javascript:showDialog.hide()" title="关闭"
				style="position: absolute; width: 20px; height: 20px; background-image: url(imgqhyy/guanbianniu.png); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%;"></a>
		</div>
		<div class="pop_con pr"
			style="width: 100%; padding-top:13%;">
			<div class="pop" style="width: 100%;">
				<!-- <p class="pop1_tit sp"></p> -->
				<table style="width: 100%; margin-top:7%;" class="pop_tab">
					<tbody style="width: 100%;">

						<tr>
							<td class="tr"><font style="font-size:16px;color:#352a5f;">手机号码：</font></td>	
							
						</tr>
						
						<tr>
							<td><input class="txt pl" id="mobile" type="text"></td>
							<td style="padding-right:18%;"><button id="yzms" class="yzm"
									style="width: 100%; height: 30px;"><font style="font-size:13px;color:#ffffff;">发送验证码</font></button></td>
						</tr>
						
						<!-- <tr class=""></tr> -->
						
						<tr>
							<td class="tr"><font style="font-size:16px;color:#352a5f;">验证码：</font></td>
							
						</tr>
						<!-- <tr></tr> -->
						<tr>
							
							<td><input class="txt pl" id="code" type="text"></td>
							<td></td>
						</tr>
					<!-- 	<tr></tr> -->
						<!-- <tr>
							<td class="tr lh">验证码：</td><br/>
							<td class="c"><input class="txt pl" type="text" id="code2" />
							</td>
							<td>
								<div id="vCode2"
									style="width: 120px; height: 30px; border: 1px solid #ccc; display: inline-block;"></div>
							</td>
						</tr> -->
						<tr>
							<td class="tr"><font style="font-size:16px;color:#352a5f;">邀请码(选填)：</font></td>
							
						</tr>
						<!-- <tr></tr> -->
						<tr>
							<td><input class="txt pl" id="yqCode" type="text"></td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<p class="pop_desp" style="color: 999999;">填写好友发给你的邀请码，帮助好友获得惊喜宝箱！</p>
				<a href="javascript:;" id="yySubmit" class="submit">提交</a>
			</div>

		</div>

	</div>
</center>
	<div class="dialog" id="qxyy" class="dianji" style="width: 95%;">

		<!-- <img id="closebtn" src="images\guanbianniu.png" align="right" style="width:20px;margin-left:100%;"></img> -->


		<div id="uplbneirong" class="pop_con pr"
			style="width: 100%; position: relative; height: 130px; background: url(); background-color: #DDDDDD;">
			<img id="closebtn" src="imgqhyy\guanbianniu.png" align="right"
				style="width: 20px; margin-left: 100%;"></img>

			<div id="kong" style="width: 100%; height: 37px;"></div>
			<div id="lbneirong"
				style="height: 100%; width: 100%; text-align: center;">


				想要获得礼包吗？先抢号预约哦~</br>
				</br>邀请好友抢号预约，还能获得豪华礼包哦！
			</div>
		</div>

	</div>
	<script src="js/my.js"></script>
	<script src="js/qhyymobile.js"></script>
	<script src="js/jquery-1.js"></script>
	<script src="js/ZeroClipboard.js"></script>
	<script src="js/milo.js"></script>
	<script type="text/javascript" src="js/reporting.js"></script>
	<script src="js/loadjs.js"></script>
	<script src="js/report.js"></script>
	<script src="js/swfobject.js"></script>
	<script type="text/javascript" src="js/dr.js"> </script>

	<script>  
var c1 = document.getElementById("pop1close");
var c2 = document.getElementById("pop111close");

/* c1.style.marginLeft=document.body.clientWidth*0.95-20+'px'; */
/* c2.style.marginLeft=document.body.clientWidth*0.95-20+'px'; */
$("#yuyuebtn").on('click', function(){
	TGDialogS("pop1");
});
$("#yaoqing").on('click', function(){
	TGDialogS("dianji");
});
$("#achievebtn").on('click', function(){
	giftAjaxCommit(1);
});
$("#closebtn").on('click', function(){
	showDialog.hide();
});
$("#seniorbtn").on('click', function(){
	
	giftAjaxCommit(2)
});
$("#luxurybtn").on('click', function(){
	
	giftAjaxCommit(3)
});
$("#extremebtn").on('click', function(){
	
	giftAjaxCommit(4)
});
$("#dlbtn").on('click', function(){ 
	TGDialogS("pop111");
});

function TGDialogS(e){
    need("biz.dialog-min",function(Dialog){
Dialog.show({
	id:e,
	bgcolor:'#000', //弹出“遮罩”的颜色，格式为"#FF6600"，可修改，默认为"#fff"
	opacity:50      //弹出“遮罩”的透明度，格式为｛10-100｝，可选
});
    });
    
}

function closeDialog(){
    need("biz.dialog-min",function(Dialog){
Dialog.hide();
    });
}


</script>

</body>
</html>