<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>游戏平台管理后台</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(./images/left.gif);
}
-->
</style>
<link href="./css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="./images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="./images/ico06.gif";}//图片ico06为蓝色的正方形
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
				image.src="./images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="./images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="./images/ico04.gif";
	}
}

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="./images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="./images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02">king</span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="../login.html" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  游戏管理开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="./images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >游戏管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
            <tr>
              <td width="9%" height="20" ><img id="xiaotu4" src="./images/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="listgType.php" target="mainFrame" class="left-font03" onClick="tupian('4');">游戏分类</a></td>
            </tr>
            
            <tr>
              <td width="9%" height="20" ><img id="xiaotu2" src="./images/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="addGame.php" target="mainFrame" class="left-font03" onClick="tupian('2');">添加游戏</a></td>
            </tr>
            <tr>
              <td width="9%" height="21" ><img id="xiaotu3" src="./images/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="listGame.php" target="mainFrame" class="left-font03" onClick="tupian('3');">游戏列表</a></td>
            </tr>
		</table>
		<!--  游戏管理结束    -->
		
        
        <!--  新闻管理开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img5" id="img5" src="./images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');" >新闻管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
            
            <tr>
              <td width="9%" height="20" ><img id="xiaotu6" src="./images/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="addNews.php" target="mainFrame" class="left-font03" onClick="tupian('6');">添加新闻</a></td>
            </tr>
            <tr>
              <td width="9%" height="21" ><img id="xiaotu7" src="./images/ico06.gif" width="8" height="12" /></td>
              <td width="91%"><a href="listNews.php" target="mainFrame" class="left-font03" onClick="tupian('7');">新闻列表</a></td>
            </tr>
		</table>
		<!--  新闻管理结束    --
	
		
		

	  </TD>
  </tr>
  
</table>
</body>
</html>
