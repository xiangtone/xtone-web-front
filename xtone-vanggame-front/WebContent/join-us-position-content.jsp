<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="org.common.util.ConnectionService"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.vanggame.info.Content"%>
<%@page import="org.vanggame.util.PageUtil"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description"
	content="Bootstrap.">
<meta name="keywords"
	content="HTML, CSS, JS, JavaScript, framework, bootstrap, front-end, frontend, web development">
<%
	String idStr = request.getParameter("id");
// 	String index = request.getParameter("pageindex");
// 	int pageIndex=Integer.parseInt(index);
	int id = Integer.parseInt(idStr);
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	Content content = new Content();
	try {
		con = ConnectionService.getInstance().getConnectionForLocal();
		String sql = "SELECT `title`,`content` FROM `tbl_cms_contents` WHERE id=?";
		ps = con.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		if (rs.next()) {
			content.setTitle(rs.getString("title"));
			content.setContent(rs.getString("content"));
		}
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
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
<title>万家游戏-关于我们</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/docs.min.css" rel="stylesheet">
<!--[if lt IE 9]><script src="../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- <script async="" id="gauges-tracker" data-site-id="4f0dc9fef5a1f55508000013" src="js/bootstrap/track.js"></script> -->
<script async="" src="js/bootstrap/analytics.js"></script>
<script src="js/bootstrap/ie-emulation-modes-warning.js"></script>
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- <script>!function(e,t,a,n,c,o,s){e.GoogleAnalyticsObject=c,e[c]=e[c]||function(){(e[c].q=e[c].q||[]).push(arguments)},e[c].l=1*new Date,o=t.createElement(a),s=t.getElementsByTagName(a)[0],o.async=1,o.src=n,s.parentNode.insertBefore(o,s)}(window,document,"script","//www.google-analytics.com/analytics.js","ga"),ga("create","UA-146052-10","getbootstrap.com"),ga("send","pageview");</script> -->
<style>

.title-left{
    display: block;
    color: #cf1232;
    font-size: 28px;
}

.title-right{
    color: #000;
}

.content{
	background: #fff;
 	padding: 15px 0px 15px 0px;
}

.content-top{
	background: #2c2b30;
	margin-top: 25px;
	padding: 15px 0px 15px 20px;
}

</style>
</head>
<body class="bs-docs-home">
	<header class="navbar navbar-static-top bs-docs-nav" id="top"
		role="banner">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button"
					data-toggle="collapse" data-target="#bs-navbar"
					aria-controls="bs-navbar" aria-expanded="false">
					<span class="sr-only"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="index.jsp"><img alt="logo" src="images/logo.png" class="logo-size"></a>
			</div>
			<nav id="bs-navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right ztgs my-nav">
					<li><a id="index" href="index.jsp"><font class="nav-chinese">首页</font><br><font class="nav-english">HOME</font></a></li>
					<li><a id="news" href="news.jsp"><font class="nav-chinese">新闻动态</font><br><font class="nav-english">NEWS</font></a></li>
					<li><a id="partform" href="porducts-sjyx.html"><font class="nav-chinese">旗下产品</font><br><font class="nav-english">PORDUCTS</font></a></li>					
					<li><a id="abouts" href="about-us-gsjs.html"><font class="nav-chinese">关于我们</font><br><font class="nav-english">VANGGAME</font></a></li>
					<li><a id="cooperation" href="cooperation.html"><font class="nav-chinese">商务合作</font><br><font class="nav-english">COOPERATION</font></a></li>
					<li class="active"><a id="join" href="join-us-shzp.html"><font class="nav-chinese">招贤纳士</font><br><font class="nav-english">JOIN&nbsp;US</font></a></li>
					
				</ul>
			</nav>
		</div>
	</header>
	<div class="col-sm-12 col-sm-12 col-xs-12 nopadding"><img src="images/about-us/banner_about.jpg" class="bsimg"></div>
	<div class="bs-docs-featurette" style="background: #f1f1f1">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-6 nopadding">
					<a href="join-us-position.jsp"><img src="images/about-us/shzp2.png"
						class="bsimg tab"></a>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6 nopadding">
					<a href="join-us-lxwm.html"><img src="images/about-us/lxwm1.jpg"
						class="bsimg tab"></a>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12 content-top ztgs">
				<font class="locate">您所在位置&nbsp;:&nbsp;<a class="locate" href="join-us-position.jsp">社会招聘</a>&nbsp;>&nbsp;<a class="locate" href="#"><%=content.getTitle() %></a></font>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12 content ztgs">
												
					<div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 37px;">
					<%=content.getContent() %>
					</div>

					
				</div>
				
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12 bottom-hieght"></div>
		</div>	
	</div>
	<footer class="bs-docs-footer" role="contentinfo">
		<jsp:include page="footer.html"/>
	</footer>
	
	<script	src="js/bootstrap/jquery.min.js"></script>
	<script	src="js/bootstrap/bootstrap.min.js"></script>
	<script	src="js/docs.min.js"></script>
	<script	src="js/bootstrap/ie10-viewport-bug-workaround.js"></script>
<!-- 	<script>var _gauges=_gauges||[];!function(){var e=document.createElement("script");e.async=!0,e.id="gauges-tracker",e.setAttribute("data-site-id","4f0dc9fef5a1f55508000013"),e.src="//secure.gaug.es/track.js";var t=document.getElementsByTagName("script")[0];t.parentNode.insertBefore(e,t)}();</script> -->
	
</body>
</html>