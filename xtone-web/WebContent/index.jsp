<%@page import="org.vanggame.util.CheckLoad"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="org.common.util.ConnectionService"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.vanggame.info.Content"%>
<%
	int count = 0;
	CheckLoad check = new CheckLoad();
	if(check.JudgeIsMoblie(request)){
		out.print("<script type=\"text/javascript\">function updateVido(){$(\"#pop-video-a\").attr({href:\"http://www.wsview.com/yzplayerAction!play2.action?autoPlay=true&userVideoID=102264&iframe=iframe\",target:\"_blank\"});}</script>");
	}
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	List<Content> list = new ArrayList<Content>();
	try {
		con = ConnectionService.getInstance().getConnectionForLocal();
		String limit = " limit " + 6 * (1 - 1) + "," + 6;
		String sql = "SELECT id,`title`,`lastModifyTime` FROM `tbl_cms_contents` WHERE `catalog` LIKE '%news%' AND `status`=1 ORDER BY priority DESC,lastModifyTime DESC "
				+ limit;
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();

		while (rs.next()) {
			Content news = new Content();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setLastModifyTime(rs.getLong("lastModifyTime"));
			list.add(news);
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
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description" content="万家游戏致力创造美好娱乐生活，主要业务涵盖游戏的运营发行、移动广告及增值支付等业务。旗下拥有《口袋大冒险》、《电视萌萌答》、《捉妖友人帐》等IP经典热门游戏，立足全国放眼海外，万家游戏将打造成全国乃至全球领先的网络游戏平台。">
<meta name="keywords"
	content="万家游戏，万家，游戏，手游，商务，合作，招聘，发行，vanggame,VANGGAME，手机游戏，网页游戏">

<meta name="author" content="Shirp" />
<title>万家游戏 -万家游戏 汇聚精品</title>
<script src="js/bootstrap/jquery.min.js"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/docs.min.css" rel="stylesheet">
<!--[if lt IE 9]><script src="../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- <script async="" id="gauges-tracker" -->
<!-- 	data-site-id="4f0dc9fef5a1f55508000013" src="js/bootstrap/track.js"></script> -->
<script async="" src="js/bootstrap/analytics.js"></script>
<script src="js/bootstrap/ie-emulation-modes-warning.js"></script>

<!--[if lt IE 9]><script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- <script>!function(e,t,a,n,c,o,s){e.GoogleAnalyticsObject=c,e[c]=e[c]||function(){(e[c].q=e[c].q||[]).push(arguments)},e[c].l=1*new Date,o=t.createElement(a),s=t.getElementsByTagName(a)[0],o.async=1,o.src=n,s.parentNode.insertBefore(o,s)}(window,document,"script","//www.google-analytics.com/analytics.js","ga"),ga("create","UA-146052-10","getbootstrap.com"),ga("send","pageview");</script> -->
<style>
.carbonad {
	display: block;
	background: #fdfdfd;
	background-image: -moz-linear-gradient(top, #f8f8f8, #fdfdfd);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #f8f8f8),
		color-stop(1, #fdfdfd));
	border: 1px solid #d5d5d5;
	font-family: Lucida Grande, Arial, Helvetica, sans-serif;
	font-size: 11px;
	height: 118px;
	line-height: 15px;
	overflow: hidden;
	width: 300px
}

.carbonad-img {
	border: none;
	display: inline;
	float: left;
	height: 100px;
	margin: 9px;
	width: 130px
}

.carbonad-text {
	display: inline;
	float: left;
	width: 142px;
	padding-top: 13px
}

.carbonad-text a {
	color: #000;
	text-decoration: none;
	text-transform: none;
}

.carbonad-tag {
	float: left;
	margin-top: 9px;
	text-align: center;
	width: 142px;
	color: #999
}

.carbonad-tag a {
	color: #999;
	text-decoration: none
}


.title {
	margin-top: 80px;
	margin-bottom: 9px;
}

.newsli {
	border-bottom: #e1e1e0 dashed 1px;
	padding-top: 17px;
	padding-bottom: 16px;
	/* 	list-style-image: url("images/index/dian_1.png"); */
	color: #cf1232;
}

.newsli font {
	color: #777777;
	font-size: 17px;
}

.newsli em {
	color: #aaaaaa;
}

@media ( min-width :168px) {
	.newsli {
		padding-top: 11px;
		padding-bottom: 16px;
	}
	.newsli font {
		font-size: 12px;
	}
	.newsli em {
		font-size: 12px;
	}
	.title {
		margin-top: 40px;
	}
}

@media ( min-width :768px) {
	.newsli {
		padding-top: 10px;
		padding-bottom: 11px;
	}
	.newsli font {
		font-size: 15px;
	}
	.newsli em {
		font-size: 15px;
	}	
	.title {
		margin-top: 60px;
	}
}

@media ( min-width :1201px) {
	.newsli {
		padding-top: 12px;
		padding-bottom: 13px;
	}
	.newsli font {
		font-size: 17px;
	}
	.newsli em {
		font-size: 17px;
	}
	.title {
		margin-top: 80px;
	}
}

.links {
	color: #aaaaaa;
	text-decoration: none;
	font-size: 15px;
	/* font-family:pictos; */
}

#overlay {
	display: none;
	position: fixed;
	top: 0px;
	left: 0px;
	z-index: 9999;
	width: 100%;
	height: 100%;
	background: #000 none repeat scroll 0% 0%;
	opacity: 0.5;
}

.videoPop {
	display: none;
	position: fixed;
	left: 50%;
	top: 40%;
	z-index: 9999;
	width: 900px;
	height: 600px;
	margin: -225px 0px 0px -400px;
}

.pop {
	display: none;
	position: fixed;
	left: 50%;
	top: 50%;
	z-index: 9999;
	width: 1000px;
	height: 1000px;
	margin: -272px 0px 0px -439px;
	/*     background: transparent url("images/index/vedio-start.png") no-repeat scroll 0% 0%; */
}

.videoPop .pop-close {
	position: absolute;
	top: 0px;
	right: 53px;
	width: 47px;
	height: 47px;
	cursor: pointer;
	background: transparent url("images/index/pop_close.png") no-repeat
		scroll 0% 0%;
}

.pop-close {
	position: absolute;
	top: 0px;
	right: 53px;
	width: 47px;
	height: 47px;
	cursor: pointer;
	background: transparent url("images/index/pop_close.png") no-repeat
		scroll 0% 0%;
}
#gd-1{
	overflow:hidden;
	width:100%;
}
#gd-2{
	float:left;
	width: 1200%;
}
#gd-3{
	float:left;
}
#gd-4{
	float:left;
	/* margin-left:10px; */
}




</style>

</head>
<body class="bs-docs-home">
	<header class="navbar navbar-static-top bs-docs-nav" id="top"
		role="banner">
		<jsp:include page="top.html"></jsp:include>
	</header>

	<div id="myCarousel" class="carousel slide" data-ride="carousel"
		data-interval="5000">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			<!--       <li data-target="#myCarousel" data-slide-to="3"></li> -->
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div class="item active" style="border: none;">
			<a href="porducts.jsp"><img src="images/index/066.png"></a>	
			</div>
			<div class="item" style="border: none;">
			<a href="porducts.jsp"><img src="images/index/1900x540-1.jpg" alt="Second banner"></a>
			</div>
			<div class="item" style="border: none;">
			<a href="porducts.jsp"><img src="images/index/1900x540_3.jpg" alt="Thrid banner"></a>
			</div>
			<div class="item" style="border: none;">
			<a href="porducts.jsp"><img src="images/index/1900x540_1.jpg" alt="Fourth banner"></a>
			</div>
			<div class="item" style="border: none;">
			<a href="porducts.jsp"><img src="images/index/zhulaile.jpg" alt="Fifth banner"></a>
			</div>
			<!-- 		<div class="item" style="border: none;"> -->
			<!--          <img src="images/index/1900x540_2.png" alt="Second slide"> -->
			<!--       </div> -->
		</div>
		<!-- 轮播（Carousel）导航 -->
		   <a class="carousel-control left" href="#myCarousel" 
		      data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
		   <a class="carousel-control right" href="#myCarousel" 
		      data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
	</div>
	<div style="background-color: #f1f0ee; background-size: cover;">
		<div class="bs-docs-featurette">
			<div class="container">
				<div class="row home-padding">
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding title">	
					</div>
					
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding" style="background-color: white;">
					<div class="col-md-4-1 col-sm-12 col-xs-12 video nopadding" style="padding:10px;">
						<a class="btn-video" href="javascript:openVideo();" id="pop-video-a"><img
							src="images/index/vedio-kddmx.png" class="bsimg" > </a>

						<div id="overlay" style="display: none;"></div>
						<div class="pop videoPop" id="pop-video" style="display: none;">
							<div class="pop-close"></div>
							<div class="pop-content"></div>
						</div>

					</div>
					
					<div class="col-md-8-1 col-sm-12 col-xs-12 nopadding ztgs"
						>
						<ul class="" style="margin-right: -10px; margin-bottom: 0px;">
							<%
								for (Content news : list) {
							%>
							
							<li class="newsli" type = "square"><a
								href="news-content.jsp?pageindex=1&id=<%=news.getId()%>"          
								<%String title = news.getTitle();
								  if(title.length()>15){
									  title = title.subSequence(0, 14)+"...";
								  }
								
								%>
								target="_blank"><font style="font-size:15px;font-family:pictos;margin-right: 20px;"><%=title%></font></a> <em
								style="float: right;"><font style="font-size:13px;font-family:pictos;margin-right: 20px;"><%=news.getTimeStr()%></font></em> <%
 	}
 %>
						</ul>
					</div>
					

					</div>
				</div>
			</div>
		</div>
		
		<div class="bs-docs-featurette">
			<div class="container">
				<div class="row home-padding jx">
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding title">
						<!--  <div class="col-md-3 col-sm-3 col-xs-6 nopadding">
							<img src="images/index/hot_game.png" class=""></img>
						</div> 

						<div class="col-md-9 col-sm-9 col-xs-6 nopadding">
							<a href="porducts.jsp" style="float: right"><img
								src="images/index/more.png"></img></a>
						</div> -->
					</div>

					<div class="col-md-12 col-sm-12 col-xs-12 nopadding">
						<div class="col-md-4 col-sm-4 col-xs-4 nopadding a-1-0">
							<div class="hot_game hot_list">

								<div class="l hot_gamebox mb1" >
									<a href="porducts.jsp"><img
										src="images/index/065.png" class="bsimg-x" alt="First game" >
									</a>
									<div class="bmbox2" >
									 <div class="bmbox" >
										<a class="a-1-1" href="porducts.jsp"><img class="imgz" alt="First game" src="images/index/jrgw.png"></a>					
									</div> 
									  <div class="bmbox1">
										<a href="porducts.jsp"><img class="imgz" alt="First game" src="images/index/download.png"></a>					
									</div>
									</div>										
								</div>

							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-4 nopadding a-1-0">
							<div class="hot_game hot_list">
								<div class="l hot_gamebox mb1">
									
									<a href="porducts.jsp"><img
										src="images/index/064.png" class="bsimg-x" alt="Second game" ></a>
									 <div class="bmbox2" >
									 <div class="bmbox">
										<a class="a-1-1" href="porducts.jsp"><img class="imgz" alt="First game" src="images/index/jrgw.png"></a>					
									</div> 
									  <div class="bmbox1">
										<a href="porducts.jsp"><img class="imgz" alt="First game" src="images/index/download.png"></a>					
									</div>
									</div> 
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-4 nopadding a-1-0">
							<div class="hot_game hot_list">
								<div class="l hot_gamebox mb1">
									<a href="porducts.jsp"><img
										src="images/index/063.png" class="bsimg-x" alt="Third game" ></a>
									<div class="bmbox2" >
									<div class="bmbox">
										<a class="a-1-1" href="porducts.jsp"><img class="imgz" alt="First game" src="images/index/jrgw.png"></a>					
									</div> 
									  <div class="bmbox1">
										<a href="porducts.jsp"><img class="imgz" alt="First game" src="images/index/download.png"></a>					
									</div> 
									</div> 
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="bs-docs-featurette bottom-hieght">
			<div class="container">
				<div class="row home-padding">
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding title">
						<!-- <div class="col-md-3 col-sm-3 nopadding">
							<img src="images/index/links.png"></img>
						</div> -->
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding ztgs"
						style="background-color: #fafafa; font-family:pictos;padding: 5px;text-align: center;">
						<div class="tt20"><font  class="links">友情链接：</font></div>
							 <div class="tt20 tt20-1">
							   <script type="text/javascript">
									window.onload = function(){
									var speed=20; 
									var tab=document.getElementById("gd-1");
									var tab1=document.getElementById("gd-3");
									var tab2=document.getElementById("gd-4");
									tab2.innerHTML=tab1.innerHTML;
									function Marquee(){
									if(tab2.offsetWidth-tab.scrollLeft<=0)
									tab.scrollLeft-=tab1.offsetWidth
									else{
									tab.scrollLeft++;
									}
									}
									var MyMar=setInterval(Marquee,speed);
									tab.onmouseover=function() {clearInterval(MyMar)};
									tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
								}
								</script>
							    <div id="gd-1">
								   	<div id="gd-2">
										<div id="gd-3">
											<a href="http://www.alllink.com.cn/" class="links tt20-1" target="_blank">北京通联天地科技有限公司</a>&nbsp;&nbsp;&nbsp;&nbsp;
				 							<a href="http://www.xtonecomic.com/" class="links tt20-1" target="_blank">北京讯宇创世科技有限公司</a>&nbsp;&nbsp;&nbsp;&nbsp;
				 							<a href="http://14643233.czvv.com/" class="links tt20-1" target="_blank">北京游动天地科技有限公司</a>&nbsp;&nbsp;&nbsp;&nbsp;
				 							<a href="http://www.pvc123.com/b-pxtonewinnie/" class="links tt20-1"	target="_blank">深圳市创世互动科技有限公司</a>&nbsp;&nbsp;&nbsp;&nbsp;
				 							<a href="http://www.m-time.com/" class="links tt20-1" target="_blank">深圳市浩天投资有限公司</a>&nbsp;&nbsp;&nbsp;&nbsp;
				 							<a href="porducts.jsp" class="links tt20-1" target="_blank">龙之怒吼</a>&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="http://zy.xtonegame.com/" class="links tt20-1" target="_blank">神魔战歌</a>&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="porducts.jsp" class="links" target="_blank tt20-1">封神战</a>&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="porducts.jsp" class="links" target="_blank tt20-1">零纪元</a>&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="http://dmx.xtonegame.com" class="links tt20-1" target="_blank">口袋大冒险</a>&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div id="gd-4"></div>
								   </div>
							   </div> 
							 </div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<footer class="bs-docs-footer" role="contentinfo">
		<div id="footer"></div>
	</footer>
	<script>
// 		var _gauges = _gauges || [];
// 		!function() {
// 			var e = document.createElement("script");
// 			e.async = !0, e.id = "gauges-tracker", e.setAttribute(
// 					"data-site-id", "4f0dc9fef5a1f55508000013"),
// 					e.src = "//secure.gaug.es/track.js";
// 			var t = document.getElementsByTagName("script")[0];
// 			t.parentNode.insertBefore(e, t)
// 		}();
	</script>
	
	<script type="text/javascript">
// 	$("#top").load("top.html");
	$("#footer").load("footer.html");
	$(function() {
			$('.hot_list .hot_gamebox').hotlist();
			updateVido();
		})
		function ishidden(){
			var _this = $("#hide").parent();
			if(_this.parent().is(':hidden')){
				_this.parent().show();
				return;
			}
			_this.parent().hide();
		}
				
	</script>
	<script type="text/javascript">
	

		function openPop(popID) {
			closePop();

			var iframe = "<div class='pop-close'></div><iframe marginWidth=0 marginHeight=0 src=http://www.wsview.com/yzplayerAction!play2.action?autoPlay=true&userVideoID=102264&iframe=iframe frameBorder=0 width=900 scrolling=no height=600 allowTransparency></iframe>";
			//<iframe marginWidth=0 marginHeight=0 src='http://www.wsview.com/yzplayerAction!play2.action?autoPlay=true&userVideoID=84293&iframe=iframe' frameBorder=0 width=900 scrolling=no height=600 allowTransparency></iframe>
			//<iframe marginWidth=0 marginHeight=0 src='http://www.wsview.com/yzplayerAction!play2.action?autoPlay=true&userVideoID=99941&iframe=iframe' frameBorder='0' width='900' scrolling='no' height='600' allowTransparency  ></iframe>
			//<iframe src="http://www.tudou.com/programs/view/html5embed.action?type=0&code=TH2_JYClSmY&lcode=&resourceId=88968501_06_05_99" allowtransparency="true" allowfullscreen="true" allowfullscreenInteractive="true" scrolling="no" border="0" frameborder="0" style="width:900px;height:600px;"></iframe>
			//$("#overlay,"+popID).html(iframe);
			//$("#overlay, .pop-close").click(closePop);

			$(popID).html(iframe);

			$("#pop-video").click(closePop);
			$("#overlay," + popID).show();
			//$("#pop-vido").show();
			//$("#overlay").show();
		}
		function closePop() {
			$(".videoPop .pop-content").empty();
			$("#pop-video").html("");
			$("#overlay, .pop").hide();
		}
		$("#overlay, .pop-close").click(closePop);

		function openVideo() {

			//$("#pop-vido").innelHTML()
			//$("#pop-vido").show();
			var str = "#pop-video";
			openPop(str);
		}
	</script>

</body>
</html>