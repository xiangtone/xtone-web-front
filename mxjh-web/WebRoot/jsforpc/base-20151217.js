// JavaScript Document
//棣栭〉鏂伴椈
$(function () {
        $(".newsTit ul li").each(function (i) {
            $(this).mouseover(function () {
				$(".newsTit ul li a").css({"color":"#b28b63"});
				$(".newsTit ul li a").eq(i).css({"color":"#ff4106"});							
                $(".newsList").hide();
                $(".newsList").eq(i).show();				
				$(".red").css("left",66 * i);				
            });
        });
});

//鑱屼笟鏉垮潡
$(function () {
        $(".zy_nav ul li").each(function (i) {
            $(this).click(function () {
				$(".zy_nav ul li").removeClass("on2");
				$(".zy_nav ul li").eq(i).addClass("on2");						
                $(".zy_con").hide();
                $(".zy_con").eq(i).show();				
            });
        });
});

//con3
$(function () {
        $(".con3_tit ul li").each(function (i) {
            $(this).mouseover(function () {
				$(".con3_tit ul li a").css({"color":"#b28b63","background-color":"inherit"});	
				$(".con3_tit ul li a").eq(i).css({"color":"#e1d0bf","background-color":"#800903"});						
                $(".con3_list").hide();
                $(".con3_list").eq(i).show();							
            });
        });
});

//鍐呴〉鍙虫诞鍔�
$(window).scroll(function() {		
		if($(window).scrollTop() >= 527){
			$('.fr').css({"position":"fixed","top":"0","margin-left":"307px"}); 
		}else{
            $('.fr').css({ "position": "absolute", "top": "0", "margin-left":"307px" });    
		}
});
$(function(){
	$('#goTop').click(function(){$('html,body').animate({scrollTop: '0px'}, 800);});
});

//鍒楄〃椤�
$(function () {
        $(".nNewsTit ul li").each(function (i) {
            $(this).mouseover(function () {
				//$(".nNewsTit ul li a").css({"color":"#333"});
				//$(".nNewsTit ul li a").eq(i).css({"color":"#920000"});							
                //$(".list").hide();
                //$(".list").eq(i).show();				
                //$(".red2").css("left",106 * i);	
                var tmpRed = $(".nNews_xian").children().eq(0);
                $(".nNews_xian").empty();
                $(".nNews_xian").append(tmpRed);
                $(".nNews_xian").append($(".red2").clone().css("left", 106 * i));
            });
            $(this).mouseout(function () {
                var tmpRed = $(".nNews_xian").children().eq(0);
                $(".nNews_xian").empty();
                $(".nNews_xian").append(tmpRed);
            });
        });
});

//鍥剧墖椤�
$(function () {
        $(".nPicTit ul li").each(function (i) {
            $(this).mouseover(function () {
				//$(".nPicTit ul li a").css({"color":"#333"});
				//$(".nPicTit ul li a").eq(i).css({"color":"#920000"});							
                //$(".picMain").hide();
                //$(".picMain").eq(i).show();				
                //$(".red3").css("left", 106 * i);
                var tmpRed = $(".nPic_xian").children().eq(0);
                $(".nPic_xian").empty();
                $(".nPic_xian").append(tmpRed);
                $(".nPic_xian").append($(".red3").clone().css("left", 106 * i));
            });
            $(this).mouseout(function () {
                var tmpRed = $(".nPic_xian").children().eq(0);
                $(".nPic_xian").empty();
                $(".nPic_xian").append(tmpRed);
            });
        });
});