<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>苍穹仙尊游戏下载</title>
</head>
<body>
<div style="width:100%;">
<div style="width:100%;background-image: url(img/xiazai.png); background-repeat: no-repeat; background-position: center 0; background-color: transparent; background-size: 100%; position: absolute;height:100%;width:100%;margin-top:-18%;"></div>
</div>
</body>

<script charset="gb2312" type="text/javascript" src="js/jquery(mixNIE).last.js"></script>

<script type="text/javascript">
var ua = navigator.userAgent.toLowerCase();
var isWeixin = ua.indexOf('micromessenger') != -1;
if (!isWeixin) {
	document.body.innerHTML='';
	document.location.href ="../downskip?gamenameId=h";
}
</script>

</html>