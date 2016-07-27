
function getDatadl(){
	 var data = {
		     phoneNum : ($("#mobiledl").val()=="") ? null : $("#mobiledl").val(),
		     codeNum : ($("#codedl").val()=="") ? null : $("#codedl").val(),
		     invitePhoneNum : ($("#yqCode").val()=="") ? null : $("#yqCode").val()
		    		 
		    		 
 }
	 return data;
}
//function ajaxCommit(type,data,success,error){
//	 $.ajax({
//			type: "post",
//			contentType: "application/json;charset=utf-8",
//			url:"Gameorder?type="+type,
//	        async:true,
//	        data:JSON.stringify(data),
//	        dataType:"json",
//	        success:function(data){
//	        	
//	        	success(data);
//	        },
//	        error : function(data){
//	        	
//	        	error(data);
//	        }
//	 });
//}



function sentCodedl(){
	 var data = getDatadl();
ajaxCommit("1",data,function(data){
   mobilecode = data.mobilecode;
 
},function(data){

alert("网络错误")

});
 }




function commitdl(){


	
	if(!($("#codedl").val()==mobilecode)){
		alert("登录码错误")
		return ;
	}
	 var data = getDatadl();
	ajaxCommit("2",data,function(data){
		if(data.status=="error"){
			alert("请填入正确的邀请人手机号")
		}
		else{
		alert("登录成功")
		window.location.reload()
		$('#pop111').hide()
		}
	},function(data){
		
		
	});
	
	
		
	
 }