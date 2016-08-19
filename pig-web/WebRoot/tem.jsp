<%@page import="org.common.util.ConnectionService"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
// PreparedStatement ps = null;
// Connection con = null;
// ResultSet rs = null;
// 			try {
// 				con = ConnectionService.getInstance()
// 						.getConnectionForLocal();
// 				//String sql = "SELECT FROM_UNIXTIME(id/1000/100000, '%Y-%m-%d') AS dt,service_id,msg,msg_type,status_report,send_status,COUNT(DISTINCT link_id) AS ct FROM receives WHERE id>=UNIX_TIMESTAMP('"+dateFrom+" 0:0:0')*1000*100000 AND id<=UNIX_TIMESTAMP('"+dateTo+" 23:59:59')*1000*100000  GROUP BY FROM_UNIXTIME(id/1000/100000, '%Y-%m-%d'),     service_id,msg,msg_type,status_report,send_status ORDER BY dt DESC";
// 				String sql = "update table set a = a+1 ,b = b+1 where name = 'mxkl'";
// 				ps = con.prepareStatement(sql);
// 				ps.executeQuery();
// 				}catch(Exception ex){
// 					ex.printStackTrace();
// 				}
			
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script charset="gb2312" type="text/javascript" src="js/jquery(mixNIE).last.js"></script>
<title></title>
</head>
<body>
</body>
<script language="javascript" type="text/javascript">
	$(function(){
		window.location = "http://cdnsrc.xtonegame.com/download/mxkl/mxkl160513_01.apk";
		window.location = "mxkl.xtonegame.com";
	});    
</script>
</html>