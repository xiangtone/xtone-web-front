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
<meta name="description" content="万家游戏致力创造美好娱乐生活，主要业务涵盖游戏的运营发行、移动广告及增值支付等业务。旗下拥有《口袋大冒险》、《电视萌萌答》、《捉妖友人帐》等IP经典热门游戏，立足全国放眼海外，万家游戏将打造成全国乃至全球领先的网络游戏平台。">
<meta name="keywords"
	content="万家游戏，万家，游戏，手游，商务，合作，招聘，发行，vanggame,VANGGAME，手机游戏，网页游戏">
<meta name="author" content="Shirp" />
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
		<jsp:include page="top.html"></jsp:include>
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
					<a href="join-us-contact.jsp"><img src="images/about-us/lxwm1.jpg"
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
		<div id="footer"></div>
	</footer>
	
	<script	src="js/bootstrap/jquery.min.js"></script>
<!-- 	<script>var _gauges=_gauges||[];!function(){var e=document.createElement("script");e.async=!0,e.id="gauges-tracker",e.setAttribute("data-site-id","4f0dc9fef5a1f55508000013"),e.src="//secure.gaug.es/track.js";var t=document.getElementsByTagName("script")[0];t.parentNode.insertBefore(e,t)}();</script> -->
	<script type="text/javascript">
// 		$("#top").load("top.html");
		$("#footer").load("footer.html");
	</script>
</body>
</html>