<?php
session_start();

$username = $_SESSION['username'];

?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>广州捷酷软件--管理后台</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(./images/manage/left.gif);
}
-->
</style>
<link href="./css/manage/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="./images/manage/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="./images/manage/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="./images/manage/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="./images/manage/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="./images/manage/ico04.gif";
	}
}

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="./images/manage/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="./images/manage/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02"><?php echo $username; ?></span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="index.php?app=manage&controller=login&action=logout" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		
        
        <!--  新闻资讯管理开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img4" id="img4" src="./images/manage/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('4');" >新闻&amp;资讯</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree4" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
            <tr>
              <td width="9%" height="20" ><img id="xiaotu5" src="./images/manage/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="index.php?app=manage&controller=news&action=addNews" target="mainFrame" class="left-font03" onClick="tupian('5');">添加新闻或资讯</a></td>
            </tr>
            <tr>
              <td width="9%" height="21" ><img id="xiaotu6" src="./images/manage/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="index.php?app=manage&controller=news&action=listNews" target="mainFrame" class="left-font03" onClick="tupian('6');">新闻资讯列表</a></td>
            </tr>
		</table>
		<!--  新闻资讯管理结束    -->
        
        <!--  游戏管理开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="./images/manage/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('7');" >游戏列表</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree7" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
            <tr>
              <td width="9%" height="20" ><img id="xiaotu8" src="./images/manage/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="index.php?app=manage&controller=games&action=addGame" target="mainFrame" class="left-font03" onClick="tupian('8');">添加游戏</a></td>
            </tr>
            <tr>
              <td width="9%" height="21" ><img id="xiaotu9" src="./images/manage/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="index.php?app=manage&controller=games&action=listGames" target="mainFrame" class="left-font03" onClick="tupian('9');">游戏列表</a></td>
            </tr>
		</table>
		<!--  游戏管理结束    -->
		
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img10" id="img10" src="./images/manage/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('10');" >招聘信息列表</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree10" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
            <tr>
              <td width="9%" height="20" ><img id="xiaotu11" src="./images/manage/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="index.php?app=manage&controller=JoinUs&action=addJoinUs" target="mainFrame" class="left-font03" onClick="tupian('11');">添加招聘信息</a></td>
            </tr>
            <tr>
              <td width="9%" height="21" ><img id="xiaotu12" src="./images/manage/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="index.php?app=manage&controller=JoinUs&action=listJoinUs" target="mainFrame" class="left-font03" onClick="tupian('12');">招聘信息列表</a></td>
            </tr>
		</table>
	
		
		

	  </TD>
  </tr>
  
</table>
</body>
</html>
