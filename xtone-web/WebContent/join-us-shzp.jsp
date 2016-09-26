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
<%
int pageIndex =1;
try{
	String index = request.getParameter("pageindex");
	pageIndex =Integer.parseInt(index);
}catch(Exception e){
//		System.out.println("第一页");
//		e.printStackTrace();
}
int count = 0;

%>
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
.newsli{
	border-bottom: #e1e1e0 solid 1px;
	padding-top: 15px;
	padding-bottom: 16px;
/* 	list-style-image: url("images/index/dian_1.png"); */
	color: #cf1232;
}

@media ( min-width :768px){
.newsli{
	border-bottom: #e1e1e0 solid 1px;
	padding-top: 11px;
	padding-bottom: 11px;
/* 	list-style-image: url("images/index/dian_1.png"); */
color: #cf1232;
}
}
@media ( min-width :1201px){
.newsli{
	border-bottom: #e1e1e0 solid 1px;
	padding-top: 16px;
	padding-bottom: 16px;
/* 	list-style-image: url("images/index/dian_1.png"); */
color: #cf1232;
}
   
}

.newsli i{
color: #aaaaaa;
}

.newsli em{
color: #aaaaaa;
}

.links{
	color: #aaaaaa;
    text-decoration: none;
}

.title{
    display: block;
    color: #ea474a;
    padding-left: 15px;
    font-size: 18px;
    font-family:pictos;
    padding-left:0px;
}
.nei{
	font-size: 14px;
    font-family:pictos;
    color: #9e9e9e;
    padding-left:0px;
}

.content{
	background: #fff;
	margin-top: 25px;
 	padding: 15px 0px 15px 0px;
}

.btn{
	margin: 4px 0 0 10px;
    background: #cf1232;
    color: #fff;
    padding-left: 25px;
    padding-right: 25px;
    font: 14px Verdana, Arial, Helvetica, sans-serif;
    }
 
.bg{
    padding:0px;
    border: 1px solid #9e9e9e;
    -moz-border-radius: 15px; 
    -webkit-border-radius: 15px; 
    border-radius:23px;           
}
.xx{
	width:100%;
	border-bottom:1px solid #9e9e9e;
	margin-top: 0px;
 	padding: 0px;
}
.xx1{
	width:100%;
	margin-top: 0px;
 	padding: 0px 0px 10px 0px;
}
.rt{
	padding:0px 9px 0px 9px;
}
 

.pageNum{
	width:100%;
	height:50px;
	text-align:center;
	margin-top:20px;
	float:left;
}
@media(min-width:168px){
.cb{
	min-height:475px;
}
}
@media(min-width:520px){
.cb{
	min-height:514px;
}
}
@media(min-width:768px){
.cb{
	min-height:430px;
}
}
@media(min-width:992px){
.cb{
	min-height:529px;
}
}
@media(min-width:1200px){
.cb{
	min-height:558px;
}
}
</style>
</head>
<body class="bs-docs-home">
	<header class="navbar navbar-static-top bs-docs-nav" id="top"
		role="banner">
		<jsp:include page="top.html"></jsp:include>
	</header>
	<div class="col-sm-12 col-sm-12 col-xs-12 nopadding"><img src="images/about-us/banner_recruitment2.png" class="bsimg" ></div>
	<div class="bs-docs-featurette " style="background: #fff;">
		<div class="container cb" >
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-6 nopadding">
					<a href="join-us-shzp.jsp"><img src="images/about-us/shzp2.png"
						class="bsimg tab"></a>
				</div>
				 <div class="col-md-6 col-sm-6 col-xs-6 nopadding">
					<a href="join-us-contact.jsp"><img src="images/about-us/lxwm1.png"
						class="bsimg tab"></a>
				</div>
				
				
				<div class="col-md-12 col-sm-12 col-xs-12 content ztgs rt ">
				<div class="col-md-12 col-sm-12 col-xs-12 content ztgs bg " >
					<%!
					
			
						public static final int PAGESIZE = 8;
						int pageCount;
						int curPage = 1;%>
							<%
							Connection con = null;
							PreparedStatement ps = null;
							ResultSet rs = null;
								Content news = new Content();
								//一页放8个
								String user = null;
								String pass = null;
								try {
									con = ConnectionService.getInstance().getConnectionForLocal();								
									String sql = "SELECT id,`title`,`lastModifyTime`,`catalog` ,`subTitle`,`content` FROM `tbl_cms_contents` WHERE `catalog` = 'job' AND `status`=1 ";
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
									

									do {
										if (count >= PAGESIZE)
											break;
										Content news1 = new Content();
										news.setAddTime(rs.getLong("lastModifyTime"));
										SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
										String timeStr = sdf.format(news.getAddTime());
										int id = rs.getInt(1);
										System.out.println(id);
										String title = rs.getString(2);
										/* String lastModifyTime = rs.getString(3); */
										String content = rs.getString(6);
										String subTitle = rs.getString(5);
										count++;
										
							%>	
					<div class="col-md-12 col-sm-12 col-xs-12 ztgs xx">
					<div class="col-md-100 col-sm-9 col-xs-7" style="padding-top:10px;">
						 <p class="title"><%=title%></p>						
					</div>
					<div class="col-md-2 col-sm-3 col-xs-5 ck" style="width:105px;">
						<!-- <input type="button" value="查看详情" onclick="window.location.href='shzp1.html'" class="btn"> -->
						<a href="job-content.jsp?pageindex=<%=pageIndex%>&id=<%=id%>"><img src="images/about-us/ckxq.png" style="width:100%"></a>
					</div>
					<div class="col-md-3 col-sm-4 col-xs-12 nei" style="width:100%;padding:8px 14px;"><%=subTitle%></div>
					  <%-- <div class="col-md-3 col-sm-4 col-xs-12 nei" ><%=content%></div>  --%>
				<!--	<div class="col-md-3 col-sm-4 col-xs-12 nei">
					&nbsp;&nbsp;&nbsp;&nbsp;招聘名额：1人
					</div> -->
			
					</div>
					
							<%
			} 
				while (rs.next());
				con.close();
			} catch (Exception e) {

			}
		%>
					<div class="pageNum" >
					<!-- <a href = "material.jsp?curPage=1" >首页</a> -->
					
						<%if(curPage>=2){%>
					<a id="a1" href = "join-us-shzp.jsp?curPage=<%=curPage-1%>" >上一页</a>
						<%}else if(curPage==1){ %>
						<a href = "javascript:;" onclick="alert('已经是第一页了')" >上一页</a>
						<%} %>
						<%if(curPage!=0){ %>
						<<%=curPage%>>
						<%} %>
						<%if(curPage<pageCount){ %>
					<a id="a2" href = "join-us-shzp.jsp?curPage=<%=curPage+1%>" >下一页</a>
						<%} else if(curPage==pageCount){%>
						<a href = "javascript:;" onclick="alert('已经是最后一页了')">下一页</a>
						<%} %>
					<%-- <a href = "material.jsp?curPage=<%=pageCount%>" >尾页</a>
					第<%=curPage%>页/共<%=pageCount%>页 --%>
				</div>
					
				</div>
				
				 
				</div>
				
				<div class="col-md-12 col-sm-12 col-xs-12 bottom-hieght"></div>
			</div>
		</div>	
	</div>
	<footer class="bs-docs-footer" role="contentinfo">
		<div id="footer"></div>
	</footer>
	
	<script	src="js/bootstrap/jquery.min.js"></script>
	<script type="text/javascript">
// 		$("#top").load("top.html");
		$("#footer").load("footer.html");
		 
	</script>
<!-- 	<script>var _gauges=_gauges||[];!function(){var e=document.createElement("script");e.async=!0,e.id="gauges-tracker",e.setAttribute("data-site-id","4f0dc9fef5a1f55508000013"),e.src="//secure.gaug.es/track.js";var t=document.getElementsByTagName("script")[0];t.parentNode.insertBefore(e,t)}();</script> -->
</body>
</html>