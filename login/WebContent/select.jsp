<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Properties"%>
<%@page import="com.zxz.bean.User"%>
 <%



 
 Connection conn=null;
 Statement stmt=null;
 ResultSet rs=null;
 List<User> list = new ArrayList<User>();
 try{
	
   Class.forName("com.mysql.jdbc.Driver") ;
   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zxz","root","") ; 
   
   String user = request.getParameter("user");

   stmt = conn.createStatement() ;
  
   rs = stmt.executeQuery("select username,password,email,birthday from users WHERE username = '"+user +"'") ;

   while(rs.next()){
	   User news= new User();
	   news.setUsername(rs.getString("username"));
	   news.setPassword(rs.getString("password"));
	   news.setEmail(rs.getString("email"));
	   news.setBirthday(rs.getDate("birthday"));
	   list.add(news);
   }
 }catch (Exception e) {
		e.printStackTrace();
		} 
 finally {
		if (rs != null){
			try {
				rs.close();
			} catch (Exception e) {
			
		}
		
		if (stmt != null){
			try {
				stmt.close();
			} catch (Exception e) {
			}
		}
		
		if (conn != null){
			try {
				conn.close();
			} catch (Exception e) {
			
			}
		}
	} 
 }
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-sclae=1.0">
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<title>用户查询</title>
</head>
<body>

	<div class="container">
	<h1 class="page-header">用户查询</h1>
	<div class="container">
		<form class="form-horizontal"  method="post">
		<fieldset>
			<legend>输入用户名</legend>
			<div class="control=group">
				<label class="control-label" for="payChannelOrderId">用户名</label>
				<div class="controls">
					<input name="user" type="text" >	
				</div>
			</div>
		</fieldset>
			<div class="form-actions">
				<button type="submit" class="btn btn-primary">查询</button>
	 		</div>
			</form>
	</div>		
			
	<table class="table .table table-striped .table-baordered .table-condensed">
			<tr>
				<td>username</td>
				<td>price</td>
				<td>email</td>
				<td>birthday</td>
			</tr>
	
	<%
		for	(User news : list){
	%>
		
			<tr>
				<td><%=news.getUsername()%></td>
				<td><%=news.getPassword()%></td>
				<td><%=news.getEmail()%></td>
				<td><%=news.getBirthday()%></td>
			</tr>
		
	
	<%
		}
	%>
	</table>
	</div>
	
</body>
</html>