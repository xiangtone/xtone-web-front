<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-cn" />
<meta name="keywords" content="有卡,手机网站,微信营销" />
<meta name="description" content="有卡" />
<meta name="author" content="有卡" />
<title>有卡--网站设计服务</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.easing.js" type="text/javascript"></script>
<script src="js/jquery.navpart.js" type="text/javascript"></script>
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
  <div>产品&amp;服务<span>Products & Services</span></div>
</div>
<div id="navpart" class="navpart-product">
	<ul>
	  	<li><a href="index.php?controller=product">域名空间邮箱</a></li>
    	<li class="hover current-cat"><a href="index.php?controller=product&action=design">网站设计服务</a></li>		
		<li><a href="index.php?controller=product&action=seo">网站SEO优化</a></li>
        <li><a href="index.php?controller=product&action=beautify">淘宝阿里装修</a></li>
        <li><a href="index.php?controller=product&action=mobile">手机网站</a></li>
        <li><a href="index.php?controller=product&action=store">应用软件开发</a></li>
        <li><a href="index.php?controller=product&action=services" class="last">增值设计服务</a></li>
    </ul>
</div>

<div id="content">
  <div id="product-design">
    <div class="title">网站设计服务</div>
    <div class="explanation">
      </div>
    </div>
</div>


<?php include('footer.php'); ?>
<script src="js/jquery.brand.js" type="text/javascript"></script>
<script src="js/menu.js" type="text/javascript"></script>
</body>
</html>
