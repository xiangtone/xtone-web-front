<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>荟森数码--管理后台</title>
<link href="./css/manage/css.css" rel="stylesheet" type="text/css" />
<link href="./css/manage/style.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>

function link(){
    location.href="index.php?app=manage&controller=news&action=addNews";
}

</SCRIPT>

<body>
<form name="fom" id="fom" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="./images/manage/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
           
		    <tr>
			  <td width="21"><img src="./images/manage/ico07.gif" width="20" height="18" /></td>
			  <td width="538">
			  <span class="newfont06">新闻资讯类型：</span>
			  <select name="ntid" style="width:100px;font-size:12px; hight:30px;">
				<option value="">全部</option>
				<?php foreach($newsType as $val){ ?>
				<option value="<?php echo $val['ntid']; ?>" <?php if($ntid==$val['ntid']){ echo "selected"; } ?>><?php echo $val['ntName']; ?></option>
				<?php } ?>
			  </select>
				&nbsp;&nbsp;&nbsp;
				<span class="newfont06">搜索内容：</span>
				<input name="ntitle" type="text" value="<?php if($ntitle){ echo $ntitle; } ?>" style="width:200px;"/>&nbsp;&nbsp;
				<input name="Submit4" type="submit" class="right-button02" value="查 询" />
				</td>
			   <td width="380" align="left">
					<!--<a href="listGame.php"><input name="Submit3" type="button" class="right-button07" value="显示所有" /></a>
					<a href="listGame.php?isBanner=1"><input name="Submit3" type="button" class="right-button07" value="显示广告位" /></a>-->
			   </td>	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 
			 <tr>
               <td height="20">
	              <input type="button" class="right-button08" value="添加任务" onclick="link();"/>
				</td>
          	 </tr>
			 
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="9" align="center" style="font-size:16px">新闻资讯列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="5%" align="center" height="30">id</td>
                    <td width="50%" align="center">标题</td>
                    <td width="5%" align="center">类型</td>
					<td width="5%" align="center">状态</td>
					<td width="8%" align="center">操作</td>
                  </tr>
				  
				  <?php if($data){ foreach($data as $val){ ?>
                  <tr bgcolor="#FFFFFF">
				    <td align="center" height="25"><?php echo $val['nid']; ?></td>
                    <td align="left"><?php echo mb_substr($val['ntitle'],0,50,'utf8'); ?></td>
                    <td align="center"><?php echo $val['ntName'] ?></td>
                    <td align="center"><?php if($val['nstatus']==1){ echo "显示";}else{ echo "<font style='color:red'>隐藏</font>"; } ?></td>
                    <td align="center">
						<a href="index.php?app=manage&controller=news&action=editNews&nid=<?php echo $val['nid']; ?>">编辑</a>|
						<a onClick="return confirm('确定要删除?');" href="index.php?app=manage&controller=news&action=deleteNews&nid=<?php echo $val['nid']; ?>">删除</a>
					</td>
                  </tr>
				 <?php } } ?>
            </table></td>
        </tr>
      </table>
     </td>
  </tr>
</table>
<p style="width:100%; text-align:center; font-size:12px;"><?php echo $page; ?></p>
<div style="height:30px;"></div>
</form>
</body>
</html>