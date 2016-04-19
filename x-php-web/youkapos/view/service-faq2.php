<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-cn" />
<meta name="keywords" content="有卡,手机网站,微信营销" />
<meta name="description" content="有卡" />
<meta name="author" content="有卡" />
<title>有卡--FAQ</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.easing.js" type="text/javascript"></script>
<script src="js/jquery.navpart.js" type="text/javascript"></script>
<script src="js/jquery.faq.js" type="text/javascript"></script>
<script src="js/public.js" type="text/javascript"></script>
<script src="js/MSClass.js" type="text/javascript"></script>
<script type="text/javascript">
//navpart
$(function(){$("#navpart").lavaLamp({ fx:"backout", speed:700})});

//便民导航
head(100,"top");
</script>
</head>

<body>
<?php include('header.php'); ?>

<div id="location">
	<div>服务&amp;支持<span>Service &amp; Support</span></div>
</div>
<div id="navpart" class="navpart-service">
    <ul>
        <li><a href="index.php?controller=service">服务理念</a></li>
        <li class="hover current-cat"><a href="index.php?controller=service&action=faq">FAQ</a></li>
        <li><a href="index.php?controller=service&action=feedback" class="last">提交反馈</a></li>
    </ul>
</div>

<div id="content">
	<div id="faq_list">
        <div class="title">常见问题(FAQ)</div>
        <div class="types">
        	            <a href="index.php?controller=service&action=faq"><b class="l"></b><b>域名问题</b><b class="r"></b></a>
                        <a href="index.php?controller=service&action=faq2" class="current"><b class="l"></b><b>虚拟主机问题</b><b class="r"></b></a>
                        <a href="index.php?controller=service&action=faq3"><b class="l"></b><b>邮局问题</b><b class="r"></b></a>
                        <a href="index.php?controller=service&action=faq4"><b class="l"></b><b>网站建设问题</b><b class="r"></b></a>
                    </div>

               
         		<div id="page">
			<a href="javascript:void(0);" title="已经是第一页了!" class="prveNO">&nbsp;</a><a href="�page=1.html" class="current">1</a><a href="javascript:void(0);" title="已经是最后一页了!" class="nextNO">&nbsp;</a>        </div>
    </div>    
</div>   
<script type="text/javascript">var faq=new accordion.faq("faq");faq.init("faq_list",-1,"open");</script>


<?php include('footer.php'); ?>
<script src="js/jquery.brand.js" type="text/javascript"></script>
<script src="js/menu.js" type="text/javascript"></script>
</body>
</html>
