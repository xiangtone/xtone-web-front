<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-cn" />
<meta name="keywords" content="有卡" />
<meta name="description" content="有卡" />
<meta name="author" content="有卡" />
<title>集团网站</title>
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
	<div>解决方案<span>Solution</span></div>
</div>
<div id="navpart" class="navpart-solution">
	<ul>
	    <li><a href="index.php?controller=solution">电子政务网站</a></li>
		<li><a href="index.php?controller=solution&action=hospital">医院网站系统</a></li>
        <li class="hover current-cat"><a href="index.php?controller=solution&action=group">集团网站群</a></li>
		<li><a href="index.php?controller=solution&action=brand">企业品牌官网</a></li>		
        <li><a href="index.php?controller=solution&action=trade">企业外贸网站</a></li>
        <li><a href="index.php?controller=solution&action=marketing">企业营销网站</a></li>
        <li><a href="index.php?controller=solution&action=mall" class="last">电商运营</a></li>
    </ul>
</div>

<div id="content">
    <div id="solution-group">
近期推出。。
  
    </div>
</div>


<?php include('footer.php'); ?>
<script src="js/jquery.brand.js" type="text/javascript"></script>
<script src="js/menu.js" type="text/javascript"></script>
</body>
</html>
