(function(){
    var gfooter = document.getElementById("gfooter");
    var _url = gfooter.src.split("?t=");
    var cname="foot-light";
    if(_url.length>1){
        cname = _url[1].replace(/([.*+?^=!:${}()#|[\]/\\])/g, '');
        if(cname==1){cname="foot-light"}
        if(cname==2){cname="foot-dark"}
    }
    var gameIcpUrl = gfooter.getAttribute('data-gameicpurl'),
        gameIcpNumber = gfooter.getAttribute('data-gameicpnumber'),
        gameIcpHtml = "";
    if(gameIcpNumber){
        var img='<img src="http://ossweb-img.qq.com/images/sy/template2014/js/icplogo.png" width="13" height="15" style="vertical-align:middle;margin-right:3px;display:inline !important;">';
        gameIcpHtml = "<a target=\"_blank\" href=\""+gameIcpUrl+"\">"+img+gameIcpNumber+"</a><span class=\"foot-sprt\"> | </span>"
    }
    document.write("<div class=\"foot "+ cname +"\"><div class=\"container\"><div class=\"foot-cpright clear tool-tpline\"><div class=\"f-left foot-logos\"><a href=\"http:\/\/ieg.tencent.com\/\" title=\"腾讯互动娱乐\" class=\"foot-logos-game\" target=\"_blank\">腾讯互动娱乐<\/a><\/div><ul class=\"f-right foot-links\"><li><a target=\"_blank\" href=\"http:\/\/ieg.tencent.com\/\">腾讯互动娱乐<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/www.qq.com\/contract.shtml\">服务条款<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/adver.qq.com\/\">广告服务<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/game.qq.com\/hr\/\">腾讯游戏招聘<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/service.qq.com\/\">腾讯游戏客服<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/tgact.qq.com\/\">游戏活动<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/game.qq.com\/gnav\/\">游戏地图<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/game.qq.com\/portal2010\/business.htm\">商务合作<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/www.qq.com\/\">腾讯网<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/www.qq.com\/map\/\">网站导航<\/a><\/li><li class=\"f-right\"><a target=\"_blank\" href=\"http:\/\/www.tencent.com\/law\/mo_law.shtml?\/law\/copyright.htm\">腾讯公司版权所有<\/a><\/li><li>COPYRIGHT &copy; 1998 - 2016 TENCENT. ALL RIGHTS RESERVED.<\/li><li>"+gameIcpHtml+"<a target=\"_blank\" href=\"http:\/\/www.qq.com\/culture.shtml\">粤网文[2014]0633-233号<\/a><span class=\"foot-sprt\"> | <\/span><a target=\"_blank\" href=\"http:\/\/game.qq.com/culture2.htm\">新出网证（粤）字010号<\/a><\/li><\/ul><\/div><\/div><\/div>");
})();

function gdelayScript(url){var obj=document.createElement("script"),lnk="src",tp="text/javascript";obj.setAttribute(lnk,url);obj.setAttribute("type",tp);document.body.appendChild(obj);return obj;};
function gaddLoad(func){var old=window.onload;if(typeof window.onload!="function"){window.onload=func;}else{window.onload=function(){old();func();}}};
gaddLoad(function(){gdelayScript("http://ossweb-img.qq.com/images/js/dr/dr.js")})

/*  |xGv00|a654b5c7ae764ee933221d4d7c52f2f0 */