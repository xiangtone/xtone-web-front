<%@page import="org.mxkl.info.Message"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="org.mxkl.util.HttpsRequest"%>
<%@page import="org.mxkl.dao.WinXinDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");
System.out.println(code);
	HttpsRequest req = new HttpsRequest();
	String resours = (String)req.sendGet("https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx26d9b9ff5f0fc4ed&secret=8b1de189eefa9c0d78c1a847122eaf38&code="+code+"&grant_type=authorization_code");
	Gson gson = new Gson();
	Message msg = gson.fromJson(resours, Message.class);
	String openid = msg.getOpenid();
	WinXinDAO dao = new WinXinDAO();
	String token = dao.getAccess_tonken("");
	resours = (String)req.sendGet("https://api.weixin.qq.com/cgi-bin/user/info?access_token="+token+"&openid="+openid);
	
%>