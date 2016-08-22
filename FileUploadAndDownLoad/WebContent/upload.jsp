<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<title>FileUpload</title>
</head>
<body>
	<div class="container">
	<h1 class="page-header">FileUpload</h1>
	
	<form class="form-horizontal" action="${pageContext.request.contextPath}/UploadHandleServlet" enctype="multipart/form-data" method="post">
		<fieldset>
			<legend>Upload</legend>
			<div class="control=group">
				<label class="control-label" for="username">上传用户</label>
				<div class="controls">
					<input id="username" name="username" type="text" >
				</div>
			</div>
			<div class="control=group">
				<label class="control-label" for="file1">上传文件1</label>
				<div class="controls">
					<input id="file1" type="file" name="file1">
				</div>
			</div>
			<div class="control=group">
				<label class="control-label" for="file2">上传文件2</label>
				<div class="controls">
					<input id="file2" type="file" name="file2">
				</div>
			</div>
		</fieldset>
	
		<div class="form-actions">
			<button type="submit" class="btn btn-primary">提交</button>
	 	</div>
 	</form>
  </div>
	
	
</body>
</html>