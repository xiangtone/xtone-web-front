<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta property="qc:admins" content="15472131256533256375">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  
    <link rel="shortcut icon" href="" type="image/x-icon"><meta name="Keywords" content="">
	<link rel="stylesheet" type="text/css" href="js&css/common.css">
    <script type="text/javascript" src="js&css/jquery-1.js"></script>
    <script type="text/javascript" src="js&css/slide.htm"></script>
    <script type="text/javascript" src="js&css/placeholderfriend.js"></script>
    <script type="text/javascript" src="js&css/jquery.js"></script>
	<title>灵域仙魔</title>	
	<script type="text/javascript">    
    window.onerror = function () { return true; }    
    </script>   
    <script type="text/javascript">
    function jjkf(){
    	alert("即将开放，敬请期待！");
    	
    	
    }
    
    </script>
    
    
  <script type="text/javascript">
   $(function(){
    focus:input =function(){
     var oval = $(this).val();
     if (oval != " ") {
      $(this).val(" ");
     };
     blur:input = function(){
     if (oval == " ") {
      $(this).val(oval);
     };
    }
   }(jQuery);
  </script>
   <script type="text/javascript">
	   $(document).ready(function(){
		   function showfirst(){
			   $('#ftab-0').show();
		   }
		   window.onload=showfirst;		  
	   })
	 </script>    
</head>
<body>
<!-- <div class="erweima"> -->
<!--   <img src="images/erweima.jpg" alt=""> -->
<!-- </div>  -->
     <div class="fbg">
         <div class="fcontainer">
             <div class="flogo"><a href="index.jsp"><img src="images/flogo.png" alt="logo"></a></div>
             <!-- 视频链接 -->
             <div class="fv">
				<!--                  <div style="text-align:center; bottom:0px;"><a href="javascript:jjkf()"><img src="images/qhyy.png"></a></div> -->
             
              <div style="width:100%;height:70%"></div>
             <a href="javascript:jjkf()">            
             <div id="qhyy">             	
             </div>
             </a>
             </div>
         </div>
         <!-- 下载 -->
         <div class="fload">
            <ul>
               <li id="li_1"><a href="http://uri6.com/2euqUv"></a></li>
               <li id="li_2"><a href="index.jsp"></a></li>
               <li id="li_3"><a href="http://uri6.com/YnmAZf"></a></li>
            </ul>
         </div>
         <!-- 职业介绍 -->
        <!--  <div class="fbg1">    
             <script type="text/javascript">
             $(function(){           	 
              $.ajax({           	  
            	  type: "GET",
                  url: "/lyxm.xtonegame.com/getjson",
                  data: {name:$("#name").val(),introduction:$("#introduction").val(),pic1:$("#pic1").val(),pic2:$("#pic2").val()},
                  dataType: "json",
                  success: function(data){
                      var html = '<h2><img src="js&css/ftit.png" alt=""></h2>';
                      $.each(data, function(commentIndex, comment){
                      	  
                          html+='<div id="ftab-'+commentIndex+'" class="ftab-main" style="display:none">'+
                                 '<img src="'+comment['pic2']+'" alt="" height="81px" width="185px">'+
                                '<span><img src="'+comment['pic1']+'"></span>'+
                                 '<p>'+comment['introduction']+'</p></div>'
                    	  
                      })
                      	  html+='<div class="ftab-conl"><ul>'
                      	  
                          $.each(data, function(commentIndex, comment){
                          			html+='<li id="l'+commentIndex+'" onclick=dofun('+commentIndex+')>'+comment['name']+'</li>'
                          })
                      
                      		html+='</ul></div>'
                      $('.fbg1').html(html);
                      		
                      //alert(html);		
          			}
            	  
              })                                    
              
             })
                  
             
             </script>
           
         </div> -->
         <div class="fbg1">
             <h2><img src="js&css/ftit.png" alt=""></h2>
             <div class="ftab-main" id="ftab-0">
                 <img src="images\wzzs.png" alt="" height="81px" width="185px">
                 <span><img src="images\rwzs.png" alt=""></span>
                 <p>拥有高伤害法术输出和群打击能力，团战中扮演着一个主力输出的角色。法师技能极尽炫丽，操作相对简单。升级刷怪，团战控场，无所不能。选择法师必定成为队友坚实的后盾，用实力承担起应有的责任。</p>
             </div>
             <div class="ftab-main" id="ftab-1" style="display: none;">
                 <img src="images\wzzs.png" alt="" height="81px" width="185px">
                 <span><img src="images\rwzs.png" alt=""></span>
                 <p>战士血量值高，攻击爆发能力强。战士的特质奠定了他是团队中的主力先锋的地位，无论是PVP还是PVE战士的表现都是那么勇猛无敌。选择战士就要近身搏杀，万军之中取敌将首级！</p>
             </div>
             <div class="ftab-main" id="ftab-2" style="display: none;">
                 <img src="HomePage_files/daoshi.png" alt="" height="81px" width="185px">
                 <span><img src="HomePage_files/ds-p.png" alt=""></span>
                 <p>拥有多种多样的技能，火，毒，嗜血，召唤骷髅与神兽协同作战。远程高伤害输出，配合毒的运用，随从宝宝的追击，使得道士成为战场上的幽灵杀手。灵活的跑位，神出鬼没的狙击向世人展现出道士的本色。</p>
             </div>
             <div class="ftab-conl">
                <ul>
                   <li>法师</li>
                   <li>战士</li>
                   <li>道士</li>
                </ul>
             </div>
         </div>
         
         
         
         <!-- 上线 -->
             <div class="state-line" style="display:none;">
                  <ul>
                    <span class="ffsl"></span>
                    <span class="ffsr"></span>
                    <li class="active">
                      <i>
                      <span class="fsl"></span></i>
                      <p>版正式上线！</p>
                    </li>
                    <li>
                      <i><span class="fsr"></span>
                      <span class="fsl"></span></i>
                      <p>版正式上线！</p>
                    </li>
                    <li>
                      <i><span class="fsr"></span>
                      <span class="fsl"></span></i>
                      <p>安卓版正式上线！</p>
                    </li>
                    <li>
                      <i><span class="fsr"></span>
                      </i>
                      <p>安卓版正式上线！</p>
                    </li>
                  </ul>
             </div>

     </div>
     <div class="footerx">
    <div class="logox" style="padding-left:20px;">
        <div class="logo-s" style="padding:0 50px;">
        <a class="baidux"> <img src="images/footer.png" style="border-right: 1px solid grey;" alt=""></a>
    </div>
        <div class="font">
           <div class="font">
        	<p>备案号:粤ICP备11029425号-2 丨粤网文[2013]0810-210号丨</p>
            <p>抵制不良游戏 拒绝盗版游戏 注意自我保护 谨防上当受骗</p>
            <p>适度游戏益脑 沉迷游戏伤身 合理安排时间 享受健康生活</p>
    	    </div>
        </div>
    </div>

</div>
 <script>
        $(document).ready(function(){
            var oConl = $('.ftab-conl li');
            oConl.click(function(){
               var num = $(this).index();
               $('.ftab-main').hide();
               $('#ftab-'+num).show();
            });
        });
</script>
	 
</body>
</html>