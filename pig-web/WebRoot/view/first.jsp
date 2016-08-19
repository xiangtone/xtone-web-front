<%@page import="com.xtone.util.CheckLoad"%>
<%@page import="org.common.util.ConnectionService"%>
<%@page import="com.system.database.ConnConfigMain"%>
<%@page import="com.xtone.util.StringUtil"%>
<%@page import="com.xtone.util.PageUtil"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.demo.info.News"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	CheckLoad check = new CheckLoad();
	  if(request.getHeader("User-Agent").toLowerCase().indexOf("tosh")<0)
		if (check.JudgeIsMoblie(request)) {
			response.sendRedirect("../mobile-news.jsp");
		}
	
	%>
<%-- <%
	/**CheckLoad check = new CheckLoad();
	if(check.JudgeIsMoblie(request)){
		response.sendRedirect("mpList.jsp?catalog=first");
	}**/
	int count = 0;
	int pageIndex = StringUtil.getInteger(request.getParameter("pageindex"), 1);
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	List<News> list = new ArrayList();
	try {
		con = ConnectionService.getInstance().getConnectionForLocal();
		String limit = " limit " + 12 * (pageIndex - 1) + "," + 12;
		String sql = "SELECT id,`title`,`lastModifyTime`,`catalog` FROM `tbl_cms_contents` WHERE `status`=1  ORDER BY addTime DESC  "
				+ limit;
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();

		while (rs.next()) {
			News news = new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setAddTime(rs.getLong("lastModifyTime"));
			news.setCatalog(rs.getString("catalog"));
			list.add(news);
		}

		count = 12;
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
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>豬來了詳情</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="keywords" content="">
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<!-- PM提取meta start -->
<link href="../img/imgz/favicon.ico" rel="icon" type="image/x-icon" />

<!-- PM提取meta end -->

<link rel="dns-prefetch" href="http://res.nie.netease.com">
<!--[if lt IE 9]>

    <![endif]-->

<!-- /* 统一应用文章页公共样式 */ -->
<link rel="stylesheet" href="../js-css/news/art.com.css">
<!-- 引用本页css -->
<!-- jquery mix NIE (最新版本）-->
<script charset="utf-8" src="../js-css/news/jquery(mixNIE).last.js"></script>
<!--lib中的文件，自动合并为一个文件-->

<link type="text/css" rel="stylesheet"
	href="../js-css/news/newDetail_79f84a9.css">
<script defer="true" charset="gbk" src=""></script>
<style type="text/css">
#NIE-copyRight a {
	text-decoration: none;
}

#NIE-copyRight a:hover {
	text-decoration: underline;
}
</style>
<style type="text/css">
.adbase-ctn {
	background:
		url(http://res.nie.netease.com/comm/js/nie/util/img/loading.png)
		center center no-repeat;
}
</style>
<style type="text/css">
#NIE-copyRight a {
	text-decoration: none;
}

#NIE-copyRight a:hover {
	text-decoration: underline;
}
</style>
<style type="text/css">
.adbase-ctn {
	background:
		url(http://res.nie.netease.com/comm/js/nie/util/img/loading.png)
		center center no-repeat;
}
</style>
<style type="text/css">
#NIE-topBar .hide, #NIE-topBar-include .hide {
	display: none !important
}

.NIE-topBar-logo, .NIE-topBar-arrIcon i, #NIE-topBar-menu span,
	.NIE-topBar-hot, .NIE-topBar-1st, .NIE-topBar-new, .NIE-topBar-btn {
	background:
		url(http://res.nie.netease.com/comm/nie.topBar/images/sprite-w_7fc7459.png)
		no-repeat
}

.NIE-topBar-arrIcon {
	position: relative;
	top: 4px;
	width: 16px;
	height: 16px;
	display: inline-block;
	background-color: #fff;
	overflow: hidden
}

.NIE-topBar-arrIcon i {
	width: 9px;
	height: 4px;
	float: left;
	margin: 6px 0 0 4px;
	background-position: -103px -101px;
	display: inline-block;
	-webkit-transition: all .2s ease 0s;
	transition: all .2s ease 0s
}

#NIE-topBar, #NIE-topBar-include {
	position: relative;
	z-index: 9999;
	min-width: 1000px;
	height: 40px;
	background: #333;
	line-height: 24px;
	font-family: "Microsoft YaHei", simSun, "Lucida Grande",
		"Lucida Sans Unicode", Arial
}

#NIE-topBar *, #NIE-topBar-include * {
	font-size: 12px;
	font-style: normal
}

#NIE-topBar a, #NIE-topBar-include a {
	color: #999;
	text-decoration: none
}

#NIE-topBar a:hover, #NIE-topBar-include a:hover {
	color: #fff
}

#NIE-topBar ul, #NIE-topBar li, #NIE-topBar-include ul,
	#NIE-topBar-include li {
	margin: 0;
	padding: 0;
	float: left
}

.NIE-topBar-main {
	position: relative;
	z-index: 9999;
	width: 1000px;
	margin: auto
}

.NIE-topBar-logo {
	width: 133px;
	height: 44px;
	display: block;
	float: left;
	margin-top: 6px;
	background:
		url(http://res.nie.netease.com/comm/nie.topBar/images/logo_b5525b7.png)
		no-repeat
}

#NIE-topBar-news {
	position: absolute;
	z-index: 13;
	width: 420px;
	height: 54px;
	left: 125px;
	padding-left: 18px;
	padding-top: 0;
	overflow: hidden;
	display: block
}

#NIE-topBar-news.NIE-topBar-news-hover {
	height: 250px;
	overflow: visible;
	border-color: #1f1f1f
}

#NIE-topBar-news a {
	width: 960px;
	display: block;
	height: 0;
	overflow: hidden;
	z-index: 1;
	-webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
	-o-box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
	box-shadow: 0 2px 4px rgba(0, 0, 0, .2)
}

#NIE-topBar-news-close {
	position: absolute;
	top: 63px;
	right: -380px;
	display: block;
	width: 32px;
	height: 32px;
	overflow: hidden;
	background:
		url(http://res.nie.netease.com/comm/nie.topBar/images/sprite-w_7fc7459.png)
		no-repeat -9999px -9999px;
	text-indent: -9999px;
	z-index: 2
}

#NIE-topBar-news.NIE-topBar-news-hover .NIE-topBar-abc-s {
	visibility: hidden
}

#NIE-topBar-news.NIE-topBar-news-hover a {
	position: absolute;
	z-index: 2;
	left: -132px;
	top: 55px;
	height: auto
}

#NIE-topBar-news.NIE-topBar-news-hover a img {
	display: block
}

.NIE-topBar-mid {
	position: absolute;
	z-index: 2;
	right: 230px;
	width: 385px;
	text-align: right
}

#NIE-topBar .NIE-topBar-mid a, #NIE-topBar-include .NIE-topBar-mid a {
	line-height: 40px;
	padding: 0 12px;
	color: #fff;
	display: inline-block
}

#NIE-topBar .NIE-topBar-mid a:hover, #NIE-topBar-include .NIE-topBar-mid a:hover
	{
	color: #ca0b0b
}

#NIE-topBar-menu {
	position: absolute;
	z-index: 1;
	top: 0;
	right: 0;
	color: #999;
	width: 1000px;
	height: 40px;
	overflow: hidden;
	-webkit-transition: height .3s ease 0s;
	-o-transition: height .3s ease 0s;
	-moz-transition: height .3s ease 0s;
	transition: height .3s ease 0s
}

#NIE-topBar-menu span {
	position: absolute;
	width: 108px;
	padding: 8px 0 12px;
	height: 20px;
	line-height: 14px;
	right: 106px;
	background-position: 0 -28px;
	background-repeat: repeat-x;
	padding-left: 15px;
	color: #fff;
	display: inline-block;
	overflow: hidden
}

#NIE-topBar-menu .NIE-table {
	position: absolute;
	top: 40px;
	left: 0;
	background: #262626;
	border-collapse: collapse;
	overflow: hidden;
	width: 100%
}

#NIE-topBar-menu .NIE-table a {
	width: 100px;
	margin-left: 6px;
	line-height: 24px;
	display: inline-block
}

#NIE-topBar-menu .NIE-table a.long {
	width: 125px
}

#NIE-topBar-menu .NIE-table ul {
	list-style: none
}

#NIE-topBar-menu .NIE-table .NIE-nav {
	width: 100%;
	position: relative
}

#NIE-topBar-menu .NIE-table .NIE-nav li {
	width: 110px;
	float: left;
	border-right: 1px solid #eee;
	vertical-align: top
}

#NIE-topBar-menu .NIE-table .NIE-nav .mobi {
	position: absolute;
	left: 387px;
	-webkit-transition: all .3s ease-out
}

#NIE-topBar-menu .NIE-table b {
	line-height: 39px;
	color: #bc2e2e;
	display: block;
	width: 100%;
	height: 39px;
	font-size: 14px;
	text-indent: 20px;
	background: #f7f7f8;
	overflow: hidden;
	clear: both
}

#NIE-topBar-menu b i {
	margin-left: 5px;
	padding: 2px 4px;
	color: #9b9b9b;
	font-style: normal;
	background: #111;
	display: inline
}

#NIE-topBar-menu .NIE-list {
	float: left;
	overflow: hidden;
	width: 100%;
	height: 400px
}

.w1680 #NIE-topBar-menu .NIE-list {
	height: 450px
}

#NIE-topBar-menu .NIE-list li {
	border-right: 1px solid #eee;
	height: 100%;
	float: left;
	padding: 10px 0 0 14px
}

#NIE-topBar-menu .NIE-list .news {
	position: absolute;
	background: #fdfefe;
	left: 545px;
	-webkit-transition: all .3s ease-out;
	top: 39px
}

#NIE-topBar-menu .NIE-list .hot {
	position: absolute;
	background: #fdfefe;
	left: 387px;
	-webkit-transition: all .3s ease-out;
	top: 39px
}

#NIE-topBar-menu .NIE-list .hot a {
	width: 125px
}

.w1680 #NIE-topBar-menu .NIE-list .news div div {
	margin-right: 8px
}

#NIE-topBar-menu .NIE-list .news .long-news {
	width: 133px;
	float: left
}

#NIE-topBar-menu .NIE-list .news .long-news a {
	width: 125px
}

#NIE-topBar-menu .NIE-list .news .short-news {
	float: left;
	width: 106px
}

#NIE-topBar-menu .moreAni .NIE-list .news {
	left: 313px;
	width: 524px !important;
	-webkit-transition: all .3s ease-out
}

#NIE-topBar-menu .moreAni .NIE-list .hot {
	left: 155px;
	border-left: 1px solid #eee;
	box-shadow: -1px 0 1px #eee;
	-webkit-transition: all .3s ease-out
}

#NIE-topBar-menu .moreAni .NIE-nav .mobi {
	left: 155px;
	width: 696px !important;
	border-left: 1px solid #eee;
	box-shadow: -1px 0 1px #eee;
	-webkit-transition: all .3s ease-out
}

#NIE-topBar-menu .NIE-list .NIE-topBar-more {
	width: 20px;
	height: 95px;
	height: 92px\9;
	display: block;
	position: absolute;
	right: 0;
	top: 124px;
	font-size: 12px;
	color: #fff;
	background: #bc2e2e;
	padding-left: 10px;
	line-height: 14px;
	padding-top: 7px;
	border-top-left-radius: 2px;
	border-bottom-left-radius: 2px
}

#NIE-topBar-menu .NIE-list .NIE-topBar-more:hover {
	opacity: .8
}

#NIE-topBar-menu .moreAni .NIE-topBar-more {
	width: 21px;
	height: 23px;
	border-radius: 2px;
	right: 9px;
	top: 163px;
	padding-left: 4px;
	padding-top: 2px;
	height: 20px;
	height: 18px\9

}

.w1680 #NIE-topBar-menu .NIE-list .NIE-topBar-more {
	display: none
}

#NIE-topBar-menu .NIE-table a em {
	font-weight: 400;
	display: block;
	line-height: 24px
}

.NIE-topBar-1st {
	background-position: right -267px
}

.NIE-topBar-hot {
	background-position: right -144px
}

.NIE-topBar-new {
	background-position: right -206px
}

#NIE-topBar-menu.NIE-topBar-menu-hover .NIE-table {
	display: block
}

#NIE-topBar-menu.NIE-topBar-menu-hover {
	height: 505px;
	opacity: .9;
	-webkit-transition: height .4s ease 0s;
	-o-transition: height .4s ease 0s;
	-moz-transition: height .4s ease 0s;
	transition: height .4s ease 0s
}

a.NIE-topBar-btn {
	width: 105px !important;
	height: 18px;
	line-height: 18px !important;
	margin: 5px 0;
	display: inline-block;
	padding-left: 0 !important;
	background-position: 0 -338px;
	text-indent: 25px;
	color: #bc3030 !important
}

a.NIE-topBar-btn:hover {
	
}

.NIE-topBar-ad {
	height: 40px;
	left: 50%
}

.NIE-topBar-main.w1680 {
	width: 1260px
}

.NIE-topBar-main.w1680 #NIE-topBar-menu {
	width: 1260px
}

#NIE-topBar-news {
	height: 54px
}

#NIE-topBar .NIE-topBar-menu-hover, #NIE-topBar-include .NIE-topBar-menu-hover
	{
	z-index: 8
}

.NIE-topBar-ad-big {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 10;
	height: 0;
	overflow: hidden;
	text-align: center
}

#NIE-topBar-menu {
	z-index: 7;
	height: 55px
}

.NIE-topBar-mid {
	z-index: 12;
	width: 250px;
	right: 230px;
	width: 536px
}

.NIE-topBar-logo {
	position: relative;
	z-index: 13 !important
}

#NIE-topBar, #NIE-topBar-include {
	height: 55px;
	background: #fbfbfb
}

.NIE-topBar-logo {
	margin-top: 5px
}

#NIE-topBar-menu .NIE-table {
	top: 55px;
	background: #fdfefe;
	border-top: 1px solid #ececec;
	margin: 0
}

#NIE-topBar-menu span {
	background: 0 0;
	color: #bc2e2e
}

#NIE-topBar-menu .NIE-table {
	display: none
}

#NIE-topBar-menu .NIE-table .last_td, #NIE-topBar-menu .NIE-table .last_th
	{
	border-right: 0
}

#NIE-topBar a, #NIE-topBar-include a {
	color: #626262
}

#NIE-topBar-menu b i {
	background-color: #fbfbfb;
	color: #bc2e2e
}

#NIE-topBar-menu p {
	padding: 0;
	margin: 0;
	margin-left: 6px;
	line-height: 24px;
	margin-bottom: 4px;
	font-weight: 700;
	color: #626262
}

#NIE-topBar a:hover, #NIE-topBar-include a:hover {
	color: #bc2e2e
}

#NIE-topBar-menu.NIE-topBar-menu-hover {
	opacity: .95
}

#NIE-topBar-menu .NIE-table * {
	font-size: 12px
}

#NIE-topBar-menu.NIE-topBar-menu-hover span {
	border-bottom: 3px solid #bc2e2e;
	background-color: #F3F3F3;
	background-image: -webkit-linear-gradient(top, #F3F3F3 0, #FEFEFE 52px);
	background-image: linear-gradient(top, #F3F3F3 0, #FEFEFE 52px)
}

#NIE-topBar-menu span {
	height: 25px;
	height: 26px\0;
	width: 108px;
	padding-top: 15px;
	padding-top: 14px\0;
	transition: background ease-in-out .33s;
	z-index: 20
}

#NIE-topBar .NIE-topBar-mid a, #NIE-topBar-include .NIE-topBar-mid a {
	color: #333;
	line-height: 52px;
	transition: background ease-in-out .33s;
	*line-height: 55px
}

#NIE-topBar .NIE-topBar-mid a:hover, #NIE-topBar-include .NIE-topBar-mid a:hover
	{
	color: #bc2e2e !important;
	border-bottom: 3px solid #bc2e2e;
	background-color: #F3F3F3;
	background-image: -webkit-linear-gradient(top, #F3F3F3 0, #FEFEFE 52px);
	background-image: linear-gradient(top, #F3F3F3 0, #FEFEFE 52px);
	*border-bottom: 0
}

.NIE-topBar-right {
	position: absolute;
	right: 0;
	top: 0;
	display: block;
	width: 100px;
	height: 55px;
	overflow: hidden;
	z-index: 9
}

.NIE-topBar-right a {
	color: #333 !important;
	width: 100%;
	text-align: center;
	display: inline-block;
	float: left;
	line-height: 52px;
	transition: background ease-in-out .33s;
	-webkit-transition: background ease-in-out .33s
}

.NIE-topBar-right a:hover {
	color: #bc2e2e !important;
	border-bottom: 3px solid #bc2e2e;
	background-color: #F3F3F3;
	background-image: -webkit-linear-gradient(top, #F3F3F3 0, #FEFEFE 52px);
	background-image: linear-gradient(top, #F3F3F3 0, #FEFEFE 52px);
	*border-bottom: 0
}

.NIE-topBar-right a.fadeUp {
	opacity: 0;
	-webkit-transform: translate3d(0, -70%, 0);
	-webkit-transition: all ease-in-out .5s;
	transform: translate3d(0, -70%, 0);
	transition: all ease-in-out .5s
}

.NIE-topBar-right a.none {
	opacity: 0;
	-webkit-transform: translate3d(0, 70%, 0);
	transform: translate3d(0, 70%, 0)
}

.NIE-topBar-right a.fadeUp2 {
	opacity: 1;
	-webkit-transform: translate3d(0, 0, 0);
	-webkit-transition: all ease-in-out .5s;
	transform: translate3d(0, 0, 0);
	transition: all ease-in-out .5s
}
/* 		 #news{background:url("../img/news/2_2.png");border-top: 4px solid rgb(209, 209, 209);} */
/* 	     #news:hover{background:url("../img/news/2_1.png");border-top: 4px solid #d1d1d1;margin-top: 0px;} */
/* 	     #material{background:url("../img/news/3_2.png");} */
/* 	     #material:hover{background:url("../img/news/3_1.png");border-top: 4px solid #d1d1d1;margin-top: 0px;} */
/* 		 #home{background:url("../img/news/1_2.png");} */
/* 	     #home:hover{background:url("../img/news/1_1.png");border-top: 4px solid #d1d1d1;margin-top: 0px;} */
#forum {
	background: url("../img/news/4_2.png");
}

#forum:hover {
	background: url("../img/news/4_1.png");
	border-top: 4px solid #d1d1d1;
	margin-top: 0px;
}


<<<<<<< HEAD
.li {
=======
#li {
>>>>>>> zhuxizhe
	width: 140px;
	height: 37px;
	float: left;
	margin: 3px 13px;
}
<<<<<<< HEAD
.li1{
	width: 160px;
	height: 37px;
	float: left;
	margin: 11px 23px;

}
=======

>>>>>>> zhuxizhe

.ma1 {
	display: block;
	width: 120px;
	height: 40px;

	position:absolute;
	
}

.ma2 {
	display: block;
	width: 120px;
	height: 40px;

	position:absolute;
	
}

.ma3 {
	display: block;
	width: 120px;
	height: 40px;

	position:absolute;
	
}

.ma4 {
	display: block;
	width: 120px;
	height: 40px;

	position:absolute;
	

}
<<<<<<< HEAD
@media(min-width:520px){
	.menu, .menu li {
		padding: 0;
		margin: 8px 11px;
	}
}

@media(min-width:1200px){
	.menu, .menu li {
		padding: 0;
		margin: 8px 23px;
	}
}


=======

.menu, .menu li {
	padding: 0;
	margin: 8px 23px;
}

>>>>>>> zhuxizhe
#news2 {
	display: block;
	width: 100%;
	height: 100%;
}

#news2:hover {
	display: block;
	width: 100%;
	height: 100%;
	color:white;
}


#material2 {
	display: block;
	width: 100%;
	height: 100%;
	
}

#material2:hover {
	display: block;
	width: 100%;
	height: 100%;
	color:white;
/* 	color: #9d8d87;
	border-bottom: 2px solid #9d8d87; */
}

#forum2 {
	display: block;
	width: 100%;
	height: 100%;
	color: #9d8d87;
}

#forum2:hover {
	display: block;
	width: 100%;
	height: 100%;
/* 	color: #9d8d87;
	border-bottom: 2px solid #9d8d87; */
}

#first {
	display: block;
	width: 100%;
	height: 100%;
	color:white;
}

#first:hover {
	display: block;
	width: 100%;
	height: 100%;
	color:white;
/* 	color: #9d8d87;
	border-bottom: 2px solid #9d8d87; */
}

.nav {
	width: 100%;
	height: 81px;
	background: #000;
}
/* 		.menu li{width:163px;height:81px;float:left;margin:5px 13px;} */
/* 	    .menu a{display:block;width:163px;height:81px;text-indent:100px;white-space:nowrap;overflow:hidden;} */
/* 		.menu,.menu li{padding:0;margin: 0px ; } */
.menu {
	list-style-type: none;
	margin-left: 30%
}

.test-top {
	height: 55px;
	background: #FBFBFB none repeat scroll 0% 0%;
}

#NIE-topBar *, #NIE-topBar-include * {
	font-size: 12px;
	font-style: normal;
}

.test-top-main {
	position: relative;
	z-index: 9999;
	width: 1165px;
	margin: auto;
}
/* 		.test-top-logo {width: 412px;height: 232px;display: block;float: left;margin-top: 37px;margin-left: -10%;background: transparent url(../img/newmain/top_corp.PNG) no-repeat scroll 0% 0%;} */
.test-top-logo {
	width: 28.5%;
	height: 232px;
	display: block;
	float: left;
	margin-top: 37px;
	margin-left: -10%;
	background: transparent url(../img/newmain/top_corp.PNG) no-repeat
		scroll 0% 0%;
	background-size: 100%;
}

.test-topBar-mid {
	z-index: 12;
	right: 230px;
	width: 536px;
	position: absolute;
	text-align: right;
	-font-size: 12px;
	font-style: normal;
	line-height: 52px;
	-color: #333;
	-transition: background 0.33s ease-in-out 0s;
}

.test-topBar-mid a {
	line-height: 52px;
	color: #333;
	transition: background 0.33s ease-in-out 0s;
	display: inline-block;
	padding: 0px 12px;
	text-decoration: none;
}

.test-foot {
	font-size: 12px;
	text-decoration: none;
	color: #A0A0A0;
	padding: 20px 0px;
}

.back {
	background: transparent url(../img/news/top.png) no-repeat center 0 / 100% auto;
	width: 56px;
	height: 155px;
	right: 5%;
	top: 53%;
	position: fixed;
	cursor: pointer;
	z-index: 999999;
}

body {
	color: rgb(248, 244, 245);
}

body {
	width: 100%;
	min-height: 1305px !important;
	font-family: "微软雅黑";
	color: #737C86;
	background-color: rgb(244, 244, 244) !important
}

#li1:hover{
	background-color:#0088cc;
	border-radius: 20px;
}
#li2:hover{
	background-color:#0088cc;
	border-radius: 20px;
}
#li3:hover{
	background-color:#0088cc;
	border-radius: 20px;
}
a{
color: rgb(124, 115, 106);
}
#li1{
	background-color:#0088cc;
	border-radius: 20px;
}


* {
	margin: 0px;
	padding: 0px;
}
.page{
<<<<<<< HEAD
	min-width:1233px; 
=======
	min-width:1246px; 
>>>>>>> zhuxizhe
	position: absolute; 
	width: 92%; 
	height: 110px; 
	z-index: 9999; 
	filter: progid:DXImageTransform.Microsoft.gradient(enabled='false', startColorstr='#7F000000', endColorstr='#7F000000'); 
	padding: 0 auto; 
	margin: 0 4%;

}
.page1{
<<<<<<< HEAD
	min-width:1233px; 
	position: absolute; 
	width: 92%; 
=======
	min-width:1246px; 
	position: absolute; 
	width: 100%; 
>>>>>>> zhuxizhe
	height: 110px; 
	z-index: 9999; 
	filter: progid:DXImageTransform.Microsoft.gradient(enabled='false', startColorstr='#7F000000', endColorstr='#7F000000'); 
	padding: 0 auto; 
	margin: 0 4%;

}
</style></head>


<body>

<div id="page" class="comdiv page">
		<ul class="menu">
<<<<<<< HEAD
			<li id="li" class="li"><a class="ma1" href="../index.jsp"><img  onmouseover="this.src='../img/imgz/home2.png';this.style.width='100%';this.style.padding='0px'" onmouseout="this.src='../img/imgz/home1.png';this.style.width='30%';this.style.padding='10% 0 0 35%';" src="../img/imgz/home1.png" style="width:30%;padding-top:10%;padding-left:35%"></a></li>
			<li id="li" class="li"><a  class="ma2" href="news.jsp"><img   src="../img/imgz/game2.png" style="width:100%;"></a></li>
			<li id="li" class="li"><a  class="ma3" href="material.jsp" ><img  onmouseover="this.src='../img/imgz/active2.png';this.style.width='100%';this.style.padding='0px'" onmouseout="this.src='../img/imgz/active1.png';this.style.width='70%';this.style.padding='8% 0 0 13%';" src="../img/imgz/active1.png" style="width:70%;padding-top:8%;padding-left:13%"></a></li>
			<li id="li" class="li"><a  class="ma4" href="https://www.facebook.com/piggycoming/?fref=ts"  target="_Blank" ><img onmouseover="this.src='../img/imgz/fans2.png';this.style.width='100%';this.style.padding='0px'" onmouseout="this.src='../img/imgz/fans1.png';this.style.width='79%';this.style.padding='8% 0 0 9.1%';" src="../img/imgz/fans1.png" style="width:79%;padding-top:8%;padding-left:9.1%"></a></li>
=======
			<li id="li" ><a class="ma1" href="../index.jsp"><img  onmouseover="this.src='../img/imgz/home2.png';this.style.width='100%';this.style.padding='0px'" onmouseout="this.src='../img/imgz/home1.png';this.style.width='30%';this.style.padding='10% 0 0 35%';" src="../img/imgz/home1.png" style="width:30%;padding-top:10%;padding-left:35%"></a></li>
			<li id="li"><a  class="ma2" href="news.jsp"><img   src="../img/imgz/game2.png" style="width:100%;"></a></li>
			<li id="li"><a  class="ma3" href="material.jsp" ><img  onmouseover="this.src='../img/imgz/active2.png';this.style.width='100%';this.style.padding='0px'" onmouseout="this.src='../img/imgz/active1.png';this.style.width='70%';this.style.padding='8% 0 0 13%';" src="../img/imgz/active1.png" style="width:70%;padding-top:8%;padding-left:13%"></a></li>
			<li id="li"><a  class="ma4" href="https://www.facebook.com/piggycoming/?fref=ts"  target="_Blank" ><img onmouseover="this.src='../img/imgz/fans2.png';this.style.width='100%';this.style.padding='0px'" onmouseout="this.src='../img/imgz/fans1.png';this.style.width='79%';this.style.padding='8% 0 0 9.1%';" src="../img/imgz/fans1.png" style="width:79%;padding-top:8%;padding-left:9.1%"></a></li>
>>>>>>> zhuxizhe

		</ul>

	</div>
	<script>
			function show1(){
				var width= document.body.clientWidth; 
<<<<<<< HEAD
				if (width>1500){
					$("#page").addClass("page1");
					$("#page").removeClass("page");
					$("#li").removeClass("li");
					$("#li").addClass("li1");	
=======
				if (width>1439){
					$("#page").addClass("page1");
					$("#page").removeClass("page");		
>>>>>>> zhuxizhe
				}				
			}
		
			window.onload=show1;show1();
		</script>
	<!-- <div class="test-top-main" id="NIE-topBar-main">
		<a class="test-top-logo" href="#"></a>
	</div> -->
	<div class="wrap"
		style="background: transparent url(../img/imgz/bg_neiye.jpg) no-repeat scroll center 0px; background-size: 100%;">
		
		
		
		
		
		
		<div class="right-wrap">
			<div class="content-wrap"
				style="margin-left: 0%; border-radius: 20px;">
				<div
					style="width: 65px; height: 78px; z-index: 100; float: left; margin-top: -11%;">
					<img alt="" src="../img/imgz/cat.png"
						style="width: 100%; height: auto; display: block;">
				</div>
				<div
					style="width: 668px; height: 72px; z-index: 100; float: left; margin-top: -9.5%; margin-left: 72px">
					<p style="color:#7c736a;font-size:37px;">遊戲資訊</p>
					<p style="color:#7c736a;font-size:14px;">您的位置 ： 官網首頁 > 遊戲資訊</p>
				</div>
				<div
					style="width: 65px; height: 78px; z-index: 100;  margin-top: -10.4%;margin-right:100%;float:right;">
					<div style="background:url(../img/imgz/zhu3.JPG) no-repeat center 0 / 100% auto;
					margin-top:650px;width:65px;height:203px;z-index:1;">
					</div>
				</div>
				<div
					style="width: 68px; height: 78px; z-index: 100;  margin-top: -10.5%;margin-left:100.133%;float:left;">
					<div style="background:url(../img/imgz/zhu4.jpg) no-repeat center 0 / 100% auto;
					margin-top:650px;width:68px;height:194px;z-index:1;">
					</div>
				</div>
				
				<!-- <div class="content_title"
					style="-background: url(../img/news/title_bg.png) 50% 0px no-repeat;">
					<div class="title"
						style="background: url(../img/news/title.png) 50% 0px no-repeat;"></div>

				</div> -->

				<div class="content_nav"
					style="width: 92%; height: 68px; margin-left: 33px; border-bottom: 1px solid #EBEDEE; clear: both;">
					<ul class="navList"
						style="width: 708px; height: 67px; margin_left: -33px; boder_bootom: 1px solid rgb(235, 237, 238);">
						<li 
							style="color: #7c736a; float: left; width: 72px; height: 31px; text-align: center; font-size: 20px;padding-top:20px;line-height:31px;padding-right:27px;">
							<div id="li1" style="width:100%;height:auto;">
							<a
							id="first" href="first.jsp" >綜合</a>
							</div>
							</li>
						<li  
							style="color: #7c736a;float: left; width: 72px; height: 31px; text-align: center; font-size: 20px;padding-top:20px;line-height:31px;padding-right:27px;">
							<div id="li2" style="width:100%;height:auto;">
							<a
							id="news2" href="news.jsp" 
							style="display: block; width: 100%; height: 100%;">活動</a>
							</div>
							</li>
						<li 
							style="color: #7c736a;float: left; width: 72px; height: 31px; text-align: center; font-size: 20px;padding-top:20px;line-height:31px;padding-right:27px;">
							<div id="li3" style="width:100%;height:auto;">
							<a
							id="material2" href="material.jsp" >公告</a>
							</div></li>
						<div style="clear: both;"></div>
					</ul>
				</div>
				<div class="content_list_wrap" style="width:92%;margin-left:33px;height:80%">
					<ul>
						<%-- <%
							for (News news : list) {
								SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
								String timeStr = sdf.format(news.getAddTime());
						%> --%>
						
						<%!/* public static final String DRIVER = "com.mysql.jdbc.Driver";
						public static final String USER = "root";
						public static final String PASS = "gangcaidemimahuanle";
						public static final String URL = "jdbc:mysql://192.168.1.221:3306/cms_zy"; */
						public static final int PAGESIZE = 10;
						int pageCount;
						int curPage = 1;%>
							<%
							Connection con = null;
							PreparedStatement ps = null;
							ResultSet rs = null;
								News news = new News();
								//一页放5个
								String user = null;
								String pass = null;
								try {
									/* Class.forName(DRIVER); */
									con = ConnectionService.getInstance().getConnectionForLocal();
									String sql = "SELECT id,`title`,`lastModifyTime`,`catalog` FROM `tbl_cms_contents` WHERE  `status`=1 ";
									ps = con.prepareStatement(sql, ResultSet.TYPE_FORWARD_ONLY,
											ResultSet.CONCUR_READ_ONLY);
									rs = ps.executeQuery();
									rs.last();
									int size = rs.getRow();
									pageCount = (size % PAGESIZE == 0) ? (size / PAGESIZE) : (size / PAGESIZE + 1);
									String tmp = request.getParameter("curPage");
									if (tmp == null) {
										tmp = "1";
									}
									curPage = Integer.parseInt(tmp);
									if (curPage >= pageCount)
										curPage = pageCount;
									boolean flag = rs.absolute((curPage - 1) * PAGESIZE + 1);
									/* out.println(curPage); */
									int count = 0;

									do {
										if (count >= PAGESIZE)
											break;
										news.setAddTime(rs.getLong("lastModifyTime"));
										SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
										String timeStr = sdf.format(news.getAddTime());
										int id = rs.getInt(1);
										String title = rs.getString(2);
										String lastModifyTime = rs.getString(3);
										count++;
										
							%>
						

						<li class="content_list"><a
							href="content.jsp?id=<%=id%>" target="_Blank"><em>【資訊】 </em><%=title%></a>
							<span class="content_date"><%=timeStr%></span></li>
						<%
			} 
				while (rs.next());
				con.close();
			} catch (Exception e) {

			}
		%>
					</ul>
				</div>
				 <div class="pageNum">
					<!-- <a href = "material.jsp?curPage=1" >首页</a> -->
					
						<%if(curPage>=2){%>
					<a id="a1" href = "first.jsp?curPage=<%=curPage-1%>" >上壹頁</a>
						<%}else if(curPage==1){ %>
						<a href = "javascript:;" onclick="alert('已經是第壹頁了')" >上壹頁</a>
						<%} %>
						<%if(curPage!=0){ %>
						<<%=curPage%>>
						<%} %>
						<%if(curPage<pageCount){ %>
					<a id="a2" href = "first.jsp?curPage=<%=curPage+1%>" >下壹頁</a>
						<%} else if(curPage==pageCount){%>
						<a href = "javascript:;" onclick="alert('已經是最後壹頁了')">下壹頁</a>
						<%} %>
					<%-- <a href = "material.jsp?curPage=<%=pageCount%>" >尾页</a>
					第<%=curPage%>页/共<%=pageCount%>页 --%>
				</div>
				
			</div>
			<!-- 分享 start -->
			<div id="NIE-share" class="jltx-share"></div>
			<!-- 分享 end   -->
			<div id="backTop" class="back" style="display: none; opacity: 0.0;"
				onclick="setTop();">
				<a href="#"
					style="width: 56px; height: 155px; display: block; /* margin-left: 5px; margin-top: 5px; */"></a>
			</div>
			
			
			<!--此乃底部-->
		</div>
		
		<div id="" style="background-color: black;" class="test-foot">
			<p id="NIE-copyRight-corp"
				style="width: 100%; text-align: center; margin: 0 auto; padding: 15px 0 0 0; font-size: 12px; font-family: &amp; amp; #39; 宋体 &amp;amp; #39;; line-height: 20px; display: block; position: relative; color: #7c736a;">
				<span
					style="position: relative; vertical-align: top; top: 4px; display: inline-block; position: relative;">
					<a href="http://www.vanggame.com/" target="_blank"
					style="width: 220px; height: 64px; display: inline-block; cursor: pointer; background: url(../img/imgz/logo.png) no-repeat"></a>
				</span> <span
					style="text-align: left; display: inline-block; padding-left: 6px;">
					<span id="ncp-l1"> 萬家遊戲版權所有 Copyright@2016 中國網絡遊戲版權保護聯盟舉報中心</span><a
					href="http://www.miitbeian.gov.cn/"> 閩南B2-20040096-20</a>
					&nbsp;&nbsp;&nbsp;&nbsp;<br> <span id="ncp-l2">抵制不良遊戲&nbsp;拒絕盜版遊戲&nbsp;注意自我保護&nbsp;謹防受騙上當&nbsp;<br>適當遊戲益腦&nbsp;沉迷遊戲傷身&nbsp;合理安排遊戲時間&nbsp;享受健康生活
				</span><br>
				</span>
			</p>
		</div>
	</div>
	<!-- 新闻详情 end -->
	<script type="text/javascript">
		var i = 0;
		var key = 0;
		var scrollFunc = function(e) {
			e = e || window.event;
			console.log($(this).scrollTop());
			/*if (e.wheelDelta) {  //判断浏览器IE，谷歌滑轮事件               
			    if (e.wheelDelta > 0) { //当滑轮向上滚动时  
			       // alert("滑轮向上滚动");  
			    }  
			    if (e.wheelDelta < 0) { //当滑轮向下滚动时  
			       // alert("滑轮向下滚动"); 
			    	console.log(e.wheelDelta);
			    }  
			} else if (e.detail) {  //Firefox滑轮事件 
				console.log(e.detail);
				i += e.detail;
			    if (e.detail> 0) { //当滑轮向上滚动时  
			        //alert("滑轮向下滚动");  
			        if(i>=6&&key==0){
			        	//alert("滑轮向下滚动");
			        	$("#backTop").attr("style","display:block");
			        	key = 1;
			        }
			    }  
			    if (e.detail< 0) { //当滑轮向下滚动时  
			        //alert("滑轮向下滚动");
			    	console.log($(this).scrollTop());
			    	i+= e.detail;
			    	 if ($(this).scrollTop() <= 264) {  //滚动到头部部执行事件
			             //console.dir("我到头部了");
			    		 $("#backTop").attr("style","display:none;");
			             key = 0;
			         }
			    }  */
			if ($(this).scrollTop() > 428) {
				$("#backTop").attr("style", "display:block");
			} else {
				$("#backTop").attr("style", "display:none;");
			}

		}
		//给页面绑定滑轮滚动事件  
		if (document.addEventListener) {//firefox  
			document.addEventListener('DOMMouseScroll', scrollFunc, false);
		}
		//滚动滑轮触发scrollFunc方法  //ie 谷歌  
		window.onmousewheel = document.onmousewheel = scrollFunc;

		function setTop() {
			//console.dir("我到头部了");
			$("#backTop").attr("style", "display:none;");
			key = 0;
		}
	</script>






</body>
</html>