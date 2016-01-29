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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	CheckLoad check = new CheckLoad();
	if(check.JudgeIsMoblie(request)){
		response.sendRedirect("mpLoad.jsp");
	}
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String exchange = "";
	List<News> list = new ArrayList();
	List<News> list2 = new ArrayList();
	List<News> list3 = new ArrayList();
	List<News> list4 = new ArrayList();
	try{
		System.out.println("try load...");
		con = ConnectionService.getInstance().getConnectionForLocal();
		//con = ConnConfigMain.getConnection();
		String limit = " limit "+ 0 + "," + 5;
		String sql = "SELECT id,`title`,`lastModifyTime`,`catalog` FROM `tbl_cms_contents` WHERE `status`=1  ORDER BY addTime DESC "+limit;
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while(rs.next()){
			News news = new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setAddTime(rs.getLong("lastModifyTime"));
			news.setCatalog(rs.getString("catalog"));
			list.add(news);
		}
		
		sql = "SELECT id,`title`,`lastModifyTime`,`catalog` FROM `tbl_cms_contents` WHERE `catalog` LIKE '%news%' AND `status`=1 ORDER BY addTime DESC "+limit;
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next()){
			News news = new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setAddTime(rs.getLong("lastModifyTime"));
			news.setCatalog(rs.getString("catalog"));
			list2.add(news);
		}
		
		sql = "SELECT id,`title`,`lastModifyTime`,`catalog` FROM `tbl_cms_contents` WHERE `catalog` LIKE '%material%' AND `status`=1 ORDER BY addTime DESC " +limit;
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next()){
			News news = new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setAddTime(rs.getLong("lastModifyTime"));
			news.setCatalog(rs.getString("catalog"));
			list3.add(news);
		}
		
		sql = "SELECT id,`title`,`lastModifyTime`,`catalog` FROM `tbl_cms_contents` WHERE `catalog` LIKE '%forum%' AND `status`=1 ORDER BY addTime DESC " +limit;
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next()){
			News news = new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setAddTime(rs.getLong("lastModifyTime"));
			news.setCatalog(rs.getString("catalog"));
			list4.add(news);
		}
		
		sql = "SELECT * FROM `tbl_exchange_codes`;";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if(rs.next()){
			exchange = rs.getString("content");
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>《神魔战歌》2015 最酷炫神魔题材手游</title>
<meta name="keywords" content="神魔,魔幻,战歌,卡牌,魔兽,刀塔,LOL,养成,RPG,动作,游戏,手游,点控,酷炫特效,美女,英雄,大集合,大乱斗,MOBA,公会战,图腾,女神">
<meta name="description" content="2015最酷炫神魔题材手游《神魔战歌》正式登陆。神魔狂战，鹿死谁手!集齐史上各路神魔，养成史上最强神魔英雄。突破传统动作卡牌限制，领地建设给你带来不一样的养成体验~">
<meta name="author" content="神魔传奇.">
<meta name="copyright" content="神魔传奇.">
<link type="text/css" rel="stylesheet" href="index.css">
<link href="/favicon.ico" rel="icon" type="image/x-icon" />
<link type="text/css" rel="stylesheet" href="../js-css/main/share.v3.2.css">
<style type="text/css">#NIE-copyRight a{text-decoration: none;}#NIE-copyRight a:hover{text-decoration: underline;}</style>
<style type="text/css">.adbase-ctn{background:url(../img/main/loading.png) center center no-repeat;}</style>
<style type="text/css">

	 #news{background:url("../img/main/2_2.png");}
     #news:hover{background:url("../img/main/2_1.png");}
     #material{background:url("../img/main/3_2.png");}
     #material:hover{background:url("../img/main/3_1.png");}
     #forum{background:url("../img/main/4_2.png");}
     #forum:hover{background:url("../img/main/4_1.png");}
	 #home{background:url("../img/main/1_2.png");}
     #home:hover{background:url("../img/main/1_1.png");}

	.nav{width:100%;height:81px;background:url(../img/main/bg_Navigator.png) no-repeat center 0}
	.title{width: 87px;height:31px;line-height:31px;display:block;text-align:center;color:#6CCD2C;font-size: 14px;overflow: hidden;}
	.topmenu1{float: left;width: 102px;height: auto;overflow: hidden;margin: 0 0 0 30px;}

	.joy_backs{background:url(../img/main/top_corp.png) no-repeat 0 0 / 627px 40px;}
	.top_box{max-width:1100px; height:45px; margin:0 auto; position:relative; z-index:1;}

	.top_box .joy_logo{float:left; width:630px; height:45px;  background-position:5px 5px; overflow: hidden;}
	.back_white{background-color:#fff;margin:0;padding:0;}
	#NIE-topBar .hide,#NIE-topBar-include .hide{display:none!important}
	.NIE-topBar-logo,.NIE-topBar-arrIcon i,#NIE-topBar-menu span,.NIE-topBar-hot,.NIE-topBar-1st,.NIE-topBar-new,.NIE-topBar-btn{
		background:url(../img/main/sprite-w.png) no-repeat
	}
	.NIE-topBar-arrIcon{
		background: transparent url("../img/main/show.png") no-repeat scroll 0% 0%;
		position:relative;
		top:8px;
		width:16px;
		height:16px;
		display:inline-block;
		-background-color:#fff;
		overflow:hidden

	}
	.NIE-topBar-arrIcon i{
		width:9px;
		height:4px;
		float:left;
		margin:6px 0 0 4px;
		background-position:-103px -101px;
		display:inline-block;
		-webkit-transition:all .2s ease 0s;
		transition:all .2s ease 0s
	}
	#NIE-topBar,#NIE-topBar-include{
		position:relative;z-index:9999;min-width:1000px;height:40px;background:#333;line-height:24px;font-family:"Microsoft YaHei",simSun,"Lucida Grande","Lucida Sans Unicode",Arial}#NIE-topBar *,#NIE-topBar-include *{font-size:12px;font-style:normal}#NIE-topBar a,#NIE-topBar-include a{color:#999;text-decoration:none}#NIE-topBar a:hover,#NIE-topBar-include a:hover{color:#fff}#NIE-topBar ul,#NIE-topBar li,#NIE-topBar-include ul,#NIE-topBar-include li{margin:0;padding:0;float:left}.NIE-topBar-main{position:relative;z-index:9999;width:1000px;margin:auto}.NIE-topBar-logo{width:133px;height:44px;display:block;float:left;margin-top:6px;background:url(../img/main/logo.png) no-repeat}#NIE-topBar-news{position:absolute;z-index:13;width:420px;height:54px;left:125px;padding-left:18px;padding-top:0;overflow:hidden;display:block}#NIE-topBar-news.NIE-topBar-news-hover{height:250px;overflow:visible;border-color:#1f1f1f}#NIE-topBar-news a{width:960px;display:block;height:0;overflow:hidden;z-index:1;-webkit-box-shadow:0 2px 4px rgba(0,0,0,.2);-o-box-shadow:0 2px 4px rgba(0,0,0,.2);-moz-box-shadow:0 2px 4px rgba(0,0,0,.2);box-shadow:0 2px 4px rgba(0,0,0,.2)}#NIE-topBar-news-close{position:absolute;top:63px;right:-380px;display:block;width:32px;height:32px;overflow:hidden;background:url(../img/main/sprite-w.png) no-repeat -9999px -9999px;text-indent:-9999px;z-index:2}#NIE-topBar-news.NIE-topBar-news-hover .NIE-topBar-abc-s{visibility:hidden}#NIE-topBar-news.NIE-topBar-news-hover a{position:absolute;z-index:2;left:-132px;top:55px;height:auto}#NIE-topBar-news.NIE-topBar-news-hover a img{display:block}.NIE-topBar-mid{position:absolute;z-index:2;right:230px;width:385px;text-align:right}#NIE-topBar .NIE-topBar-mid a,#NIE-topBar-include .NIE-topBar-mid a{line-height:40px;padding:0 12px;color:#fff;display:inline-block}#NIE-topBar .NIE-topBar-mid a:hover,#NIE-topBar-include .NIE-topBar-mid a:hover{color:#ca0b0b}#NIE-topBar-menu{position:absolute;z-index:1;top:0;right:0;color:#999;width:1000px;height:40px;overflow:hidden;-webkit-transition:height .3s ease 0s;-o-transition:height .3s ease 0s;-moz-transition:height .3s ease 0s;transition:height .3s ease 0s}#NIE-topBar-menu span{position:absolute;width:108px;padding:8px 0 12px;height:20px;line-height:14px;right:106px;background-position:0 -28px;background-repeat:repeat-x;padding-left:15px;color:#fff;display:inline-block;overflow:hidden}#NIE-topBar-menu .NIE-table{position:absolute;top:40px;left:0;background:#262626;border-collapse:collapse;overflow:hidden;width:100%}#NIE-topBar-menu .NIE-table a{width:100px;margin-left:6px;line-height:24px;display:inline-block}#NIE-topBar-menu .NIE-table a.long{width:125px}#NIE-topBar-menu .NIE-table ul{list-style:none}#NIE-topBar-menu .NIE-table .NIE-nav{width:100%;position:relative}#NIE-topBar-menu .NIE-table .NIE-nav li{width:110px;float:left;border-right:1px solid #eee;vertical-align:top}#NIE-topBar-menu .NIE-table .NIE-nav .mobi{position:absolute;left:387px;-webkit-transition:all .3s ease-out}#NIE-topBar-menu .NIE-table b{line-height:39px;color:#bc2e2e;display:block;width:100%;height:39px;font-size:14px;text-indent:20px;background:#f7f7f8;overflow:hidden;clear:both}#NIE-topBar-menu b i{margin-left:5px;padding:2px 4px;color:#9b9b9b;font-style:normal;background:#111;display:inline}#NIE-topBar-menu .NIE-list{float:left;overflow:hidden;width:100%;height:400px}.w1680 #NIE-topBar-menu .NIE-list{height:450px}#NIE-topBar-menu .NIE-list li{border-right:1px solid #eee;height:100%;float:left;padding:10px 0 0 14px}#NIE-topBar-menu .NIE-list .news{position:absolute;background:#fdfefe;left:545px;-webkit-transition:all .3s ease-out;top:39px}#NIE-topBar-menu .NIE-list .hot{position:absolute;background:#fdfefe;left:387px;-webkit-transition:all .3s ease-out;top:39px}#NIE-topBar-menu .NIE-list .hot a{width:125px}.w1680 #NIE-topBar-menu .NIE-list .news div div{margin-right:8px}#NIE-topBar-menu .NIE-list .news .long-news{width:133px;float:left}#NIE-topBar-menu .NIE-list .news .long-news a{width:125px}#NIE-topBar-menu .NIE-list .news .short-news{float:left;width:106px}#NIE-topBar-menu .moreAni .NIE-list .news{left:313px;width:524px!important;-webkit-transition:all .3s ease-out}#NIE-topBar-menu .moreAni .NIE-list .hot{left:155px;border-left:1px solid #eee;box-shadow:-1px 0 1px #eee;-webkit-transition:all .3s ease-out}#NIE-topBar-menu .moreAni .NIE-nav .mobi{left:155px;width:696px!important;border-left:1px solid #eee;box-shadow:-1px 0 1px #eee;-webkit-transition:all .3s ease-out}#NIE-topBar-menu .NIE-list .NIE-topBar-more{width:20px;height:95px;height:92px\9;display:block;position:absolute;right:0;top:124px;font-size:12px;color:#fff;background:#bc2e2e;padding-left:10px;line-height:14px;padding-top:7px;border-top-left-radius:2px;border-bottom-left-radius:2px}#NIE-topBar-menu .NIE-list .NIE-topBar-more:hover{opacity:.8}#NIE-topBar-menu .moreAni .NIE-topBar-more{width:21px;height:23px;border-radius:2px;right:9px;top:163px;padding-left:4px;padding-top:2px;height:20px;height:18px\9}.w1680 #NIE-topBar-menu .NIE-list .NIE-topBar-more{display:none}#NIE-topBar-menu .NIE-table a em{font-weight:400;display:block;line-height:24px}.NIE-topBar-1st{background-position:right -267px}.NIE-topBar-hot{background-position:right -144px}.NIE-topBar-new{background-position:right -206px}#NIE-topBar-menu.NIE-topBar-menu-hover .NIE-table{display:block}#NIE-topBar-menu.NIE-topBar-menu-hover{height:505px;opacity:.9;-webkit-transition:height .4s ease 0s;-o-transition:height .4s ease 0s;-moz-transition:height .4s ease 0s;transition:height .4s ease 0s}a.NIE-topBar-btn{width:105px!important;height:18px;line-height:18px!important;margin:5px 0;display:inline-block;padding-left:0!important;background-position:0 -338px;text-indent:25px;color:#bc3030!important}a.NIE-topBar-btn:hover{}.NIE-topBar-ad{height:40px;left:50%}.NIE-topBar-main.w1680{width:1260px}.NIE-topBar-main.w1680 #NIE-topBar-menu{width:1260px}#NIE-topBar-news{height:54px}#NIE-topBar .NIE-topBar-menu-hover,#NIE-topBar-include .NIE-topBar-menu-hover{z-index:8}.NIE-topBar-ad-big{position:absolute;top:0;left:0;z-index:10;height:0;overflow:hidden;text-align:center}#NIE-topBar-menu{z-index:7;height:55px}.NIE-topBar-mid{z-index:12;width:250px;right:230px;width:536px}.NIE-topBar-logo{position:relative;z-index:13!important}#NIE-topBar,#NIE-topBar-include{height:55px;background:#fbfbfb}.NIE-topBar-logo{margin-top:5px}#NIE-topBar-menu .NIE-table{top:55px;background:#fdfefe;border-top:1px solid #ececec;margin:0}#NIE-topBar-menu span{background:0 0;color:#bc2e2e}#NIE-topBar-menu .NIE-table{display:none}#NIE-topBar-menu .NIE-table .last_td,#NIE-topBar-menu .NIE-table .last_th{border-right:0}#NIE-topBar a,#NIE-topBar-include a{color:#626262}#NIE-topBar-menu b i{background-color:#fbfbfb;color:#bc2e2e}#NIE-topBar-menu p{padding:0;margin:0;margin-left:6px;line-height:24px;margin-bottom:4px;font-weight:700;color:#626262}#NIE-topBar a:hover,#NIE-topBar-include a:hover{color:#bc2e2e}#NIE-topBar-menu.NIE-topBar-menu-hover{opacity:.95}#NIE-topBar-menu .NIE-table *{font-size:12px}#NIE-topBar-menu.NIE-topBar-menu-hover span{border-bottom:3px solid #bc2e2e;background-color:#F3F3F3;background-image:-webkit-linear-gradient(top,#F3F3F3 0,#FEFEFE 52px);background-image:linear-gradient(top,#F3F3F3 0,#FEFEFE 52px)}#NIE-topBar-menu span{height:25px;height:26px\0;width:59px;padding-top:15px;-padding-top:14px\0;transition:background ease-in-out .33s;z-index:20;padding:15px 0 15px 0;left:79%;color:black;}#NIE-topBar .NIE-topBar-mid a,#NIE-topBar-include .NIE-topBar-mid a{color:#333;line-height:52px;transition:background ease-in-out .33s;*line-height:55px}#NIE-topBar .NIE-topBar-mid a:hover,#NIE-topBar-include .NIE-topBar-mid a:hover{color:#bc2e2e!important;border-bottom:3px solid #bc2e2e;background-color:#F3F3F3;background-image:-webkit-linear-gradient(top,#F3F3F3 0,#FEFEFE 52px);background-image:linear-gradient(top,#F3F3F3 0,#FEFEFE 52px);*border-bottom:0}.NIE-topBar-right{position:absolute;right:0;top:0;display:block;width:100px;height:55px;overflow:hidden;z-index:9}.NIE-topBar-right a{color:#333!important;width:100%;text-align:center;display:inline-block;float:left;line-height:52px;transition:background ease-in-out .33s;-webkit-transition:background ease-in-out .33s}.NIE-topBar-right a:hover{color:#bc2e2e!important;border-bottom:3px solid #bc2e2e;background-color:#F3F3F3;background-image:-webkit-linear-gradient(top,#F3F3F3 0,#FEFEFE 52px);background-image:linear-gradient(top,#F3F3F3 0,#FEFEFE 52px);*border-bottom:0}.NIE-topBar-right a.fadeUp{opacity:0;-webkit-transform:translate3d(0,-70%,0);-webkit-transition:all ease-in-out .5s;transform:translate3d(0,-70%,0);transition:all ease-in-out .5s}.NIE-topBar-right a.none{opacity:0;-webkit-transform:translate3d(0,70%,0);transform:translate3d(0,70%,0)}.NIE-topBar-right a.fadeUp2{opacity:1;-webkit-transform:translate3d(0,0,0);-webkit-transition:all ease-in-out .5s;transform:translate3d(0,0,0);transition:all ease-in-out .5s}
		.top_box span{float:left; width:630px; height:45px;  background-position:5px 5px; overflow: hidden;}

		.test{float:left; width:630px; height:45px; overflow: hidden;background: url(../img/main/top_corp.png) no-repeat 0 0 / 627px 40px;line-height:30px;position:relative;left:50%;margin-left:-650px}
		.menu li{width:163px;height:81px;float:left;margin:5px 13px;}
	    .menu a{display:block;width:163px;height:81px;text-indent:100px;white-space:nowrap;overflow:hidden;}
		.menu,.menu li{padding:0;margin: 0px; }
	    .menu{width:1300px;-margin:0 ;list-style-type:none;-float: right;margin-left:39% }
		.top_box .menus li{float:left; width:53px; height:auto; overflow: hidden;}
		.top_box .menus li a{display:block; padding:0 0 0 25px; font-size:18px; color: rgba(38, 2, 2, 0.81); overflow: hidden;text-decoration:none;font-size:14px;}
		.top_box .menus li a:hover{color:#ffcc00;}
		.top_box .menus{ width:400px;  padding:12px 0 0 550px; overflow: hidden; margin:0;}
		.model2{width:100%;height:713px;padding:0;margin:0;position:relative;background:url(../img/main/bg_2.png) no-repeat center 0;}
		.tab_news{width:1200px;height:461px;padding:0;margin:0 auto;}
		.newsList font{color:rgb(248, 244, 245);}
		.active{width:156px;height:97px;float:left;background-color: white;margin: 18px 10px;padding: 0;}
		.partner{width: 1200px;height: 135px;padding: 0px;margin: 0px auto;}
		.partnerimg{height: 85px;width: 178px;margin: 0 11px;float:left;}
		.test-top{height: 55px;background: #FBFBFB none repeat scroll 0% 0%;}
		#NIE-topBar *, #NIE-topBar-include * {font-size: 12px;font-style: normal;}
		.test-top-main {position: relative;z-index: 9999;width: 1165px;margin: auto;}
		.test-top-logo {width: 158px;height: 64px;display: block;float: left;margin-top: 7px;margin-left: 0%;background: transparent url(../img/main/top_corp.png) no-repeat scroll 0% 0%;}
		.test-topBar-mid {z-index: 12;right: 230px;width: 536px;position: absolute;text-align:right;-font-size: 12px;font-style: normal;line-height: 52px;-color: #333;-transition: background 0.33s ease-in-out 0s;}
		.test-topBar-mid a{line-height: 52px;color: #333;transition: background 0.33s ease-in-out 0s;display: inline-block;padding: 0px 12px;text-decoration: none;}

		body{color:rgb(248, 244, 245);}
		*{margin:0px;padding:0px;}
		</style>
 </head>
<body>
<!-- 这是测试头部 -->
<!--<div id="" class="test-top">
<div class="test-top-main" id="NIE-topBar-main">
    <a class="test-top-logo" href="#" target="_blank"></a>


</div>
</div>-->
<!-- 这是头部标题栏 -->


<div class="nav">
	  <div class="test-top-main" id="NIE-topBar-main">
        <a class="test-top-logo" href="#" ></a>
      </div>
      <ul class="menu">
        <li ><a href="main.jsp" id="home"></a></li>
		<li><a href="news.jsp" id="news"></a></li>
		<li><a href="material.jsp" id="material"></a></li>
		<li ><a href="forum.jsp" id="forum"></a></li>
      </ul>
</div>

<div class="wrap" style="width: 100%;">
<div class="wrap-1" style="width: 100%;background: url(../img/main/bg_1.png) no-repeat center 0;">



  <div class="main">




	<div class="download" style="background: url(../img/main/kuang.png) no-repeat;">
	  <img  src="../img/main/code_main.jpg" width="125" height="124" alt="神魔传奇" style="margin-top: 23px;margin-left: 4px;">
	  <a class="download--ios" style="background: url(../img/main/btn_download_ios.png) no-repeat;" href="javascript:;" rel="nofollow">App Store下载</a>
	  <a class="download--android" style="background: url(../img/main/androidbt.png) no-repeat;" href="javascript:;" title="">安卓下载</a>
	  <a class="btn-gifts" style="background: url(../img/main/btn_gift_bg.png) no-repeat;" href="javascript:openPop('#pop-android');"><b style="background: url(../img/main/btn_gift_item.png) no-repeat;">领取礼包</b></a>
	  <!--epart end-->
	</div>


</div>
</div>
</div>


<div class="model2">
	<div class="tab_news">
		<div class="dyjGroup">
			<div id="eye_box" class="dyj_pics">
				<a href="#" class="ad_stat" target="_blank" style="display:inline;">
					<img src="../img/main/news/620X350-01.png" width="621px" height="351px" alt="" />
				</a>
				<a href="#" class="ad_stat" target="_blank" style="display:none;">
					<img src="../img/main/news/620X350-02.png" width="621px" height="351px" alt="" />
				</a>
				<a href="#" class="ad_stat" target="_blank" style="display:none;">
					<img src="../img/main/news/620X350-03.png" width="621px" height="351px" alt="" />
				</a>
				<a href="#" class="ad_stat" target="_blank" style="display:none;">
					<img src="../img/main/news/620X350-04.png" width="621px" height="351px" alt="" />
				</a>
				<a href="#" class="ad_stat" target="_blank" style="display:none;">
					<img src="../img/main/news/620X350-05.png" width="621px" height="351px" alt="" />
				</a>
			</div>
			<div id="eye_number" class="dyj_numqu">
          	 	<a href="javascript:;" class="on">&nbsp;</a>
			 	<a href="javascript:;" class="off">&nbsp;</a>
			 	<a href="javascript:;" class="off">&nbsp;</a>
			 	<a href="javascript:;" class="off">&nbsp;</a>
			 	<a href="javascript:;" class="off">&nbsp;</a>
		    </div>
		</div>
		<div class="HotNewsBox" style="font-family:'微软雅黑';">
		<div class="tabNav" style="background:rgb(11, 10, 9) none repeat scroll 0% 0%">
            <ul id="news_nav">
             <li class="current" style="margin:0px 0px 0px 35px;padding:0px 0px 0px 1px;"><a title="综合" href="javascript:;">综合</a></li>
              <li class=""><a title="神魔战歌新闻"  href="news.jsp">新闻</a> </li>
              <li class=""><a title="神魔战歌公告"  href="material.jsp">资料</a></li>
              <li class="" ><a title="神魔战歌活动"  href="rorum.jsp">论坛</a></li>
            </ul>

          </div>
		  <div class="news_nr" style="display: block;">
            <ul class="newsList">
            	<%
            	String catalog="";
            	for(News news : list){
        			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd");
        			String timeStr = sdf.format(news.getAddTime());
        			catalog = news.getCatalog();
        			if(catalog.equals("news")){
        				catalog = "【新闻】";
        			}else if(catalog.equals("material")){
        				catalog = "【资料】";
        			}else if(catalog.equals("forum")){
        				catalog = "【论坛】";
        			}
            	%>
            	<li><a href="#" class="tit" data="0" title="<%=news.getTitle()%>" ><%=catalog %></a>
				<a href="content.jsp?id=<%=news.getId() %>" target="_blank" title="<%=news.getTitle()%>"><%=news.getTitle() %></a>
				<font >[<%=timeStr %>]</font>
				</li>
				<%} %>
                               		<!-- <li><a href="http://smzg.xtonegame.com/news/index.html" class="tit" data="0" title="神魔战歌攻略： 如何完美通关英灵试炼40层" >【综合】</a><a href="http://smzg.xtonegame.com/news/index.html" target="_blank" title="神魔战歌攻略： 如何完美通关英灵试炼40层">神魔战歌攻略： 如何完美通关英灵试炼40层</a><font>[11/13]</font></li>
                               		<li><a href="http://hqg.skymoons.com/html/active/2015/1105/374.html#content" class="tit" data="0" title="11月6日-11月7日App Store活动" target="_blank">【综合】</a><a href="http://hqg.skymoons.com/html/active/2015/1105/374.html#content" target="_blank" title="11月6日-11月7日App Store活动">11月6日-11月7日App Store活动</a><font>[11/05]</font></li>
                               		<li><a href="http://hqg.skymoons.com/html/active/2015/1102/367.html#content" class="tit" data="0" title="11月3日-11月5日App Store活动" target="_blank">【综合】</a><a href="http://hqg.skymoons.com/html/active/2015/1102/367.html#content" target="_blank" title="11月3日-11月5日App Store活动">11月3日-11月5日App Store活动</a><font>[11/02]</font></li>
                               		<li><a href="http://hqg.skymoons.com/html/active/2015/1031/366.html#content" class="tit" data="0" title="10月31日-11月2日App Store活动" target="_blank">【综合】</a><a href="http://hqg.skymoons.com/html/active/2015/1031/366.html#content" target="_blank" title="10月31日-11月2日App Store活动">10月31日-11月2日App Store活动</a><font >[10/31]</font></li></ul>
                               		 -->
             </ul>
			<div class="active" style="margin:18px 13px 13px 29px;">
				<img src="../img/main/news/active1.png" width="156px" height="97px" alt="" />
			</div>
			<div class="active">
				<img src="../img/main/news/active2.png" width="156px" height="97px" alt="" />
			</div>
			<div class="active">
				<img src="../img/main/news/active3.png" width="156px" height="97px" alt="" />
			</div>
			</ul>
          </div>
			<div style="display: none;" class="news_nr">
            <ul class="newsList">
            	<%
            	catalog="";
            	for(News news : list2){
        			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd");
        			String timeStr = sdf.format(news.getAddTime());
        			catalog = news.getCatalog();
        			if(catalog.equals("news")){
        				catalog = "【新闻】";
        			}else if(catalog.equals("material")){
        				catalog = "【资料】";
        			}else if(catalog.equals("forum")){
        				catalog = "【论坛】";
        			}
            	%>
            	<li><a href="#" class="tit" data="0" title="<%=news.getTitle() %>" ><%=catalog %></a>
				<a href="content.jsp?id=<%=news.getId() %>" target="_blank" title="<%=news.getTitle()%>"><%=news.getTitle() %></a>
				<font >[<%=timeStr %>]</font>
				</li>
				<%} %>
				</ul>
			<div class="active" style="margin:18px 13px 13px 29px;">
				<img src="../img/main/news/active1.png" width="156px" height="97px" alt="" />
			</div>
			<div class="active">
				<img src="../img/main/news/active2.png" width="156px" height="97px" alt="" />
			</div>
			<div class="active">
				<img src="../img/main/news/active3.png" width="156px" height="97px" alt="" />
			</div>
          <!--/-->
          </div>
			<div style="display: none;" class="news_nr">
            <ul class="newsList">
            	<%
            	catalog="";
            	for(News news : list3){
        			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd");
        			String timeStr = sdf.format(news.getAddTime());
        			catalog = news.getCatalog();
        			if(catalog.equals("news")){
        				catalog = "【新闻】";
        			}else if(catalog.equals("material")){
        				catalog = "【资料】";
        			}else if(catalog.equals("forum")){
        				catalog = "【论坛】";
        			}
            	%>
            	<li><a href="#" class="tit" data="0" title="<%=news.getTitle()%>" ><%=catalog %></a>
				<a href="content.jsp?id=<%=news.getId() %>" target="_blank" title="<%=news.getTitle()%>"><%=news.getTitle() %></a>
				<font >[<%=timeStr %>]</font>
				</li>
				<%} %>
				</ul>
			<div class="active" style="margin:18px 13px 13px 29px;">
				<img src="../img/main/news/active1.png" width="156px" height="97px" alt="" />
			</div>
			<div class="active">
				<img src="../img/main/news/active2.png" width="156px" height="97px" alt="" />
			</div>
			<div class="active">
				<img src="../img/main/news/active3.png" width="156px" height="97px" alt="" />
			</div>
          </div>
          <div style="display: none;" class="news_nr">
            <ul class="newsList">
            	<%
            	catalog="";
            	for(News news : list4){
        			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd");
        			String timeStr = sdf.format(news.getAddTime());
        			catalog = news.getCatalog();
        			if(catalog.equals("news")){
        				catalog = "【新闻】";
        			}else if(catalog.equals("material")){
        				catalog = "【资料】";
        			}else if(catalog.equals("forum")){
        				catalog = "【论坛】";
        			}
            	%>
            	<li><a href="#" class="tit" data="0" title="<%=news.getTitle()%>" ><%=catalog %></a>
				<a href="content.jsp?id=<%=news.getId() %>" target="_blank" title="<%=news.getTitle()%>"><%=news.getTitle() %></a>
				<font >[<%=timeStr %>]</font>
				</li>
				<%} %>

            </ul>
			<div class="active" style="margin:18px 13px 13px 29px;">
				<img src="../img/main/news/active1.png" width="156px" height="97px" alt="" />
			</div>
			<div class="active">
				<img src="../img/main/news/active2.png" width="156px" height="97px" alt="" />
			</div>
			<div class="active">
				<img src="../img/main/news/active3.png" width="156px" height="97px" alt="" />
			</div>
          <!--/-->
          </div>

        </div>
	</div>
	<div class="partner">
		<div class="partnerimg" style="margin: 0px 15px 0px 0px;" >
			<img src="../img/main/partner/1.png" width="178px" height="85px" alt="" />
		</div>
		<div class="partnerimg" >
			<img src="../img/main/partner/2.png" width="178px" height="85px" alt="" />
		</div>
		<div class="partnerimg" >
			<img src="../img/main/partner/3.png" width="178px" height="85px" alt="" />
		</div>
		<div class="partnerimg" >
			<img src="../img/main/partner/4.png" width="178px" height="85px" alt="" />
		</div>
		<div class="partnerimg" >
			<img src="../img/main/partner/5.png" width="178px" height="85px" alt="" />
		</div>
		<div class="partnerimg" >
			<img src="../img/main/partner/6.png" width="178px" height="85px" alt="" />
		</div>
	</div>
	<div class="" style="padding: 0px;margin: 0px auto;width: 672px;height: 70px;">
		<span style="margin:0px 15px 0px 0px;">客服QQ：1919505088</span>
		<span style="margin:0px 15px;">客服电话：020-38023617</span>
		<span style="margin:0px 0px 0px 15px;">官方交流QQ群：253173745</span>
	</div>

</div>
	<div id="NIE-copyRight"><p id="NIE-copyRight-corp" style="width:100%;text-align:center;margin:0 auto;padding:15px 0 0 0;font-size:12px;font-family:&#39;宋体&#39;;line-height:20px;display:block;position:relative;"><span style="position:relative;vertical-align:top;top:4px;display:inline-block;position:relative;"><a href="http://www.nomo.cn" target="_blank" style="width:224px;height:28px;padding-right:15px;display:inline-block;cursor:pointer;background:url(../img/main/corp.png) no-repeat"></a></span><span style="text-align:left;display:inline-block;padding-left:6px;"><span id="ncp-l1"><a href="javascript:alert('公司简介！');" target="_blank">相关法律</a> - <a href="javascript:alert('公司简介！');" target="_blank">翔通游戏</a> - <a href="javascript:alert('公司简介！');" target="_blank">联系我们</a> - <a href="javascript:alert('公司简介！');" target="_blank">商务合作</a></span><br><span id="ncp-l2">翔通游戏 创造精彩世界 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.uupark.com/jzjh_xtonegroup/supervise.html" target="_blank">家长监护</a>
    </span><br><span id="ncp-l2">粤网文（2015）1397-182号&nbsp;<a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">粤ICP备12058124号-20</a></span></span></p></div>

</div>

<!--弹层-->
<div id="overlay" style="display: none;"></div>

<!--ios-->
<div class="pop" id="pop-ios" style="display: none;">
  <div class="pop-close"></div>
  <div class="pop-title"><span>8月25日</span>苹果首发，<br>iOS用户关注公众号领取专属福利</div>
  <p class="pop-qrcode"><img src="./qrcode_9536f25.png"><span>公众号：jltx163 </span></p>
</div>

<!--android-->
<div class="pop" id="pop-android" style="display: none;">
  <div class="pop-close"></div>
  <div class="pop-title"><span style="color: rgb(122, 17, 17);"></span>魔君！请收下我们的起义资金</span><br>
  <em style="font-size:24px;">兑换码:</em><span><%=exchange %></span><em>(仅限安卓)</em><br>
  <em>更多的秘宝隐藏在下面的二维码中</em>
  </div>
  <div style="background: white none repeat scroll 0% 0%;width: 75px;height: 75px;margin: auto;">
	 <img src="../img/main/code.jpg" width="75px" height="75px" alt="" />
  </div>
  <p class="pop-how2use">
    <b style="color:rgb(255,234,0);">兑换方式：</b>
	<span>首页</span> → 左上角“<span>更多</span>”按钮 → “<span>礼包码</span>”→ 输入礼包码即可。<br>
	<span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp【IOS用户关注公众号领取专属福利】</span>
  </p>
</div>


<!--视频弹层-->
<div class="pop videoPop" id="pop-video" style="display: none;">
  <div class="pop-close"></div>
  <div class="pop-content"><object data="http://res.nie.netease.com/comm/js/nie/util/player.swf" type="application/x-shockwave-flash" id="flash_680382001" width="800" height="450" is-video-flag="true"><param name="allowFullScreen" value="true"><param name="allowscriptaccess" value="always"><param name="wmode" value="opaque"><param name="bgcolor" value="000000"><param name="flashvars" value="width=800&amp;height=450&amp;movieUrl=http://v.crazynote.netease.com/2015/0805/4cbcca0d33486262946324a9448e42e7qt.f4v&amp;videoWidth=800&amp;videoHeight=450&amp;volume=0.8&amp;autoPlay=true&amp;&amp;loopTimes=0&amp;&amp;bufferTime=5&amp;videoIndex=0&amp;&amp;allowFullScreen=true"><param name="movie" value="http://res.nie.netease.com/comm/js/nie/util/player.swf"><div><h4>页面需要新版Adobe Flash Player.</h4><p><a href="http://www.adobe.com/go/getflashplayer" target="_blank"><img width="112" height="33" alt=""></a></p></div></object></div>
</div>


<script charset="gb2312" type="text/javascript" src="../js-css/main/jquery(mixNIE).last.js"></script>
<script charset="gb2312" type="text/javascript" src="../js-css/main/index.js"></script>
<iframe src="./point.html" style="display:none;"></iframe>
<script charset="gb2312" type="text/javascript">
nie.config.copyRight.setWhite();
//分享
var shareTxt = " 神魔战歌";
var shareImg = "";
nie.use(["nie.util.shareV3"],function(){
	nie.util.share({
		fat : ".ent-top-share",
		type : 2,
		defShow : [22, 2, 1, 3],
		img : shareImg,
		title : shareTxt
	});
});

//卖点切换
$(".md-ul li").mouseover(function(){
	$(".md-ul li.on").removeClass("on");
	$(this).addClass("on");
}).eq(0).mouseover();


//弹层
function openPop(popID){
	closePop();
	$("#overlay,"+popID).show();
}
function closePop(){
	$(".videoPop .pop-content").empty();
	$("#overlay, .pop").hide();
}
$("#overlay, .pop-close").click(closePop);

//视频弹层
var movieUrl = 'http://v.crazynote.netease.com/2015/0805/4cbcca0d33486262946324a9448e42e7qt.f4v';
var mp4_movieUrl = 'http://v.crazynote.netease.com/2015/0805/4cbcca0d33486262946324a9448e42e7qt.mp4';
function openVideo(){
	nie.use(["nie.util.video"],function(){
		var video=nie.util.video($(".videoPop .pop-content").empty(), {
			movieUrl:movieUrl,
			mp4_movieUrl:mp4_movieUrl,
			width:800,
			height:450,
			volume:0.8,
			wmode:"opaque",
			autoPlay:true
		});
	});
	openPop("#pop-video");
}

 function mutilChannel(){
    //多渠道处理
    var url = window.location.href,
        $iosBtn = $(".download--ios"),
        $androidBtn = $(".download-android"),
        $codeImg = $(".download-qrcode"),
        ua = window.navigator.userAgent,
        needJump = !!ua.match(/mobile/i) && !url.match(/\/m\//);

    if(/fab/.test(url)){
        //fab
        $iosBtn.attr("href","javascript:alert('敬请期待！');");
        $androidBtn.attr("href","javascript:alert('安卓没的下！');");
        $codeImg.attr("src","");

        if (needJump) {
            window.location = 'http://jianglin.163.com/m/fab/';
        }

    }else if(/shenma/.test(url)){
        //神马
        $iosBtn.attr("href","javascript:alert('敬请期待！');");
        $androidBtn.attr("href","javascript:alert('安卓没的下！');");
        $codeImg.attr("src","./qrcode_9536f25.png");

        if (needJump) {
            window.location = 'http://jianglin.163.com/m/shenma/';
        }

    }else if(/baidu/.test(url)){
        //百度sem
        $iosBtn.attr("href","javascript:alert('敬请期待！');");
        $androidBtn.attr("href","javascript:alert('安卓没的下！');");
        $codeImg.attr("src","./qrcode_9536f25.png");

        if (needJump) {
            window.location = 'http://jianglin.163.com/m/baidu/';
        }

    }else if(/pinpai/.test(url)){
    	//百度品牌
        $iosBtn.attr("href","javascript:alert('敬请期待！');");
        $androidBtn.attr("href","javascript:alert('安卓没的下！');");
        $codeImg.attr("src","./qrcode_9536f25.png");

        if (needJump) {
            window.location = 'http://jianglin.163.com/m/pinpai/';
        }

    }else if(/weix/.test(url)){
    	//微信
        $iosBtn.attr("href","javascript:alert('敬请期待！');");
        $androidBtn.attr("href","javascript:alert('安卓没的下！');");
        $codeImg.attr("src","./qrcode_9536f25.png");

        if (needJump) {
            window.location = 'http://jianglin.163.com/m/weix/';
        }

    }else if(/tieb/.test(url)){
    	//贴吧
        $iosBtn.attr("href","javascript:alert('敬请期待！');");
        $androidBtn.attr("href","javascript:alert('安卓没的下！');");
        $codeImg.attr("src","./qrcode_9536f25.png");

        if (needJump) {
            window.location = 'http://jianglin.163.com/m/tieb/';
        }

    }else if(/weib/.test(url)){
    	//微博
        $iosBtn.attr("href","javascript:alert('敬请期待！');");
        $androidBtn.attr("href","javascript:alert('安卓没的下！');");
        $codeImg.attr("src","./qrcode_9536f25.png");

        if (needJump) {
            window.location = 'http://jianglin.163.com/m/weib/';
        }

    }else{
        //官网
        $iosBtn.attr("href","javascript:alert('敬请期待！');");
        $androidBtn.attr("href","javascript:alert('安卓没的下！');");
        $codeImg.attr("src","");
    }
}
mutilChannel();
</script>


<!--This is Git Project--></body></html>