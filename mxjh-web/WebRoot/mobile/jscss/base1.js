;(function($){

	// 新闻切换
	function clickChange(obj, item){
        var obj = $(obj),
            lis = $(item),
            Ncur = 0;

        obj.bind("touchstart", function(){
            
            var index = $(this).index();

            if(index == Ncur){
                return;
            }

            $(this).addClass("active").siblings().removeClass("active");
            lis.eq(index).addClass("active").siblings().removeClass("active");
            
            Ncur = index;

        });
    }

    clickChange(".change-latest .ln-nav li", ".change-latest .ln-con .ln-item");
    clickChange(".change-play .ln-nav li", ".change-play .ln-con .ln-item");
    clickChange(".list .ln-nav li", ".list .ln-con .ln-item");
    clickChange(".job-nav span", ".job-item");


    /******wx关注 dialog******/ 
    $(".wx").bind("touchstart", function(){
        $(".dialog").show();
        $(".dialog-in").css("top", $(window).scrollTop() / window.SCALE);

    });

    $(".close").click(function(){
        $(".dialog").hide();
    });

})(Zepto);