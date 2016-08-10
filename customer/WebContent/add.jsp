<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width,initial-sclae=1.0">
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/Birthday-Calendar.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#t1{
	width: 900px;
}
</style>
</head>

<body>

	
	<h1 aling="center">添加客户信息</h1>
	<hr>
	
	<form align="center" action="${pageContext.request.contextPath }/Controller?op=add" method="post">
		
		<table id="t1" align="center">
			<tr>
				<td align="right" width = "40%">姓名:</td>
				<td align="left"><input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td align="right" width = "40%">性别:</td>
				<td align="left"><input type="radio" name="gender" value="1"
					checked>男<input type="radio" name="gender" value="0">女</td>
			</tr>
			<tr>
				<td align="right" width = "40%">生日:</td>
				<td align="left"><input type="text" name="birthday"
					onfocus="new Calendar().show(this)" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td align="right" width = "40%">电话:</td>
				<td align="left"><input type="text" name="cellphone">
				</td>
			</tr>
			<tr>
				<td align="right" width = "40%">邮箱:</td>
				<td align="left"><input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td align="right" width = "40%">爱好:</td>
				<td align="left"><input type="checkbox" name="hobby"
					value="吃饭">吃饭 <input type="checkbox" name="hobby"
					value="睡觉">睡觉 <input type="checkbox" name="hobby"
					value="学java">学Java</td>
			</tr>
			<tr>
				<td align="right" width = "40%">类型:</td>
				<td align="left"><input type="radio" name="type" value="vip"
					checked>贵宾 <input type="radio" name="type" value="common">普通用户
				</td>
			</tr>
			<tr>
				<td align="right" width = "40%">描述:</td>
				<td align="left"><textarea rows="5" cols="20"
						name="description">大神留点脚印吧!!!</textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="添加">
				</td>
			</tr>
		</table>
	</form>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/jquery.min.js" type="text/javascript"></script>
</body>
</html>
