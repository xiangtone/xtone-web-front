<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script charset="gb2312" type="text/javascript" src="js/jquery(mixNIE).last.js"></script>
<title></title>
</head>
<body>
<script type="text/javascript">
	   var data = "mxkl"
	   var date = '{"starttime":"","endtime":"","appkey":"","channel":"","entries":""}';
	   var date2={test:"msg"};
           
			$.ajax({
				type : "post",
				url : "test.jsp",
				async : false,
				data :data,
				dataType : "json",
				success : function(msg) {
					alert(msg.msg)
			      		
					
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
				   alert(errorThrown)
					
				}
			});
			
		
		
	</script>
</body>
</html>