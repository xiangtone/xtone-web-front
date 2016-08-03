<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="zh-CN">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">
	<meta content="telephone=no, email=no" name="format-detection">
    <title>灵域仙魔</title>
	<script src="jscss/hm.js"></script>
	<script src="jscss/hm_001.js"></script>
	<link rel="stylesheet" type="text/css" href="jscss/index.css" media="all">
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no"> -->
    <meta name="apple-mobile-web-app-capable" content="yes">
   	<meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=0.1, maximum-scale=2.0, user-scalable=yes\"> 
    
		<!--标准mui.css-->
			<link rel="stylesheet" href="mui/dist/css/mui.css">
			<link rel="stylesheet" href="mui/sass/mui.scss">
			<link rel="stylesheet" href="mui/dist/css/mui.min.css">

	    	<link rel="stylesheet" type="text/css" href="mui/dist/css/mui.css" media="all">
	    	<script src="jscss/jquery-1.7.js"></script>
			<script src="mui/dist/js/mui.js"></script>
			<script src="mui/dist/js/mui.min.js"></script>

</head>
<script type="text/javascript">

              width_screen=document.documentElement.clientWidth;
              
              document.write("<body style='width="+width_screen+"px'>");
</script>
<div style="transform: scale(1.02812); transform-origin: left top 0px;" class="container">

		<!--页眉-->
<header class="clearfix">
    <!--顶栏-->
    
    <!--顶栏 end-->
    <!--头图-->
   <!--  <section class="head-pic">
        <img src="images/top.png" />
    </section> -->
    <!--头图 end-->
</header>		
		<!--页眉 end-->
		
		<!--top-->
		<section class="top">
			<div class="download-btn">
				<a data-sb-indepth="true" href="http://cdnsrc.xtonegame.com/download/lyxm/lyxm_xt.apk">安卓下载</a>
				<a href="#">IOS下载</a>
			</div>

			<!-- <div class="erweima">
				<img src="/rsc/images/new_erweima.png" alt="">
				<p>扫描下载游戏</p>
			</div> -->
		</section>
		<!--top end-->
		
		<!--最新活动-->
	
			<div id="slider1" class="mui-slider" style="width:600px;height:413px;align:center;margin-left:15px;margin-top:100px;">
			<div class="mui-slider-group mui-slider-loop">
				<!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
				<div class="mui-slider-item mui-slider-item-duplicate">
					<a href="#">
						<img src="images/activity2.png">
					</a>
				</div>
				<!-- 第一张 -->
				<div class="mui-slider-item">
					<a href="#">
						<img src="images/activity1.png">
					</a>
				</div>
				<!-- 第二张 -->
				<div class="mui-slider-item">
					<a href="#">
						<img src="images/activity2.png">
					</a>
				</div>
				
				
				<!-- 额外增加的一个节点(循环轮播：最后一个节点是第一张轮播) -->
				<div class="mui-slider-item mui-slider-item-duplicate">
					<a href="#">
						<img src="images/activity1.png">
					</a>
				</div>
			</div>
			<div class="mui-slider-indicator">
				<div class="mui-indicator mui-active"></div>
				<div class="mui-indicator"></div>
			</div>
		</div>
	<section class="latest">
			<div class="latest-news change-latest">
				<div class="ln-nav">
					<ul>
						<li class="active">综合</li>
						<li>新闻</li>
						<li>公告</li>
						<li>活动</li>
					</ul>
				</div>

				<ul class="ln-con">
						<li class="ln-item active">
						<ul id="ul1">
						<script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "GET",
                                      url: "/lyxm.xtonegame.com/news?type=0&count=4",
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a data-sb-indepth="true" href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'"> <em class="" style="color:#999999;">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a></li>'
                                                      		  
                                                  })
                                     $('#ul1').html(html);
                                   }
                                 })

                               })
                              </script>
												
						</ul>
						</li><li class="ln-item">
						<ul id="ul2">
						<script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "GET",
                                      url: "/lyxm.xtonegame.com/news?type=1&count=4",
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a data-sb-indepth="true" href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'"> <em class="" style="">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a></li>'
                                                      		  
                                                  })
                                     $('#ul2').html(html);
                                   }
                                 })

                               })
                              </script>
												
						</ul>
						</li><li class="ln-item">
						<ul id="ul3">
						<script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "GET",
                                      url: "/lyxm.xtonegame.com/news?type=3&count=4",
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a data-sb-indepth="true" href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'"> <em class="" style="">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a></li>'
                                                      		  
                                                  })
                                     $('#ul3').html(html);
                                   }
                                 })

                               })
                              </script>
												
						</ul>
						</li><li class="ln-item ">
						<ul id="ul4">
						<script type="text/javascript">
                                $(document).ready(function(){
                                  $.ajax({
                                    type: "GET",
                                      url: "/lyxm.xtonegame.com/news?type=2&count=4",
                                    //  data: {id:$("#id").val(),catalog:$("#catalog").val(),title:$("#title").val(),lastModifyTime:$("#lastModifyTime").val()},
                                      dataType: "json",
                                      success: function(data){
                                                  //$('#resText').empty();   //清空resText里面的所有内容
                                                  var html = '';
                                                  $.each(data, function(commentIndex, comment){
                                                	  
                                                      html+='<li><a data-sb-indepth="true" href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                                    		 +'"> <em class="" style="">【'+comment['catalog']
                                                      		+'】'+comment['title']+'</em></a><span></span></li>'
                                                      		  
                                                  })
                                     $('#ul4').html(html);
                                   }
                                 })

                               })
                              </script>
												
						</ul>
						</li>
						
				</ul>

				<a data-sb-indepth="true" class="more" href="Newslist.jsp">查看更多</a>
			</div>

		</section>
		<!--最新活动 end-->

		<!--联系方式-->
		
		<!--联系方式 end-->

		<!--游戏介绍-->
		
		
		<!--游戏介绍 end-->

		<!--游戏特色-->
		<div id="slider" class="mui-slider" style="width:600px;height:413px;align:center;margin-left:15px;margin-top:120px;">
			<div class="mui-slider-group mui-slider-loop">
				<!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
				<div class="mui-slider-item mui-slider-item-duplicate">
					<a href="#">
						<img src="images/game05.png">
					</a>
				</div>
				<!-- 第一张 -->
				<div class="mui-slider-item">
					<a href="#">
						<img src="images/game01.png">
					</a>
				</div>
				<!-- 第二张 -->
				<div class="mui-slider-item">
					<a href="#">
						<img src="images/game02.png">
					</a>
					
				</div>
				
					<div class="mui-slider-item">
					<a href="#">
						<img src="images/game03.png">
					</a>
				</div>
				<!-- 第四张 -->
				<div class="mui-slider-item">
					<a href="#">
						<img src="images/game04.png">
					</a>
					<!-- 第五张 -->
				</div>
				<div class="mui-slider-item">
					<a href="#">
						<img src="images/game05.png">
					</a>
				</div>
			
				
				<!-- 额外增加的一个节点(循环轮播：最后一个节点是第一张轮播) -->
				<div class="mui-slider-item mui-slider-item-duplicate">
					<a href="#">
						<img src="images/game01.png">
					</a>
				</div>
			</div>
			<div class="mui-slider-indicator">
				<div class="mui-indicator mui-active"></div>
				<div class="mui-indicator"></div>
				<div class="mui-indicator"></div>
				<div class="mui-indicator"></div>
				<div class="mui-indicator"></div>
			</div>
		</div>
		<!--游戏特色 end-->


		<!--回到顶部-->
		<a href="#" class="gotop"></a>
		<!--回到顶部 end-->
		
		<!-- footer -->
<footer style="height:260px">
		<img src="images/qqinfo.png">
		<img src="images/companyinfo.png">
	
</footer>		
		<!-- footer end -->
		
		<!-- 微信关注弹窗 -->
</div>
		



	
	
	
	
	
	<script src="jscss/zepto.min.js"></script>
	<script src="jscss/touch.js"></script>
	<script src="jscss/fx.js"></script>
	<script src="jscss/widget.1.0.2.js"></script>
	<script src="jscss/carousel.1.0.3.js"></script>
	<script src="jscss/scale.js"></script>
	<script src="jscss/base.js"></script>
	<script>
		// imgscroll initBtn
	    function initSlider(obj) {
	    	var obj = $(obj),
	        	len = obj.find(".cont-item").length;

	        var btns = obj.find(".carousel-control").empty();
	        var tmp;
	        for (var i = 0; i < len; i++) {
	            tmp = $("<span/>").addClass('control-item');
	            i == 0 && tmp.addClass('active');
	            btns.append(tmp);
	        }
	    }
		/******imgscroll******/ 
		function imgscroll(con1,con2) {
			var carousel1 = new Carousel({
					element: con1
				}),
				carousel2 = new Carousel({
					element: con2,
					autoplay: true,
					autoplay_interval_ms: 5000
				});
			carousel1.refresh = function () {
			};
			carousel2.refresh = function () {
			};
		}
		initSlider(".iscroll-latest");
		initSlider(".iscroll-features");
		imgscroll(".iscroll-latest",".iscroll-features");

	</script>
<script type="text/javascript" charset="utf-8">
			mui.init({
				swipeBack:true //启用右滑关闭功能
			});
			var slider1 = mui("#slider1");
	    	slider1.slider({
				interval: 2000
			});
		    	var slider = mui("#slider");
		    	slider.slider({
					interval: 2000
				});
		    	
		 
		</script>

</body></html>
