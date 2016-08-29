<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
   灵域仙魔</title>
		<link rel="shortcut icon" href="logo.ico" type="image/x-icon"><meta name="Keywords" content=" "><meta name="description" content=""><meta name="applicable-device" content="pc,mobile"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"><meta http-equiv="X-UA-Compatible" content="IE=9;IE=8;IE=7;IE=EDGE,chrome=1">
		<link type="text/css" rel="stylesheet" href="js&css/201512121.css">
        <link rel="stylesheet" href="js&css/footer.css">
        <script src="js&css/hm.js"></script>
        <script type="text/javascript" language="javascript" src="js&css/jquery-1.js"></script>
        <script type="text/javascript" language="javascript" src="js&css/base-20151217.js" charset="gb2312"></script>
        <script type="text/javascript" src="js&css/tan.js" charset="gb2312"></script>
    <!--兼容ie6-->
    <!--[if IE 6]>
    <script src="http://sdosbk.bce.baidu-mgame.com/static/js/pngAlaph.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--百度统计-->
<!-- 	<script type="text/javascript" src="js&css/baidu.js"></script> -->
    <script type="text/javascript">
    function browserRedirect() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
        if ((bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) ){
            window.location.href="mobile/index.jsp";
        }
    }
    browserRedirect();
	</script>
    <script type="text/javascript">
		var isIE=!!window.ActiveXObject;
		var isIE6=isIE&&!window.XMLHttpRequest;
		if (isIE6){
			window.location.href("index.jsp");
		}

    </script>   
<style>

        .roll_l{left: 150px;}
        .slogan{display: none;}
</style>
</head>

<body style="background:#FFFFFF">

<!--视频弹出内容 start-->
<div id="dialog-overlay"></div>
	<div class="alertBox" id="alertBox">
	<div class="alertCon">
        <div id="ajaxCon">
        <!-- ajax cont -->
        </div>
        <p style="margin:0" class="close" title="关闭"></p>
	</div>
</div>
<!--视频弹出内容 end-->
<div class="wrap">
  	<div class="header"></div> 
	<div class="wrapper">
    	<div class="w_top">

<div class="logo"><a target="_blank" href="index.jsp"></a></div>
<div class="nav">
    <div class="navBtn b1"><a href="index.jsp"></a></div>
    <div class="navBtn b2"><a href="News.jsp"></a></div>
    <div class="navBtn b3"><a href="Events.jsp"></a></div>
    <div class="navBtn b4"><a href="Strategy.jsp"></a></div>
    <div class="navBtn b5"><a href="http://tieba.baidu.com/f?ie=utf-8&kw=%E7%81%B5%E5%9F%9F%E4%BB%99%E9%AD%94&fr=search" target="_blank"></a></div>
    <div class="navBtn b6"><a href="qhyy.jsp" target="_blank"></a></div>
</div>
            <div class="slogan"></div>
            
            <div class="movBtn"><a class="popcl" href="http://www.sdo-shabake.com/shabake/video"></a></div>
            <div class="topCon">
            	<!--轮播开始-->
            	<div class="lunbo">
                	<div class="imgscroll">
                        <div style="display:none;" class="pre" id="prev"></div>
                        <div style="display:none;" class="next" id="next"></div>
                        <div id="picBox" class="imglist">
                            <ul style="width: 2200px;">
                         <li style="display: none; opacity: 1;" class="imgurl">
                                    <div class="pic">
                                        <a href=""></a>
                                        <span><img src="images/activity1.jpg"></span>
                                    </div>
                         </li>
                    <li style="display: none; opacity: 1;" class="imgurl">
                                    <div class="pic">
                                        <a href=""></a>
                                        <span><img src="images/activity2.jpg"></span>
                                    </div>
                            </li>
                  <li style="display: block; opacity: 1;" class="imgurl"> 
                                     <div class="pic"> 
                                         <a href=""></a> 
                                         <span><img src="images/activity3.jpg"></span> 
                                     </div> 
                             </li> 
<!--                    <li style="display: none; opacity: 1;" class="imgurl"> -->
<!--                                     <div class="pic"> -->
<!--                                         <a href="http://www.sdo-shabake.com/shabake/info?t=2&amp;aid=220" target="_blank"></a> -->
<!--                                         <span><img src="sbkindex_files/8331f7126e53c44468d26b63ec844f2a.jpg"></span> -->
<!--                                     </div> -->
<!--                             </li> -->

               </ul>
                        </div>
                        <div id="listBox">
                            <ul style="width: 140px;" class="roll_l">

                                <li class=""><a href="javascript:;" class="roll_t" title=""></a></li>
                                <li class=""><a href="javascript:;" class="roll_t" title=""></a></li>
                                <li class=""><a href="javascript:;" class="roll_t" title=""></a></li>
<!--                                 <li class=""><a href="javascript:;" class="roll_t" title=""></a></li> -->
                                <!-- <li><a href="javascript:;" class="roll_t" title=""></a></li>  -->
                            </ul>
                        </div>
                    </div>
                </div>
                <!--轮播结束-->
                <div class="download_ewm"></div>

			<div class="download_btn1">
				<a href="http://cdnsrc.xtonegame.com/download/lyxm/lyxm_xt.apk" style="cursor：pointer;"></a></div>
            <div class="download_btn2">
                    <a href="javascript:alert('暂未开通，敬请期待')" style="cursor:pointer;"></a>
                </div>
            </div>
        </div>
        <div class="w_main" style="height:650px;">
        	<div class="con1">
                <div class="news">
                	<!-- 新闻类别按钮 开始-->
                        <div class="newsTit">
                            <ul>
                                <li><a style="color:#ff4106;" href="News.jsp">综合</a></li>
                                <li><a href="newsa.jsp">新闻</a></li>
                                <li><a href="activity.jsp">活动</a></li>
                                <li><a href="announce.jsp">公告</a></li>

                            </ul>
                            <div class="newsMore"><a target="_blank" href="News.jsp">更多</a></div>
                        </div>
                        <div class="news_xian">
                            <div class="red"></div>
                        </div>
                        <!-- 新闻类别按钮 结束-->
                        <!-- 新闻列表 开始-->
    					<div style="display:block;" class="newsList">
                            <ul id=url_0>
                          
		     <script type="text/javascript">
		         $(function(){

                      $.ajax({
                          type: "GET",
                          url: "news?type=0&count=5",
                          data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                   
                                          html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                        		 +'" target="_blank"> <em class="" style="color:#ff4106;">【'+comment['catalog']
                                          		+'】'+comment['title']+'</em><span style="color:#ff4106;">'+comment['lastModifyTime']+'</span></a></li>'
                                          		  
                                      })
                                      $('#url_0').html(html);
                          }
                      })

             })
             </script>
		                    
		                    
		                    </ul>
                        </div>
                        <div class="newsList">
                            <ul id=url_1>
                            <!--  
                                		                                <li><a href="http://www.sdo-shabake.com/shabake/info?t=1&amp;aid=565" target="_blank"><em class="">【新闻】 6月全新版本《沙巴克传奇》吴奇隆陪你血战到底</em><span>06/14</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=1&amp;aid=562" target="_blank"><em class="">【新闻】 精灵之羽《沙巴克传奇》天关副本全新攻略</em><span>06/12</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=1&amp;aid=555" target="_blank"><em class="">【新闻】 地宫全新探秘《沙巴克传奇》60级装备获得攻略</em><span>06/06</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=1&amp;aid=552" target="_blank"><em class="">【新闻】 50级魔魂任务《沙巴克传奇》地狱模式血战虹魔猪卫</em><span>06/03</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=1&amp;aid=549" target="_blank"><em class="">【新闻】 城会玩！《沙巴克传奇》“六一”狂欢节</em><span>06/01</span></a></li>
		                  
		                  -->
		    		 <script type="text/javascript">
		        		 $(function(){

                    		  $.ajax({
                          type: "GET",
                          url: "news?type=1&count=5",
                          data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                    	  
                                          html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                        		 +'" target="_blank"> <em class="" style="color:#ff4106;">【'+comment['catalog']
                                          		+'】'+comment['title']+'</em><span style="color:#ff4106;">'+comment['lastModifyTime']+'</span></a></li>'
                                          		  
                                      })
                                      $('#url_1').html(html);
                          }
                      })

             })
             </script>
		                  
		                  
		                  
		                   </ul>
                        </div>
                        <div class="newsList">
                           <ul id=url_2>
                            <!-- 
                                		                                <li><a href="http://www.sdo-shabake.com/shabake/info?t=4&amp;aid=589" target="_blank"><em class="" style="color:#ff4106;">【活动】 《沙巴克传奇》6月28日~7月5日活动</em><span style="color:#ff4106;">06/27</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=4&amp;aid=580" target="_blank"><em class="" style="color:#ff4106;">【活动】 《沙巴克传奇》6月21日~6月28日活动公告</em><span style="color:#ff4106;">06/20</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=4&amp;aid=202" target="_blank"><em class="" style="color:#ff4106;">【活动】 《沙巴克传奇》百万现金赠城主</em><span style="color:#ff4106;">01/28</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=4&amp;aid=564" target="_blank"><em class="">【活动】 《沙巴克传奇》6月14日~6月21日活动</em><span>06/13</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=4&amp;aid=556" target="_blank"><em class="">【活动】 《沙巴克传奇》2016年6月7号~2016年6月14日活动</em><span>06/06</span></a></li>
		                   -->
		                    <script type="text/javascript">
		         $(function(){

                      $.ajax({
                          type: "GET",
                          url: "news?type=2&count=5",
                          data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                    	  
                                          html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                        		 +'" target="_blank"> <em class="" style="color:#ff4106;">【'+comment['catalog']
                                          		+'】'+comment['title']+'</em><span style="color:#ff4106;">'+comment['lastModifyTime']+'</span></a></li>'
                                          		  
                                      })
                                      $('#url_2').html(html);
                          }
                      })

             })
             </script>
		                   
		                  
		                    </ul>
                        </div>
                        <div class="newsList">
                            <ul id=url_3>
                                		                      <!-- 
                                		                                <li><a href="http://www.sdo-shabake.com/shabake/info?t=2&amp;aid=586" target="_blank"><em class="" style="color:#ff4106;">【公告】 《沙巴克传奇》玫瑰花道具消失补偿公告</em><span style="color:#ff4106;">06/24</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=2&amp;aid=585" target="_blank"><em class="" style="color:#ff4106;">【公告】 安卓公测三区5服铁血16:00准时开启</em><span style="color:#ff4106;">06/22</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=2&amp;aid=584" target="_blank"><em class="" style="color:#ff4106;">【公告】 IOS正版公测三区2服江湖16:00准时开启</em><span style="color:#ff4106;">06/22</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=2&amp;aid=583" target="_blank"><em class="" style="color:#ff4106;">【公告】 6月21日IOS正版&amp;安卓版本更新延迟公告</em><span style="color:#ff4106;">06/21</span></a></li>
		                                		                        <li><a href="http://www.sdo-shabake.com/shabake/info?t=2&amp;aid=582" target="_blank"><em class="" style="color:#ff4106;">【公告】 《沙巴克传奇》6月21日IOS正版&amp;安卓版本更新结束</em><span style="color:#ff4106;">06/21</span></a></li>
																 -->
																 
			  <script type="text/javascript">
		         $(function(){

                      $.ajax({
                          type: "GET",
                          url: "news?type=3&count=5",
                          data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                    	  
                                          html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                        		 +'" target="_blank"> <em class="" style="color:#ff4106;">【'+comment['catalog']
                                          		+'】'+comment['title']+'</em><span style="color:#ff4106;">'+comment['lastModifyTime']+'</span></a></li>'
                                          		  
                                      })
                                      $('#url_3').html(html);
                          }
                      })

             })
             </script>									 
                            
                            				
                            </ul>
                        </div>
                        <div class="newsList">
                            <ul>

                            </ul>
                        </div>
                	<!-- 新闻标题 结束 -->
                </div>
                <div class="right_pic" style="background:url('images/qqzx.jpg')">
                  <div class="ch_bm"><img src="images/qq.png"/>&nbsp 495265372</div>
                   <div class="ch_bm1"><img src="images/qq.png"/>&nbsp 3232698308</div>
                </div>
            </div>
            <div class="h_30"></div>
            <div class="con2">
            <div class="bh"><a href="Wallpaper.jsp" target="_blank" title="jmbh"></a></div>
         
          <div class="zy">
          
          <div class="zy_nav">
                      	<ul>
                          	<li class="on2"><a class="nav_b0" href="javascript:void(0);"></a></li>
                       		<li><a class="nav_b1" href="javascript:void(0);"></a></li>
                       		<li><a class="nav_b2" href="javascript:void(0);"></a></li>
                   		</ul>
                    </div>
                    <div style="display:block;" class="zy_con zy_bg0">
                        <div class="zy_p">
                            <div class="zy_tit">
                            <span><img src="images/zyjs.png" style="top:20px" />&nbsp职业介绍</span>
                            </div>
                            <div class="h_10"></div>
                            <div class="zy_word">
                            	<p>
                                	<span>逍遥</span>
                                    <em>&nbsp<img src="images/zyjsxybq.png"/></em>
                                </p>
                             
                                 <p>战场上最强大的杀手！手持法杖，掌控元素之力，高群攻伤害！技能多，依靠高超的技巧与风骚的走位更是让敌人眼花缭乱！</p>
                            
                            </div>
                        </div>
                    </div>
                    <div class="zy_con zy_bg1">
                        <div class="zy_p">
                            <div class="zy_tit">
                            	<span><img src="images/zyjs.png" style="top:20px">&nbsp职业介绍</span>

                            </div>
                            <div class="h_10"></div>
                            <div class="zy_word">
                            	<p>
                                	<span>狂战</span>
                                    <em>&nbsp<img src="images/zyjskzbq.png"/></em>
                                </p>
                                 <p>战场上的先锋，手持利剑，勇闯敌阵！PK节奏爽快！1V1单挑很少有人能够完全正面的击败他！！</p>
                            </div>
                        </div>
                    </div>
                    <div class="zy_con zy_bg2">
                        <div class="zy_p">
                           	<div class="zy_tit">
                            	<span><img src="images/zyjs.png" style="top:20px">&nbsp职业介绍</span>
                             
                            </div>
                            <div class="h_10"></div>
                            <div class="zy_word">
                            	<p>
                                	<span>剑灵</span>
                                    <em>&nbsp<img src="images/zyjsjlbq.png"/></em>
                                </p>
                                <p>战场上最理想的辅助!并有神秘的召唤术，可召唤精灵、神兽、魔王作为强大的作战伙伴！还拥有治疗和增强防御等辅助手段！</p>
                            </div>
                        </div>
           
             <!-- <script type="text/javascript">
             $(function(){
            	 
              $.ajax({
            	  
            	  type: "GET",
                  url: "getjson",
                  data: {name:$("#name").val(),name_en:$("#name_en").val(),introduction:$("#introduction").val(),pic1:$("#pic1").val(),pic2:$("#pic2").val()},
                  dataType: "json",
                  success: function(data){
                     // $('#resText').empty();   //清空resText里面的所有内容
                      var html = '';
                      html+='<div class="zy_nav" id="zy_nav"><ul>'
                          $.each(data, function(commentIndex, comment){
                        	  
                        	  html+='<li id="li_'+commentIndex+'"onclick=showfun('+commentIndex+')><a class="nav_b'+commentIndex+'" href="javascript:void(0);"></a></li>'
                          })
                             html+='</ul></div>'
                      $.each(data, function(commentIndex, comment){
                      	  
                          html+='<div style="display:none;background:url('+comment['pic1']+') right top no-repeat;" id="zy_bg'+commentIndex+'" class="zy_con zy_bg'+commentIndex+'">'+
							    '  <div class="zy_p"> <div class="zy_tit"><span>游戏介绍</span><em>职业介绍</em></div>'+
							    '<div class="h_10"></div><div class="zy_word"><p><span>'+comment['name']+
							    '</span><em>'+comment['name_en']+'</em></p><p>'+comment['introduction']+'</p></div></div></div>'  
                      })
                    
                      $('.zy').html(html);
                        // alert(html);
          			}
            	  
              })                                    
              
             })
                  
             
             </script>
              -->
     	
             
            	
      		<!-- 
                
                	
                    <div class="zy_nav">
                      	<ul>
                          	<li ><a class="nav_b1" href="javascript:void(0);"></a></li>
                       		<li><a class="nav_b2" href="javascript:void(0);"></a></li>
                       		<li><a class="nav_b3" href="javascript:void(0);"></a></li>
                   		</ul>
                    </div>
                    <div style="display:block;" class="zy_con zy_bg1">
                        <div class="zy_p">
                            <div class="zy_tit">
                            	<span>游戏介绍</span>
                                <em>职业介绍</em>
                            </div>
                            <div class="h_10"></div>
                            <div class="zy_word">
                            	<p>
                                	<span>战士</span>
                                    <em>warrior</em>
                                </p>
                                <p>战士血量值高，攻击爆发能力强。战士的特质奠定了他是团队中的主力先锋的地位，无论是PVP还是PVE战士的表现都是那么勇猛无敌。选择战士就要近身搏杀，万军之中取敌将首级！</p>
                            </div>
                        </div>
                    </div>
                    <div class="zy_con zy_bg2">
                        <div class="zy_p">
                            <div class="zy_tit">
                            	<span>游戏介绍</span>
                                <em>职业介绍</em>
                            </div>
                            <div class="h_10"></div>
                            <div class="zy_word">
                            	<p>
                                	<span>法师</span>
                                    <em>wizard</em>
                                </p>
                                <p>法师拥有高伤害法术输出和群打击能力，在团战中扮演着一个主力输出的角色。法师技能极尽炫丽，操作相对简单。升级刷怪，团战控场，无所不能。选择法师必定成为队友坚实的后盾。</p>
                            </div>
                        </div>
                    </div>
                    <div class="zy_con zy_bg3">
                        <div class="zy_p">
                           	<div class="zy_tit">
                            	<span>游戏介绍</span>
                                <em>职业介绍</em>
                            </div>
                            <div class="h_10"></div>
                            <div class="zy_word">
                            	<p>
                                	<span>道士</span>
                                    <em>taoist</em>
                                </p>
                                <p>拥有火、毒、嗜血等多种技能，同时召唤骷髅与神兽协同作战。远程高伤害输出，配合毒的运用，随从宝宝的追击，使道士成为战场上的幽灵杀手。神出鬼没的狙击向世人展现出道士的本色。</p>
                            </div>
                        </div>
                    </div>
                    	//职业切换 结束
                   -->
                </div>
 
               
           </div>
            <div class="h_30"></div>
          <!-- 
            
              
                <script type="text/javascript">
                    var speed3 = 9;
                    demo2.innerHTML = demo1.innerHTML
                    function Marquee() {
                        if (demo2.offsetWidth - demo.scrollLeft <= 0)
                            demo.scrollLeft -= demo1.offsetWidth
                        else {
                            demo.scrollLeft++
                        }
                    }
                    var MyMar = setInterval(Marquee, speed3)
                    demo.onmouseover = function () { clearInterval(MyMar) }
                    demo.onmouseout = function () { MyMar = setInterval(Marquee, speed3) }
                </script>

            -->
            
            
            <div class="h_30"></div>
            
        </div>
        
	<!--微信二维码浮框-->
        <div class="fr_wx" style="position: fixed;left:50%;margin-left:600px;bottom:200px;z-index: 20  ">
            <div class="fr_ewm_wx">
            <span><img src="images/erweima.jpg" style="position:relative;margin-top:10px;z-index:1;margin-left:0px;" height="134px" width="134px"></span></div>
        </div>
        <div class="clearit"></div>
    </div>
      <div class="bs-docs-featurette bottom-hieght">
			<div class="container">
				<div class="row home-padding">
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding title">
						<div class="col-md-3 col-sm-3 nopadding">
							<img src="images/links.png">
						</div>
					</div>
					<div id="links" style="background-color: rgb(250, 250, 250); padding: 22px; text-align: center; height:auto;overflow:;" class="col-md-12 col-sm-12 col-xs-12 nopadding ztgs">
				<script type="text/javascript">
		         $(function(){

                      $.ajax({
                          type: "GET",
                          url: "Link",
                          data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                   
                                          html+='<div class="tt20"><a target="_blank" class="links" href="'+ 
                                                 comment['subTitle']+'">'+comment['title']+'</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>';
                                      })
                                      $('#links').html(html);
                          }
                      })

             });
             </script>
					
						<!-- <div class="tt20"><a target="_blank" class="links" href="http://www.17huang.com/">一起晃手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.bianwanjia.com">便玩家手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.youxiwangguo.com/">游戏王国</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.shouyoubus.com/">手游巴士</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.app178.com/">APP178手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.ppswan.com/">PPSWAN手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
					    <div class="tt20"><a target="_blank" class="links" href="http://www.shouyouya.com/">手游呀</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.9669.com/">9669手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.diyiyou.com/">第一手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.dunwan.com/">蹲玩游戏</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
					    <div class="tt20"><a target="_blank" class="links" href="http://www.youxiniao.com/">游戏鸟</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.yxyue.com/">游戏约</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.yoyou.com/">优游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://game.91.com/">91手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://game.hiapk.com/">安卓游戏</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.17huang.com/">一起晃手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.bianwanjia.com">便玩家手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.youxiwangguo.com/">游戏王国</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.shouyoubus.com/">手游巴士</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.app178.com/">APP178手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.ppswan.com/">PPSWAN手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
					    <div class="tt20"><a target="_blank" class="links" href="http://www.shouyouya.com/">手游呀</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.9669.com/">9669手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.diyiyou.com/">第一手游网</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="tt20"><a target="_blank" class="links" href="http://www.dunwan.com/">蹲玩游戏</a>&nbsp;&nbsp;&nbsp;&nbsp;</div>
					     -->
	
					</div>
					
				</div>
			</div>
	</div>
    <div class="clearit"></div>
    
    
</div>

<div class="footerx">
    <div class="logox" style="padding-left:20px;">
        <div class="logo-s" style="padding:0 50px;">

        <a class="baidux"> <img src="images/footer.png" style="border-right: 3px solid grey;" alt=""></a>
    </div>
        <div class="font">
        	<p>备案号:粤ICP备11029425号-2 丨粤网文[2013]0810-210号丨</p>
            <p>抵制不良游戏 拒绝盗版游戏 注意自我保护 谨防上当受骗</p>
            <p>适度游戏益脑 沉迷游戏伤身 合理安排时间 享受健康生活</p>
        </div>



    </div>

</div>
<!--<script type="text/javascript">var CopyRightcss = 'http://static.sdg-china.com/sdg/pic/SDGCOPYRIGHT/each/black.css';</script>-->
<!--<script type="text/javascript" src="http://static.sdg-china.com/copyright/js/sbkcqCopyRight.js" charset="gb2312"></script>-->

 <script type="text/javascript">
	   $(document).ready(function(){
		   function showfirst(){
			   $('#li_1').addClass("on2");
			   $('#zy_bg1').show();
		   }
		   window.onload=showfirst;
		  
	   })
	 </script>

	 <!--轮播--> 
<script type="text/javascript">
    function showfun(i){
    $('.zy_con').hide();	
    $('#zy_bg'+i).show();
    $('#zy_nav li').removeClass("on2");
    $('#li_'+i).addClass("on2");	
    }
    </script>

<script>
    function picroll() {
        function G(s) {
            return document.getElementById(s)
        }
        function getStyle(obj, attr) {
            if (obj.currentStyle) {
                return obj.currentStyle[attr]
            } else {
                return getComputedStyle(obj, false)[attr]
            }
        }
        var iBase = {
            Id: function (name) {
                return document.getElementById(name);
            },
            //设置元素透明度,透明度值按IE规则计,即0~100
            SetOpacity: function (ev, v) {
                ev.filters ? ev.style.filter = 'alpha(opacity=' + v + ')' : ev.style.opacity = v / 100;
            }
        }
        //淡入效果(含淡入到指定透明度)
        function fadeIn(elem, speed, opacity) {
            /*
            * 参数说明
            * elem==>需要淡入的元素
            * speed==>淡入速度,正整数(可选)
            * opacity==>淡入到指定的透明度,0~100(可选)
            */
            speed = speed || 20;
            opacity = opacity || 100;
            //显示元素,并将元素值为0透明度(不可见)
            elem.style.display = 'block';
            iBase.SetOpacity(elem, 0);
            //初始化透明度变化值为0
            var val = 0;
            //循环将透明值以5递增,即淡入效果
            (function () {
                iBase.SetOpacity(elem, val);
                val += 5;
                if (val <= opacity) {
                    setTimeout(arguments.callee, speed)
                }
            })();
        }

        //淡出效果(含淡出到指定透明度)
        function fadeOut(elem, speed, opacity) {
            /*
            * 参数说明
            * elem==>需要淡入的元素
            * speed==>淡入速度,正整数(可选)
            * opacity==>淡入到指定的透明度,0~100(可选)
            */
            speed = speed || 20;
            opacity = opacity || 0;
            //初始化透明度变化值为0
            var val = 100;
            //循环将透明值以5递减,即淡出效果
            (function () {
                iBase.SetOpacity(elem, val);
                val -= 5;
                if (val >= opacity) {
                    setTimeout(arguments.callee, speed);
                } else if (val < 0) {
                    //元素透明度为0后隐藏元素
                    elem.style.display = 'none';
                }
            })();
        }
        var oPic = G("picBox"); //大图列表ID
        var oList = G("listBox"); //小图列表ID
        var oPrev = G("prev"); //大图片上一页按钮，可修改ID名
        var oNext = G("next"); //大图片下一页按钮，可修改ID名
        var oPicLi = oPic.getElementsByTagName("li");
        var oListLi = oList.getElementsByTagName("li");
        var len1 = oPicLi.length;
        var len2 = oListLi.length;
        var oPicUl = oPic.getElementsByTagName("ul")[0];
        var oListUl = oList.getElementsByTagName("ul")[0];
        var w1 = oPicLi[0].offsetWidth;
        var w2 = oListLi[0].offsetWidth;
        oPicUl.style.width = w1 * len1 + "px";
        oListUl.style.width = w2 * len2 + "px";
        var index = 0;
        var num = 7; //小图列表显示小图数量，需按设计稿小图列表数量做相应修改
        var num2 = Math.ceil(num / 2);
        function Change() {
            for (var i = 0; i < len1; i++) {
                oPicLi[i].style.display = "none";
            }
            fadeIn(oPicLi[index]);
            for (var i = 0; i < len2; i++) {
                oListLi[i].className = "";
                if (i == index) {
                    oListLi[i].className = "on"
                }
            }
        }
        //执行下一页
        function nextPic() {
            index++;
            index = index == len2 ? 0 : index;
            Change()
        }
        //执行上一页
        function prevPic() {
            index--;
            index = index == -1 ? len2 - 1 : index;
            Change()
        }
        //点击id为next的按钮时执行下一页事件
        oNext.onclick = function () { nextPic(); }
        //点击id为prev的按钮时执行下一页事件
        oPrev.onclick = function () { prevPic() };
        for (var i = 0; i < len2; i++) {
            oListLi[i].index = i;
            oListLi[i].onclick = function () {
                index = this.index;
                Change()
            }
        }
        oListLi[0].onclick();

        function tt() {
            setInterval(function () { nextPic(); }, 5000);
        }
        tt();
    }
    picroll();
</script>




</body></html>
