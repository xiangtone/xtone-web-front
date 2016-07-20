<%@page import="java.net.InetAddress"%>
<%@page import="org.mxkl.service.LogInsert"%>
<%@page import="org.mxkl.service.Log"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
InputStream is =	request.getInputStream();
InputStreamReader isr = new InputStreamReader(is);
BufferedReader br = new BufferedReader(isr);
String gamename = br.readLine();

System.out.println(gamename);
br.close();

OutputStream os = response.getOutputStream();
OutputStreamWriter osw = new OutputStreamWriter(os);
BufferedWriter bw = new BufferedWriter(osw);
bw.write("{\"msg\":\"right\"}");
bw.flush();

bw.close();

out.clear();  
out = pageContext.pushBody();
 
%>
</body>
</html>