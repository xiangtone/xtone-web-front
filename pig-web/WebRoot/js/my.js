function clicknum(){
	 var data = "mxkl"
				$.ajax({
					type : "post",
					url : "Servlet.jsp",
					async : false,
					data :data,
					dataType : "text",
					success : function(msg) {
						
				      		
						
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
					
						
					}
				});
}