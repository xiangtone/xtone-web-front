<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
   梦想江湖</title>
		<link rel="shortcut icon" href="logo.ico" type="image/x-icon" /><meta name="Keywords" content=" "><meta name="description" content=""><meta name="applicable-device" content="pc,mobile"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"><meta http-equiv="X-UA-Compatible" content="IE=9;IE=8;IE=7;IE=EDGE,chrome=1">
		<link type="text/css" rel="stylesheet" href="cssforpc/201512122.css">
        <link rel="stylesheet" href="cssforpc/footer.css">
       <script src="jsforpc/jquery-1.js"></script>
       <script src="jsforpc/hm.js"></script>
        <script type="text/javascript" language="javascript" src="jsforpc/base-20151217.js" charset="gb2312"></script>
        <script type="text/javascript" src="jsforpc/tan.js" charset="gb2312"></script>
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
<link rel="shortcut icon" href="logo.ico" type="image/x-icon" />
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
    <div class="navBtn b1"><a href="indexIn.jsp"></a></div>
    <div class="navBtn b2"><a href="News.jsp"></a></div>
    <div class="navBtn b3"><a href="Events.jsp"></a></div>
    <div class="navBtn b4"><a href="Strategy.jsp"></a></div>
    <div class="navBtn b5"><a href="http://tieba.baidu.com/f?kw=%E6%A2%A6%E6%83%B3%E6%B1%9F%E6%B9%96" target="_blank"></a></div>
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
                                        <span><img src="img/activity1.png"></span>
                                    </div>
                    </li>
                    <li style="display: none; opacity: 1;" class="imgurl">
                                    <div class="pic">
                                        <a href=""></a>
                                        <span><img src="img/activity2.png"></span>
                                    </div>
                            </li>
                 	
              		 </ul>
                        </div>
                        <div id="listBox">
                            <ul style="width: 140px;" class="roll_l">
                                <li class=""><a href="javascript:;" class="roll_t" title=""></a></li>
                                <li class=""><a href="javascript:;" class="roll_t" title=""></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--轮播结束-->

            </div>
        </div>
        <div class="w_main" style="height:650px;">
        	<div class="con1">
                <div class="news">
                	<!-- 新闻类别按钮 开始-->
                        <div class="newsTit">
                            <ul>
                                <li><a style="color:#f4ca79;" href="News.jsp">综合</a></li>
                                <li><a href="newsa.jsp">新闻</a></li>
                                <li><a href="activity.jsp">活动</a></li>
                                <li><a href="announce.jsp">公告</a></li>

                            </ul>
                            <div class="newsMore"><a target="_blank" href="News.jsp">更多</a></div>
                        </div>
                        <div class="news_xian">
                            <div class="red"></div>
                        </div>
                        <!-- javascript:alert('暂未开通，敬请期待')类别按钮 结束-->
                        <!-- 新闻列表 开始-->
    					<div style="display:block;" class="newsList">
             <ul id=url_0>
                          
		     <script type="text/javascript">
		         $(function(){

                      $.ajax({
                          type: "GET",
                          url: "Selnews",
                          data: {type:'00',count:4},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                   
                                          html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                        		 +'" target="_blank"> <em class="" style="color:#395378;">【'+comment['catalog']
                                          		+'】'+comment['title']+'</em><span style="color:#395378;">'+comment['lastModifyTime']+'</span></a></li>'
                                          		  
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
		    		 <script type="text/javascript">
		        		 $(function(){
                    		  $.ajax({
                          type: "GET",
                          url: "Selnews",
                          data: {type:'01',count:4},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                    	  
                                          html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                        		 +'" target="_blank"> <em class="" style="color:#395378;">【'+comment['catalog']
                                          		+'】'+comment['title']+'</em><span style="color:#395378;">'+comment['lastModifyTime']+'</span></a></li>'
                                          		  
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
                          
		       <script type="text/javascript">
		         $(function(){

                      $.ajax({
                          type: "GET",
                          url: "Selnews",
                          data: {type:'03',count:4},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                    	  
                                          html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                        		 +'" target="_blank"> <em class="" style="color:#395378;">【'+comment['catalog']
                                          		+'】'+comment['title']+'</em><span style="color:#395378;">'+comment['lastModifyTime']+'</span></a></li>'
                                          		  
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
                                		                  
			  <script type="text/javascript">
		         $(function(){

                      $.ajax({
                          type: "GET",
                          url: "Selnews",
                          data: {type:'02',count:4},
                          dataType: "json",
                          success: function(data){
                                      //$('#resText').empty();   //清空resText里面的所有内容
                                      var html = '';
                                      $.each(data, function(commentIndex, comment){
                                    	  
                                          html+='<li><a href="Contents.jsp?type='+comment['catalog']+'&id='+comment['id']
                                        		 +'" target="_blank"> <em class="" style="color:#395378;">【'+comment['catalog']
                                          		+'】'+comment['title']+'</em><span style="color:#395378;">'+comment['lastModifyTime']+'</span></a></li>'
                                          		  
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
                <div class="right_pic" style="">
                  <div class="ch_bm">
                  <p><h1>游&nbsp;戏&nbsp;Q&nbsp;Q&nbsp;群</h1></p>
                  
                  <p style="color:white;font-size:14px;"><img src="img/qq.png"/>&nbsp 476114315</p></div>
                   <div class="ch_bm">
                   <p><h1>游&nbsp;戏&nbsp;客&nbsp;服</h1></p>
                  <p style="color:white;font-size:14px;"><img src="img/qq.png"/>&nbsp;3421893764</p></div>
                </div>
            </div>
            <div class="h_30"></div>
            <div class="con2">
            <div class="bh"><a href="Wallpaper.jsp" target="_blank" title="jmbh"></a></div>
         
          <div class="zy">

            	<!--轮播开始-->
            	<div class="lunbo1">
            	
                	<div class="imgscroll1">
                        <div style="display:none;" class="pre" id="prev1"></div>
                        <div style="display:none;" class="next" id="next1"></div>
                    <div id="picBox1" class="imglist">
                    <ul style="width: 2200px;">
                    <li style="display: none; opacity: 1;" class="imgurl">
                                    <div class="pic">
                                        <a href=""></a>
                                        <span><img src="img/lb01.png"></span>
                                    </div>
                    </li>
                    <li style="display: none; opacity: 1;" class="imgurl">
                                    <div class="pic">
                                        <a href=""></a>
                                        <span><img src="img/lb02.png"></span>
                                    </div>
                            </li>
                             <li style="display: none; opacity: 1;" class="imgurl">
                                    <div class="pic">
                                        <a href=""></a>
                                        <span><img src="img/lb03.png"></span>
                                    </div>
                            </li>
                 	
              		 </ul>
                        </div>
                        <div id="listBox1">
                            <ul style="width: 140px;" class="roll_l">
                                <li class=""><a href="javascript:;" class="roll_t" title=""></a></li>
                                <li class=""><a href="javascript:;" class="roll_t" title=""></a></li>
                                <li class=""><a href="javascript:;" class="roll_t" title=""></a></li>
                                    </ul>
                        </div>
                    </div>
                </div>
                <!--轮播结束-->
               
           </div>
    
        </div>
        
	<!--微信二维码浮框-->
        <div class="clearit"></div>
    </div>
      <div class="bs-docs-featurette bottom-hieght" style="margin-bottom:20px;">
			<div class="container">
				<div class="row home-padding">
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding title">
						<div class="col-md-3 col-sm-3 nopadding">
							<img src="img/links.png">
						</div>
					</div>
			<div id="links" style=" padding: 22px; text-align: center; height:auto;overflow:;" class="col-md-12 col-sm-12 col-xs-12 nopadding ztgs">
				<script type="text/javascript">
		         $(function(){

                      $.ajax({
                          type: "GET",
                          url: "Selnews",
                          data: {type:'41',count:40},
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

             })
             </script>
				
	
					</div>
					
				</div>
			</div>
	</div>
   
    
</div>

<div class="footerx">
    <div class="logox" style="padding-left:20px;">
        <div class="logo-s" style="padding:0 50px;">

        <a class="baidux"> <img src="img/footer.png" style="border-right: 3px solid grey;" alt=""></a>
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
        var oPic = G("picBox1"); //大图列表ID
        var oList = G("listBox1"); //小图列表ID
        var oPrev = G("prev1"); //大图片上一页按钮，可修改ID名
        var oNext = G("next1"); //大图片下一页按钮，可修改ID名
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
