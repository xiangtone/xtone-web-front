
$(function(){
	$.fn.shadwNum = function(op) {  
		var defaults = {
				hasTxt:true,
				hasNum:true,
				adGshow:".shadowScroll_photo a",
				adGcontrol:".shadowScroll_control a",
				currentClass: "on",
				waitSpeed:2000,
				speed:800,
				showIndex: 0
		}
		var op = jQuery.extend(defaults, op);
		var adGshowDom = $(this).find(op.adGshow);
		adGbox = $(this);
				
		//����ʾ��ͼƬ����ͳһ��ʽ
		adGshowDom.css({
			zIndex:10,
			opacity:0
		}).eq(op.showIndex).css({
			zIndex:11,
			opacity:1
		});


		var str = "";
		for(var i =0; i<adGshowDom.length;i++){
			var oIntro = '';
			var oNum = '';
			if(op.hasTxt){
				oIntro = adGshowDom.eq(i).attr("alt");
			}else if(op.hasNum){
				str += "<a id='ctrl_ad"+(i +1)+"' href='#'>"+ (i +1) +""+oIntro+"</a>";
			}else {
				str += "<a id='ctrl_ad"+(i +1)+"' href='#'>&nbsp;"+oIntro+"</a>";
			}
		}

			adGbox.append("<div class='shadowScroll_control'>"+ str +"</div><div class='clear'></div>").find(".control a");
		

		var adGcontrolDom = $(this).find(op.adGcontrol);
		
		//�������ְ�ť hover����
		adGcontrolDom.eq(op.showIndex).addClass(op.currentClass);

		adGcontrolDom.hover(function(){
			$(this).addClass(op.currentClass).siblings().removeClass(op.currentClass);
			op.showIndex = $(this).index();
			adGshowDom.eq(op.showIndex).stop().fadeTo(op.speed,1).css("zIndex",11).siblings().stop().fadeTo(op.speed,0).css("zIndex",10);
		})
		adGbox.hover (
			function () {
				clearInterval (timer);
			},
			function(){
				timer = setInterval(autoScroll, op.waitSpeed)
			}
		);
		
		//�Զ����ŵķ���
		function autoScroll () {
			op.showIndex = (op.showIndex + 1) % adGshowDom.length;
			adGcontrolDom.eq(op.showIndex).hover();
		}
		var timer = setInterval(autoScroll, op.waitSpeed)
	}
	
});


(function($) {
		$.fn.videoTab = function(options) {
			var defaults = {
				hasVideo:true,
				currentClass:"current",
				defaultNav:".mainTabNav",
				videoBox:".videoBox",
				defaultCon:".mainTabCon"
			}
			var options = $.extend(defaults,options)
			var defaultNavDom = $(options.defaultNav).find("a")
			var defaultConDom = $(options.defaultCon)
			var videoBoxDom = $(options.videoBox)
			
			if(options.hasVideo) {//��videoʱҳǩ
				$(this).click(function() {
					this.myRel = this.rel;   
					var videoShow = ""+ this.myRel +""; //���� div Ԫ��
					if(defaultConDom.css("display","block")) {
						defaultConDom.hide()
						defaultNavDom.removeClass("current")
						$(this).addClass("current")
						videoBoxDom.empty()
						videoBoxDom.append(videoShow).css("display","block");    //����׷�ӵ��ĵ���
					}
						return false
				})	
			}else {//������ҳǩ
				$(this).hover(function() {					
					if(!$(this).hasClass(options.currentClass)) {
							defaultNavDom.removeClass(options.currentClass)
							$(this).addClass(options.currentClass)
	
							defaultConDom.hide();	
							videoBoxDom.hide().css("display","none");	
							$($(this).attr("hreflang")).fadeIn();
					}
						return false;
				})
				$(this).click(function() { return false})
			}	
			
		}
})(jQuery);




(function($) {
	$.fn.LoadPop = function (url,popcont,ajaxcont,Closenav,Closenav2,Popcover,options) {
		
		var _Popcont =$(document).find(popcont)
		var _Ajaxcont =$(document).find(ajaxcont)
		var _close = $(document).find(Closenav);
		var _close_wx = $(document).find(Closenav2);
		var maskheight = $(document).height()
		var maskwidth = $(window).width();//���� ������ֹ�����
		var _Popcover = $(document).find(Popcover)
		
		$(this).click (function() {
			var _url = $(this).attr(url)
			
			if(_url !="#") {
				_Ajaxcont.empty();
				_Ajaxcont.load(_url);
			}else {
				_Ajaxcont.html("no data!")
			}
			_Popcont.fadeTo("fast",1);
			_Popcover.css({height:maskheight,width:maskwidth}).fadeTo("fast",0.7);
			
			//ҳ���������
			//var $body = (window.opera)?(document.compatMode == "CSS1Compat"?$('html'):$('body')):$('html,body');
				//$body.animate({scrollTop: 0}, 600);	
			
			return false
		})
		
		
		//����رյ���
		_close.click (function () {	
			_Ajaxcont.empty();
			_Popcont.css("display","none")
			_Popcover.css("display","none")
		});
		_close_wx.click (function () {	
			_Ajaxcont.empty();
			_Popcont.css("display","none")
			_Popcover.css("display","none")
		});	
		_Popcover.click (function () {
			_Ajaxcont.empty();
			_Popcont.css("display","none")
			_Popcover.css("display","none")
		});	
	}
})(jQuery);



$(function(){

	$("a.popcl").LoadPop("href","#alertBox","#ajaxCon",".close",".close_wx","#dialog-overlay");
	

})
// ����
function popup(message) {
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();
	var dialogTop =  ($(document).scrollTop() + (($(window).height() - $('#showGift_' + message).height()) / 2))>>0;
	var dialogLeft = (maskWidth/2) - ($('#showGift_' + message).width()/2);
	$('#overlay').css({height:maskHeight, width:maskWidth}).fadeTo("fast",0.7);
	$('#showGift_' + message).css('top', dialogTop).fadeTo("slow",1);
}
function closepop() {
	$('#overlay, #showGift_1, #showGift_2, #showGift_3, #showGift_4, #showGift_5, #showGift_6, #showGift_7, #showGift_8').fadeOut(300);
}
$('a.close').click(function (){closepop()});
$('a.close_wx').click(function (){closepop()});
$('#overlay').click(function (){closepop()});
