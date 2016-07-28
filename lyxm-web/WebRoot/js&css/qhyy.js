var mobilecode = "19940514";
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
//		alert("成功预约")
//	window.location.reload()
				document.getElementById('kong').style.height='30px'
	        		document.getElementById('uplbneirong').style.height=''
	        		document.getElementById('lbneirong').style.textAlign=''	
	        		document.getElementById('lbneirong').style.marginLeft='50px'
	        		$('#lbneirong').text("");
	        		$('#lbneirong').append("恭喜您，</br>您已成功预约《灵域仙魔》！</br></br>您的邀请码是：<span id=\"cpcode\" style=\"color:red;\">"+getData().phoneNum+"</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img id=\"fuzhianniu\" src=\"images\\fuzhianniu.png\"></img></br></br>"+
	        				"快将邀请码告知您的好友，好友预约成功您可获得惊喜宝箱哦</br>"+
	        				"方法1：复制邀请码，好友预约时填写</br>"+
	        				"方法2：用微信或手机QQ扫描下方二维码邀请好友。</br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img style=\"align:center;text-align:center;vertical-align:middle;\"  src=\"images\\erweima2.png\"></img>"+
	        				"<div style=\"height:30px;\"></div>"
	        				
	        		);
	        		TGDialogS("qxyy");
	        	
		
		}
	},function(data){
		
		
	});
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
	        		$('#lbneirong').append("恭喜您，成功领取礼包！兑换码：<span id=\"cpcode\" style=\"color:red;\">"+data.code+"</span></br>"+
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

document.getElementById("fuzhianniu").addEventListener("click", function () {
	var clip = new ZeroClipboard.Client();
	  clip.setHandCursor( true );
	    clip.setText(document.getElementById('cpcode').value);
}

);