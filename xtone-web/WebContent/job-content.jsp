<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.vanggame.info.Content" %>
<%@page import="java.sql.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.common.util.ConnectionService"%>
<%@page import="org.vanggame.util.StringUtil"%>
<%@page import="org.vanggame.util.PageUtil"%>
<%@page import="org.vanggame.util.CheckLoad"%>


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
	CheckLoad check = new CheckLoad();
	if(check.JudgeIsMoblie(request)){
		out.print("<script type=\"text/javascript\">function checkload(){$('#content img').attr({style:\"width: 100%;\"});}</script>");
	}
	String idStr = request.getParameter("id");
	String index = request.getParameter("pageindex");
	int pageIndex=Integer.parseInt(index);
	int id = Integer.parseInt(idStr);
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	Content content = new Content();
	try {
		con = ConnectionService.getInstance().getConnectionForLocal();
		String sql = "SELECT `title`,`content`,`lastModifyTime` FROM `tbl_cms_contents` WHERE id=? ";
		ps = con.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		if (rs.next()) {
			content.setTitle(rs.getString("title"));
			content.setContent(rs.getString("content"));
			content.setLastModifyTime(rs.getLong("lastModifyTime"));
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
@font-face { 
  font-family:pictos; 
  src:url('css/zaozi.OTF'); 
}
.title-left{
    display: block;
    color: #cf1232;
    font-size: 25px;
    font-family:pictos;
}

.title-right{
    font-family:pictos;
    color: #8f8f8f;
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
@media(min-width:168px){
.cb{
	min-height:475px;
}
}
@media(min-width:520px){
.cb{
	min-height:485px;
}
}
@media(min-width:768px){
.cb{
	min-height:421px;
}
}
@media(min-width:992px){
.cb{
	min-height:520px;
}
}
@media(min-width:1200px){
.cb{
	min-height:550px;
}
}
</style>
</head>
<body class="bs-docs-home">
	<header class="navbar navbar-static-top bs-docs-nav" id="top"
		role="banner">

	</header>
	<div class="col-sm-12 col-sm-12 col-xs-12 nopadding"><img src="images/about-us/banner_recruitment2.png" class="bsimg"></div>
	<div class="bs-docs-featurette" style="background: #fff;">
		<div class="container cb">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-6 nopadding">
					<a href="join-us-shzp.jsp"><img src="images/about-us/shzp2.png"
						class="bsimg tab"></a>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6 nopadding">
					<a href="join-us-contact.jsp"><img src="images/about-us/lxwm1.png"
						class="bsimg tab"></a>
				</div>
				
				<div class="col-md-12 col-sm-12 col-xs-12 content-top ztgs">
				<font style="font-family:pictos;" color="#8f8f8f"; class="locate">您所在位置&nbsp;:&nbsp;<a class="locate" href="join-us-shzp.jsp">社会招聘</a>&nbsp;>&nbsp;<a class="locate" href="#"><%=content.getTitle()%></a></font>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12 content ztgs">
												
					<div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 7px;">
						<font class="title-left"><%=content.getTitle()%></font><br>
						<font style="font-family:pictos;color:#8f8f8f;"><%=content.getContent() %></font>
						
						
						
						<!-- <font class="title-right content-size">薪资：面议</font><br><br>
						<font style="font-size: 22px;font-family:pictos;" color="#8f8f8f";">职位描述</font><br><br>
						<font class="content-size title-right">1、线上渠道精品游戏渠道拓展、产品接入；<br>
2、各大应用平台、store的合作推广；<br>
3、其他国内渠道精品游戏推广；</font><br><br>

<font style="font-size: 22px;font-family:pictos;" color="#8f8f8f";>职位要求</font><br><br>
<font class="content-size title-right">1、 本科以上学历有2年以上相关工作经验;<br>
2、 熟悉Android iphone手机应用(apps) 的市场背景；<br>
3、 有移动广告平台（app store）业务拓展经验者优先；<br>
4、 有游戏厂商及游戏开发者合作资源者优先；<br>
5、 具备良好的人际交往、语言表达和沟通能力以及一定的管理能力；<br>
6、 具备高度的责任心、诚信的工作作风、优秀沟通能力及团队精神。</font><br><br>

<font style="font-size: 22px;font-family:pictos;" color="#8f8f8f";>联系方式</font><br><br>
<font class="content-size title-right">简历发送至：hr.@bjxiangtone.com<br>
联系电话：0755-86665507<br>
地址：深圳市南山区中科大厦21楼B1单元</font> -->


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
	<script type="text/javascript">
		$("#top").load("top.html");
		$("#footer").load("footer.html");
	</script>
<!-- 	<script>var _gauges=_gauges||[];!function(){var e=document.createElement("script");e.async=!0,e.id="gauges-tracker",e.setAttribute("data-site-id","4f0dc9fef5a1f55508000013"),e.src="//secure.gaug.es/track.js";var t=document.getElementsByTagName("script")[0];t.parentNode.insertBefore(e,t)}();</script> -->
	
</body>
</html>