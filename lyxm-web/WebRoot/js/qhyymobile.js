var mobilecode = "19940514"; 
var valid;
var valid2
function getData(){
	 var data = {
		     phoneNum : ($("#mobile").val()=="") ? null : $("#mobile").val(),
		     codeNum : ($("#code").val()=="") ? null : $("#code").val(),
		     invitePhoneNum : ($("#yqCode").val()=="") ? null : $("#yqCode").val()
		    		 
		    		 
 }
	 return data;
}
function ajaxCommit(type,data,success,error,svl){
	 $.ajax({
			type: "post",
			contentType: "application/json;charset=utf-8",
			url:svl+"?type="+type,
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
	 var code = data.mobilecode;
	   if(code==500){
		alert('该手机号已经预约过无需再次预约,可通过点击右上角的登录按钮登录账号领取礼包')   
		clearInterval(valid2);
	$("#yzms").html('发送登录码');
	$("#yzms").css("background","#ffd244");
    $("#yzms").attr("disabled", false);
    showDialog.hide()
	   }else{
	   mobilecode = code;
	   }
//   alert(mobilecode)
 
},function(data){

alert("网络错误")

},'Gameorder');
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
//		alert("成功预约")
//	window.location.reload()
			
			document.location.href = 'share.jsp';
		
		}
	},function(data){
		alert(data.status)
		
	},'Gameorder');
 }

function giftAjaxCommit(giftNum){ 
	 $.ajax({
			type: "post",
			contentType: "application/json;charset=utf-8",
			url:"Present?giftNum="+giftNum,
	        async:true,
	        data:JSON.stringify({'a':'b'}),
	        dataType:"json",
	        success:function(data){
	        	if(data.code!=null){
	        		document.getElementById('kong').style.height='30px'
	        		document.getElementById('uplbneirong').style.height=''
//	        		document.getElementById('lbneirong').style.textAlign=''	
//	        		document.getElementById('lbneirong').style.marginLeft='50px'
	        		$('#lbneirong').text("");
	        		$('#lbneirong').append("恭喜您，成功领取礼包！兑换码：<span style=\"color:red;\">"+data.code+"</span></br>"+
	        				"请登录游戏输入兑换码兑换礼包，该礼包游戏内均可使用，限兑换1次。</br>"+
	        				"邀请好友抢号预约，还能获得豪华礼包哦！</br>"+
	        				"<div style=\"height:30px;\"></div>"
	        				
	        		);
	        		TGDialogS("qxyy");
	        	}
	        	if(data.status=='none'){
	        		TGDialogS("qxyy");
	        	}
	        	if(data.status=='cant'){
	        		document.getElementById('uplbneirong').style.height='108px'
	        			document.getElementById('lbneirong').style.textAlign='center'	
	        		$('#lbneirong').text("");
	        		$('#lbneirong').append(
	        			 "<span style=\"color:red;\" font-family:'微软雅黑';>您暂未达到领取条件!!!<span>"
	        		);
	        		TGDialogS("qxyy");
	        	}
	        },
	        error : function(data){
	        	alert(data.status)
	        }
	 });
}
//var container2dl = document.getElementById("vCode2dl");
//var code2dl = new vCode(container2dl, {
//    len: 6,
//    bgColor: "#444444",
//    colors: [
//        "#DDDDDD",
//        "#DDFF77",
//        "#77DDFF",
//        "#99BBFF",
//        "#7700BB",
//        "#EEEE00"
//    ]
//});
//document.getElementById("yySubmitdl").addEventListener("click", function () {  
//	var sMobile = document.all("mobiledl").value; 
//	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
//		if(code2dl.verify(document.getElementById("code2dl").value)){  
//			code2dl.update.call(code2dl);
//			commitdl();
//			
//		}else{
//			alert("图片验证码错误")
//		}
//		}
//} );
//document.getElementById("yzmsdl").addEventListener("click", function () {
//	var waitTime = 60;
//	    var dj = null;
//	    var flag = true;
//	    //发送验证码倒计时
//	var sMobile = document.all("mobiledl").value;
//	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
////		if(code2.verify(document.getElementById("code2").value)){
////			
//		sentCodedl();
//
//		$("#yzmsdl").html('还剩' + 60 + '秒'+'可重新发送');
//          $("#yzmsdl").css("background","#D3D3D3");
//          $("#yzmsdl").attr("disabled", "disabled");
//			 valid = setInterval(function daojishi(){
//				if(waitTime == 0){
//		            flag = true;
//		            
//		            $("#yzmsdl").html('重新发送');
//		            clearInterval(valid);
//		            waitTime = 60;
//		            $("#yzmsdl").css("background","#ffd244");
//		            $("#yzmsdl").attr("disabled", false);
//		        } else {
//		            waitTime--;
//		            flag = false;
//		            $("#yzmsdl").html('还剩' + waitTime + '秒'+'可重新发送');
//		            $("#yzmsdl").css("background","#D3D3D3");
//		            $("#yzmsdl").attr("disabled", "disabled");
//		        } },1000);
			 
			  	   
//		} else{
//			alert("验证码错误");
//			
//		}
		
//	}
//	else{
//		alert("请输入正确手机号");
//		
//	}
//	
//   
//});
//      var container2 = document.getElementById("vCode2");
//      var code2 = new vCode(container2, {
//          len: 6,
//          bgColor: "#444444",
//          colors: [
//              "#DDDDDD",
//              "#DDFF77",
//              "#77DDFF",
//              "#99BBFF",
//              "#7700BB",
//              "#EEEE00"
//          ]
//      });
      document.getElementById("yySubmit").addEventListener("click", function () {
      	var sMobile = document.all("mobile").value;
      	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
      		if(code2.verify(document.getElementById("code2").value)){
      			code2.update.call(code2);
      			commit();
      			
      		}else{
      			alert("图片验证码错误")
      		}
      		}
      } );
      
      
      document.getElementById("yzms").addEventListener("click", function () {
      	var waitTime = 60;
		    var dj = null;
		    var flag = true;
		    //发送验证码倒计时
      	var sMobile = document.all("mobile").value;
      	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
//      		if(code2.verify(document.getElementById("code2").value)){
//      			
      		$("#yzms").html('还剩' + 60 + '秒'); 
	            $("#yzms").css("background","#D3D3D3");
	            $("#yzms").attr("disabled", "disabled");
      			 valid2 = setInterval(function daojishi(){
      				if(waitTime == 0){
			            flag = true;
			            $("#yzms").html('重新发送');
			            clearInterval(valid2);
			            waitTime = 60;
			            $("#yzms").css("background","#ffd244");
			            $("#yzms").attr("disabled", false);
			        } else {
			            waitTime--;
			            flag = false;
			            $("#yzms").html('还剩' + waitTime + '秒');
			            $("#yzms").css("background","#D3D3D3");
			            $("#yzms").attr("disabled", "disabled");
			        } },1000);
      			 
      			 sentCode(); 	   
//      		} else{
//      			alert("验证码错误");
//      			
//      		}
      		
      	}
      	else{
      		alert("请输入正确手机号");
      		
      	}
      	
         
      });
//      function getDatadl(){
//    		 var data = {
//    			     phoneNum : ($("#mobiledl").val()=="") ? null : $("#mobiledl").val(),
//    			     codeNum : ($("#codedl").val()=="") ? null : $("#codedl").val(),
//    			     invitePhoneNum : ($("#yqCode").val()=="") ? null : $("#yqCode").val()
//    			    		 
//    			    		 
//    	 }
//    		 return data;
//    	}
    	//function ajaxCommit(type,data,success,error){
//    		 $.ajax({
//    				type: "post",
//    				contentType: "application/json;charset=utf-8",
//    				url:"Gameorder?type="+type,
//    		        async:true,
//    		        data:JSON.stringify(data),
//    		        dataType:"json",
//    		        success:function(data){
//    		        	
//    		        	success(data);
//    		        },
//    		        error : function(data){
//    		        	
//    		        	error(data);
//    		        }
//    		 });
    	//}



//    	function sentCodedl(){
//    		
//    		 var data = getDatadl();
//    	ajaxCommit("1",data,function(data){
//    	   if(data.status=='error'){
//    		   alert('该账号未预约或未预约成功')
//    		   clearInterval(valid);
//    		   $("#yzmsdl").html('发送登录码');
//	            $("#yzmsdl").css("background","#ffd244");
//	            $("#yzmsdl").attr("disabled", false);
//    	   }
//    	 
//    	},function(data){
//
//    	alert("网络错误")
//
//    	},'Login');
//    	 
//    	}




//    	function commitdl(){
//
//
//    		 var data = getDatadl();
//    		ajaxCommit("2",data,function(data){
//    			if(data.status=="error"){
//    				alert("手机未预约或登录码错误")
//    			}
//    			else{
//    			alert("登录成功")
//    			window.location.reload()
//    			$('#pop111').hide()
//    			}
//    		},function(data){
//    			
//    			
//    		},'Login');
//    		
//    		
//    			
//    		
//    	 }
      function giftAjaxCommit(giftNum){ 
    		 $.ajax({
    				type: "post",
    				contentType: "application/json;charset=utf-8",
    				url:"Present?giftNum="+giftNum,
    		        async:true,
    		        data:JSON.stringify({'a':'b'}),
    		        dataType:"json",
    		        success:function(data){
    		        	if(data.code!=null){
    		        		document.getElementById('kong').style.height='30px'
    		        		document.getElementById('uplbneirong').style.height=''
//    		        		document.getElementById('lbneirong').style.textAlign=''	
//    		        		document.getElementById('lbneirong').style.marginLeft='50px'
    		        		$('#lbneirong').text("");
    		        		$('#lbneirong').append("恭喜您，成功领取礼包！兑换码：<span style=\"color:red;\">"+data.code+"</span></br>"+
    		        				"请登录游戏输入兑换码兑换礼包，该礼包游戏内均可使用，限兑换1次。</br>"+
    		        				"邀请好友抢号预约，还能获得豪华礼包哦！</br>"+
    		        				"<div style=\"height:30px;\"></div>"
    		        				
    		        		);
    		        		TGDialogS("qxyy");
    		        	}
    		        	if(data.status=='none'){
    		        		TGDialogS("qxyy");
    		        	}
    		        	if(data.status=='cant'){
    		        		document.getElementById('uplbneirong').style.height='108px'
    		        			document.getElementById('lbneirong').style.textAlign='center'	
    		        		$('#lbneirong').text("");
    		        		$('#lbneirong').append(
    		        			 "<span style=\"color:red;\" font-family:'微软雅黑';>您暂未达到领取条件!!!<span>"
    		        		);
    		        		TGDialogS("qxyy");
    		        	}
    		        },
    		        error : function(data){
    		        	alert(data.status)
    		        }
    		 });
    	}
function fuzhi(){
	  var i = 0 ;     
		 
	  var contat = document.getElementById("cpcode").innerHTML;
	  window.clipboardData.setData('text', contat);      
	  if(window.clipboardData.getData('text')==''){        
		  if(i==1){          alert("复制失败，请手动Ctrl+C快捷键复制！");
		  }else{          
			  alert("复制失败，请重新复制！");          i = 1;        
			  }     
		  }else{         alert("内容已经复制到剪贴板！");     
		  }    
	    
	 
	
}
var container2dl = document.getElementById("vCode2dl");
var code2dl = new vCode(container2dl, {
    len: 6,
    bgColor: "#444444",
    colors: [
        "#DDDDDD",
        "#DDFF77",
        "#77DDFF",
        "#99BBFF",
        "#7700BB",
        "#EEEE00"
    ]
});
document.getElementById("yySubmitdl").addEventListener("click", function () {  
	var sMobile = document.all("mobiledl").value; 
	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
		if(code2dl.verify(document.getElementById("code2dl").value)){  
			code2dl.update.call(code2dl);
			commitdl();
			
		}else{
			alert("图片验证码错误")
		}
		}else{alert('请输入正确的手机号')}
} );
document.getElementById("yzmsdl").addEventListener("click", function () {
	var waitTime = 60;
	    var dj = null;
	    var flag = true;
	    //发送验证码倒计时
	var sMobile = document.all("mobiledl").value;
	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
//		if(code2.verify(document.getElementById("code2").value)){
//			
		sentCodedl();

		$("#yzmsdl").html('还剩' + 60 + '秒');
          $("#yzmsdl").css("background","#D3D3D3");
          $("#yzmsdl").attr("disabled", "disabled");
			 valid = setInterval(function daojishi(){
				if(waitTime == 0){
		            flag = true;
		            
		            $("#yzmsdl").html('重新发送');
		            clearInterval(valid);
		            waitTime = 60;
		            $("#yzmsdl").css("background","#ffd244");
		            $("#yzmsdl").attr("disabled", false);
		        } else {
		            waitTime--;
		            flag = false;
		            $("#yzmsdl").html('还剩' + waitTime + '秒');
		            $("#yzmsdl").css("background","#D3D3D3");
		            $("#yzmsdl").attr("disabled", "disabled");
		        } },1000);
			 
			  	   
//		} else{
//			alert("验证码错误");
//			
//		}
		
	}
	else{
		alert("请输入正确手机号");
		
	}
	
   
});

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
  if(data.status=='error'){
	   alert('该账号未预约或未预约成功')
	   clearInterval(valid);
	   $("#yzmsdl").html('发送登录码');
       $("#yzmsdl").css("background","#ffd244");
       $("#yzmsdl").attr("disabled", false);
  }

},function(data){

alert("网络错误")

},'Login');

}




function commitdl(){


	 var data = getDatadl();
	ajaxCommit("2",data,function(data){
		if(data.status=="error"){
			alert("手机未预约或登录码错误")
		}
		else{
		alert("登录成功")
		window.location.reload()
		$('#pop111').hide()
		}
	},function(data){
		alert('格式错误')
		
	},'Login');
	
	
		
	
}