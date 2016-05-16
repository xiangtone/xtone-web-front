<%@page import="org.mxkl.service.Service"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="zh-CN" class="is-mobile is-wechat page-news"><head>
 <script type="text/javascript" async="" src="js/main.js"></script>  
  <script async="" src="js/main2.js"></script>  
  <!-- 为移动设备添加 viewport -->
<meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no">
<!--         <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
<!--         <meta name="viewport" content="width=device-width,user-scalable=no,minimal-ui"> -->
<!--     <meta name="apple-mobile-web-app-capable" content="yes"> -->
<!--     <meta name="apple-mobile-web-app-status-bar-style" content="blank"> -->
    
<!--     <meta property="al:ios:url" content="https://itunes.apple.com/cn/app/heng-sao-qian-jun-tang-guo/id997636530"> -->
<!--     <meta property="al:ios:app_store_id" content="997636530"> -->
<!--     <meta property="al:ios:app_name" content="横扫千军"> -->

         <link type="text/css" rel="stylesheet" href="css/main.css">         
<!-- <link href="http://web.xdcdn.net/game/hsqj/img/favicon.ico?1423469731" type="image/x-icon" rel="shortcut icon bookmark"> -->
<!-- <link rel="apple-touch-icon-precomposed" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-60.png?1451359882"> -->
<!-- <link rel="apple-touch-icon-precomposed" sizes="76x76" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-76.png?1451359882"> -->
<!-- <link rel="apple-touch-icon-precomposed" sizes="120x120" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-120.png?1451359882"> -->
<!-- <link rel="apple-touch-icon-precomposed" sizes="152x152" href="http://web.xdcdn.net/game/hsqj/img/mobile_icon/icon-152.png?1451359882"> -->
        
    <!-- title -->
    <title>最新资讯 - 梦想昆仑 -</title>

  
<!-- This site is optimized with the Yoast WordPress SEO plugin v1.5.3 - https://yoast.com/wordpress/plugins/seo/ -->
<!-- <meta name="description" content="《横扫千军》是由心动倾情研发的全新策略国战手游，游戏在传统的三国策略玩法中首度加入“国”和“内政”的概念，并采用即时演算的军事战斗方式，让玩家可以在游戏中体验到更接近三国时期历史原貌的战争和风云变幻。"> -->
<!-- <meta name="keywords" content="横扫千军,策略国战,三国,手机游戏,iOS游戏,安卓游戏,心动手游"> -->
<!-- <link rel="canonical" href="http://hs.xd.com/category/news/"> -->
<!-- <link rel="next" href="http://hs.xd.com/category/news/page/2/"> -->
<!-- <meta property="og:locale" content="zh_CN"> -->
<!-- <meta property="og:type" content="object"> -->
<!-- <meta property="og:title" content="最新资讯"> -->
<!-- <meta property="og:url" content="http://hs.xd.com/category/news/"> -->
<!-- <meta property="og:site_name" content="横扫千军"> -->
<!-- <!-- / Yoast WordPress SEO plugin. --> 

<!-- <link rel="alternate" type="application/rss+xml" title="横扫千军 » Feed" href="http://hs.xd.com/feed/"> -->
<!-- <link rel="alternate" type="application/rss+xml" title="横扫千军 » 评论Feed" href="http://hs.xd.com/comments/feed/"> -->
<!-- <link rel="alternate" type="application/rss+xml" title="横扫千军 » 最新资讯分类目录Feed" href="http://hs.xd.com/category/news/feed/"> -->
<style type="text/css">.fancybox-margin{margin-right:0px;}</style></head>
<body>
        <div id="header">
            </div>
        <div id="body">
    <div class="block block-news">
    <div class="block-header clearfix">
                <a href="index.jsp" class="block-unit"><span class="font-icon-j for-align">返回</span></a>
                        <div class="title material"><span class="font-icon-b">最新资讯</span></div>
                    </div>
    <div class="block-body">
                <div class="content">
                
               <%
                int pagenum;
                 try{
                Integer tem = Integer.parseInt(request.getParameter("page"));
            
                	pagenum = Integer.valueOf(tem);
                 }catch(Exception ex){
                	 pagenum = 1;
                 }
               Service.newsnew(out,pagenum); %>  

                                                   
                                                    
                                                    
<!-- <span class="current">1</span> -->
<!-- <a href="http://hs.xd.com/category/news/page/2/" class="page larger">2</a> -->
<!-- <a href="http://hs.xd.com/category/news/page/3/" class="page larger">3</a> -->
<!-- <a href="http://hs.xd.com/category/news/page/4/" class="page larger">4</a> -->
<!-- <a href="http://hs.xd.com/category/news/page/5/" class="page larger">5</a> -->
<!-- <span class="extend">...</span> -->
<!-- <a href="http://hs.xd.com/category/news/page/10/" class="larger page">10</a> -->
<!-- <span class="extend">...</span> -->
<!-- <a href="http://hs.xd.com/category/news/page/2/" class="nextpostslink">›</a> -->


</div>                            </div>
    </div>
</div>   
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
                <p>预约《横扫千军》</p>
                <p>短信推送公测版下载地址，最先玩游戏！</p>
                <p><input type="text" placeholder="手机号" class="mobile subscribe-mobile"><a href="" class="subscribe-submit btn-submit">约</a></p>
            </div>
        </div>
    </div>
        <div id="customWechatShareInfo" class="hide" style="display: none" data-title="横扫千军 - 心动游戏" data-desc="全球第一即时战斗手游震撼来袭！华丽技能即时操控！丞相唐国强首次为手游配音，为中国十亿三国迷演绎气势磅礴的战争史诗；首度在游戏中实现拥有政治、经济、军事、人口的主城，更有拟真沙盘式国战地图、策略攻城掠地的国战打法，带来最真实最有趣的国战体验，三国真爱粉绝对不能错过！" data-pic="http://web.xdcdn.net/game/hsqj/img/wx_share.png?1444491101" data-link="http://hs.xd.com"></div>
            <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js" type="text/javascript"></script><script src="http://web.xdcdn.net/xd/assets.php?js=/vendor/js/jquery-1.10.2.min.js,/vendor/fancybox/2_1_5/jquery.fancybox.pack.js,/js/layout/xd.js?!,/js/layout/wx_api_config.js?!,/../game/template/js/elements/wechat_share.js?1454485317,/vendor/fastclick/lib/fastclick.js,/../game/hsqj/js/index-mobile.js?1446082823"></script>    <script>
        if(typeof FastClick !== 'undefined') {
            FastClick.attach(document.body);
        }
    </script>
    
<!-- Google Annalytics Code -->
<script type="text/javascript">
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-16408836-1', 'auto', {'cookieDomain':'xd.com'});
  ga('send', 'pageview');
    (function() {
        var s = document.createElement('script');
        s.type = 'text/javascript';
        s.async = true;
        s.src = '//tajs.qq.com/gdt.php?sId=47245038';
        var x = document.getElementsByTagName('script')[0];
        x.parentNode.insertBefore(s, x);
    })();
</script>

<!-- Google Remarketing Code -->
<div style="display:none;"><img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/987748488/?value=0&amp;guid=ON&amp;script=0"></div>


<!-- Dynamic page generated in 0.171 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2016-05-04 10:49:16 -->

<!-- Compression = gzip --></body></html>