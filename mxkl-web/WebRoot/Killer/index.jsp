<%@page import="java.util.ArrayList"%>
<%@page import="org.mxkl.dao.Newsdao"%>
<%@page import="org.mxkl.bean.Newsbean"%>
<%@page import="org.mxkl.service.Service"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="zh-CN" class="is-mobile is-wechat page-home"><head><script type="text/javascript" async="" src="//tajs.qq.com/gdt.php?sId=47245038"></script><script type="text/javascript"  async="" src="//www.google-analytics.com/analytics.js"></script>
<!--         <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
<!--         <meta name="viewport" content="width=device-width,user-scalable=no,minimal-ui"> -->
<!--     <meta name="apple-mobile-web-app-capable" content="yes"> -->
<!--     <meta name="apple-mobile-web-app-status-bar-style" content="blank"> -->
    
<!--     <meta property="al:ios:url" content="https://itunes.apple.com/cn/app/heng-sao-qian-jun-tang-guo/id997636530"> -->
<!--     <meta property="al:ios:app_store_id" content="997636530"> -->
<!--     <meta property="al:ios:app_name" content="苍穹仙尊"> -->

<link type="text/css" rel="stylesheet" href="css/main.css">        
<link href="http://web.xdcdn.net/game/hsqj/img/favicon.ico?1423469731" type="image/x-icon" rel="shortcut icon bookmark">
<link rel="apple-touch-icon-precomposed" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-60.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="76x76" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-76.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="120x120" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-120.png?1451359882">
<link rel="apple-touch-icon-precomposed" sizes="152x152" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-152.png?1451359882">
        <!-- 为移动设备添加 viewport -->
<meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no">
    <!-- title -->
    <title>苍穹仙尊</title>

  
<!-- This site is optimized with the Yoast WordPress SEO plugin v1.5.3 - https://yoast.com/wordpress/plugins/seo/ -->

<link rel="canonical" href="http://hs.xd.com/">
<link rel="next" href="http://hs.xd.com/page/2/">
<script charset="gb2312" type="text/javascript" src="js/jquery(mixNIE).last.js"></script>
<!-- / Yoast WordPress SEO plugin. -->
<script type="text/javascript">

	
	function clicknum(){
	
		 var data = "cqxz"
					$.ajax({
						type : "post",
						url : "../Servlet.jsp",
						async : false,
						data :data,
						dataType : "text",
						success : function(msg) {
							
					      		
							
						},
						error : function(XMLHttpRequest, textStatus, errorThrown) {
						
							
						}
					});
	}
	


</script>

<style type="text/css">
.fancybox-margin{margin-right:0px;}
 #download{background-image: url(img/downloadbtn.png); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%; position: absolute;height:100%;width:100%;} 

</style>
</head>
<body >
        <div id="header">
                    <div class="block block-bbs">
<!--         <div class="block-header"> -->
<!--             <img class="game-logo block-unit" src="http://web.xdcdn.net/game/hsqj/img/mobile/logo.png?1443064621" alt="苍穹仙尊"> -->
<!--             <div class="title block-unit block-unit-left"> -->
<!--                 <h1>苍穹仙尊</h1> -->
<!--                 <p class="size-small">1111</p> -->
<!--             </div> -->
<!--             <div class="block-unit more"> -->
<!--                 <i class="line"></i> -->
<!--             </div> -->
<!--         </div> -->
        <div class="block-body">
            <div class="for-bg hide-text" style="background-color:#211f2c;">
                <div  class="list-outer list-outer-1" style="width:60.875%;height:12%;">
                    <a id="download" href="download.jsp" class="dl-btn hide-text" onclick="clicknum()"></a>
                </div>
              
            </div>
        </div>
<!--         <div class="block-footer"> -->
<!--             <div class="content"> -->
<!--                 <a href="/data" class="custom-btn"><span class="font-icon-i">资料站</span></a> -->
<!--                 <div class="space"></div> -->
<!--                 <a href="http://bbs.xd.com/forum-109-1.html" class="custom-btn" target="_blank"><span class="font-icon-h">游戏论坛</span></a> -->
<!--             </div> -->
<!--         </div> -->
        <ul class="block-other">
            <li><a href="http://hs.xd.com" class="nav-home nav-item"><span class="for-align">首页</span></a></li>
            <li><a href="/data" class="nav-data nav-item"><span class="for-align">资料站</span></a></li>
            <li><a href="/category/news" class="nav-news nav-item"><span class="for-align">最新资讯</span></a></li>
            <li><a href="http://bbs.xd.com/forum-109-1.html" class="nav-bbs nav-item" target="_blank"><span class="for-align">论坛</span></a></li>
                    </ul>
    </div>            </div>
    
      <div style="background-color:#211f2c;width:100%;height:50px;"></div>
        <div id="body">
<!--     <div class="block block-data"> -->
<!--     <div class="block-header clearfix"> -->
<!--         <div class="title hide-text material float-left"><span class="font-icon-i">资料站</span></div> -->
<!--                 <a href="/data" class="more float-right">MORE〉</a> -->
<!--             </div> -->
<!--     <div class="block-body clearfix"> -->
<!--         <a href="/data/?type=wujiang" class="material float-left hide-text role">武将</a> -->
<!--         <a href="/data/?type=zuoqi" class="material float-left hide-text ride">坐骑</a> -->
<!--         <a href="/data/?type=zhuangbei" class="material float-left hide-text equip">装备</a> -->
<!--         <a href="/data/?type=ziyuan" class="material float-left hide-text resource">资源</a> -->
<!--     </div> -->
<!-- </div>  -->  <div class="block block-news"> 
    <div class="block-header clearfix">
                        <div class="title material"><span class="font-icon-b">最新资讯</span></div>
                    </div>
    <div class="block-body">
                <div class="content">
                <%
               
                     Service.mainnew(out,"select * from tbl_cms_contents where catalog like 'cqxz_%' ORDER BY priority DESC");
                
                %>                                    
<!--                                                             <a class="cat-list no-break" href="http://hs.xd.com/1594/"> -->
<!--                 <span class="label label-gg">公告</span> -->
<!--                 <span class="title ">五月战争季—至尊问鼎即将开启</span> -->
<!--                 <span class="size-small primary-note-color time">04 - 20</span> -->
<!--             </a> -->
<!--                                                             <a class="cat-list no-break" href="http://hs.xd.com/1591/"> -->
<!--                 <span class="label label-gg">公告</span> -->
<!--                 <span class="title ">7.0武将走势分析</span> -->
<!--                 <span class="size-small primary-note-color time">04 - 19</span> -->
<!--             </a> -->
<!--                                                             <a class="cat-list no-break" href="http://hs.xd.com/1585/"> -->
<!--                 <span class="label label-gg">公告</span> -->
<!--                 <span class="title ">《苍穹仙尊》携手游戏多空降超级福利</span> -->
<!--                 <span class="size-small primary-note-color time">04 - 13</span> -->
<!--             </a> -->
<!--                                                             <a class="cat-list no-break" href="http://hs.xd.com/1578/"> -->
<!--                 <span class="label label-gg">公告</span> -->
<!--                 <span class="title ">6.0首届“万国远征”    今晚8点开打</span> -->
<!--                 <span class="size-small primary-note-color time">04 - 06</span> -->
<!--             </a> -->
<!--                                                             <a class="cat-list no-break" href="http://hs.xd.com/1571/"> -->
<!--                 <span class="label label-gg">公告</span> -->
<!--                 <span class="title ">《苍穹仙尊》携手游戏多愚人节送福利</span> -->
<!--                 <span class="size-small primary-note-color time">03 - 31</span> -->
<!--             </a> -->
                                                                <a class="text-center more" href="news.jsp">查看更多 〉</a>
                                        </div>
    </div>
</div>    <div class="block block-service">
    <div class="block-header">
        <div class="title hide-text material"><span class="font-icon-g">游戏客服</span></div>
    </div>
    <div class="block-body" style="text-align:center;width:100%;">
        <p style="margin:12% auto;">客服QQ:<span style="color:yellow;">&nbsp 3421893764</span></p>
<!--         <p>玩家交流QQ群：********</p> -->
<!--         <p>投诉邮箱: <a href="mailto:tousu@xindong.com" target="_blank">tousu@xindong.com</a></p> -->
    </div>
</div>    <div class="block block-download">
    <div class="block-header">
        <a class="title custom-btn dl-btn" href="download.jsp" onclick="clicknum()">立即下载</a>
    </div>
</div>
    <div class="block block-share xdshare">
<!--     <p>分享到：</p> -->
<!--     <p class="text-center"><span class="font-icon" data-share="sina">e</span><span class="font-icon" data-share="qweibo">c</span></p> -->
<!--         <p class="text-center">独乐乐不如众乐乐</p> -->
<!--     <p class="text-center">动动手指，大家一起《苍穹仙尊》</p> -->
    <a href="#" class="font-icon-a go-top" style="margin:1% auto;font-size:17px;font-weight:bold;">返回首页</a>
<!--     <a href="http://www.xd.com" class="logo-xd hide-text">心动游戏</a> -->
<!--    <p class="site-info"><span class="xd-site-copyright">Copyright&nbsp;&nbsp;©2016&nbsp;All&nbsp;Rights&nbsp;Reserved&nbsp;xd.com</span><span class="xd-wwybz">&nbsp;&nbsp;</span> <span class="xd-site-name">万家文化</span></p>  -->
    </div>    </div>
    <div class="black-drop">
        <div id="popupVideo" data-video-url="http://res.xdcdn.net/hsqj/hsqj-0707-480.mp4">
        </div>
    </div>
    <div class="hide">
        <div id="popupForSubscribe">
            <div class="popup-header">
                <a href="" class="close font-icon">k</a>
            </div>
            <div class="popup-body message-download">
                <p>预约《苍穹仙尊》</p>
                <p>短信推送公测版下载地址，最先玩游戏！</p>
                <p><input type="text" placeholder="手机号" class="mobile subscribe-mobile"><a href="" class="subscribe-submit btn-submit">约</a></p>
            </div>
        </div>
    </div>
        <div id="customWechatShareInfo" class="hide" style="display: none" data-title="横扫千军 - 心动游戏" data-desc="全球第一即时战斗手游震撼来袭！华丽技能即时操控！丞相唐国强首次为手游配音，为中国十亿三国迷演绎气势磅礴的战争史诗；首度在游戏中实现拥有政治、经济、军事、人口的主城，更有拟真沙盘式国战地图、策略攻城掠地的国战打法，带来最真实最有趣的国战体验，三国真爱粉绝对不能错过！" data-pic="http://web.xdcdn.net/game/hsqj/img/wx_share.png?1444491101" data-link="http://hs.xd.com"></div>
            <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script><script src="http://web.xdcdn.net/xd/assets.php?js=/vendor/js/jquery-1.10.2.min.js,/vendor/fancybox/2_1_5/jquery.fancybox.pack.js,/js/layout/xd.js?!,/js/layout/wx_api_config.js?!,/../game/template/js/elements/wechat_share.js?1454485317,/vendor/fastclick/lib/fastclick.js,/js/layout/share.js?!,/../game/hsqj/js/index-mobile.js?1446082823"></script>    <script>
        if(typeof FastClick !== 'undefined') {
            FastClick.attach(document.body);
        }
    </script>
    
<!-- Google Annalytics Code -->
<script type="text/javascript">

</script>

<!-- Google Remarketing Code -->
<div style="display:none;"><img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/987748488/?value=0&amp;guid=ON&amp;script=0"></div>


<!-- Dynamic page generated in 0.174 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2016-05-03 16:49:43 -->

<!-- Compression = gzip --></body></html>