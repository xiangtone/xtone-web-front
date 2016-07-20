var mobilecode = "0";
function getData(){
	 var data = {
		     phoneNum : ($("#mobile").val()=="") ? null : $("#mobile").val(),
		     codeNum : ($("#code").val()=="") ? null : $("#code").val(),
		     invitePhoneNum : ($("#yqCode").val()=="") ? null : $("#yqCode").val()
		    		 
		    		 
 }
	 return data;
}
function ajaxCommit(type,data,success,error){
	 $.ajax({
			type: "post",
			contentType: "application/json;charset=utf-8",
			url:"Gameorder?type="+type,
	        async:true,
	        data:JSON.stringify(data),
	        dataType:"json",
	        success:function(data){
	        	
	        	success(data);
	        },
	        error : function(data){
	        	
	        	error(data);
	        }
	 });
}



function sentCode(){
	 var data = getData();
ajaxCommit("1",data,function(data){
   mobilecode = data.mobilecode;
 
},function(data){

alert("网络错误")

});
 }




function commit(){


	
	if(!($("#code").val()==mobilecode)){
		alert("短信验证码错误")
		return ;
	}
	 var data = getData();
	ajaxCommit("2",data,function(data){
		if(data.status=="error"){
			alert("请填入正确的邀请人手机号")
		}
		else{
		alert("成功预约")
		document.getElementById("pop1").style.display = 'none'
		}
	},function(data){
		
		
	});
	
	
		
	
 }