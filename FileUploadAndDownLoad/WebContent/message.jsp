<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Message Prompt</title>
</head>
<body>
	${message}
	<a href="upload.jsp">返回</a>
	<form action="${pageContext.request.contextPath}/ListFileServlet" enctype="multipart/form-data" method="post">
		<input type="submit" value="查看">	
	</form>
</body>
</html>