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
    document.write("<div class=\"foot "+ cname +"\"><div class=\"container\"><div class=\"foot-cpright clear tool-tpline\"><div class=\"f-left foot-logos\"><a href=\"http:\/\/ieg.tencent.com\/\" title=\"��Ѷ��������\" class=\"foot-logos-game\" target=\"_blank\">��Ѷ��������<\/a><\/div><ul class=\"f-right foot-links\"><li><a target=\"_blank\" href=\"http:\/\/ieg.tencent.com\/\">��Ѷ��������<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/www.qq.com\/contract.shtml\">��������<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/adver.qq.com\/\">������<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/game.qq.com\/hr\/\">��Ѷ��Ϸ��Ƹ<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/service.qq.com\/\">��Ѷ��Ϸ�ͷ�<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/tgact.qq.com\/\">��Ϸ�<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/game.qq.com\/gnav\/\">��Ϸ��ͼ<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/game.qq.com\/portal2010\/business.htm\">�������<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/www.qq.com\/\">��Ѷ��<\/a> <span class=\"foot-sprt\">|<\/span> <a target=\"_blank\" href=\"http:\/\/www.qq.com\/map\/\">��վ����<\/a><\/li><li class=\"f-right\"><a target=\"_blank\" href=\"http:\/\/www.tencent.com\/law\/mo_law.shtml?\/law\/copyright.htm\">��Ѷ��˾��Ȩ����<\/a><\/li><li>COPYRIGHT &copy; 1998 - 2016 TENCENT. ALL RIGHTS RESERVED.<\/li><li>"+gameIcpHtml+"<a target=\"_blank\" href=\"http:\/\/www.qq.com\/culture.shtml\">������[2014]0633-233��<\/a><span class=\"foot-sprt\"> | <\/span><a target=\"_blank\" href=\"http:\/\/game.qq.com/culture2.htm\">�³���֤��������010��<\/a><\/li><\/ul><\/div><\/div><\/div>");
})();

function gdelayScript(url){var obj=document.createElement("script"),lnk="src",tp="text/javascript";obj.setAttribute(lnk,url);obj.setAttribute("type",tp);document.body.appendChild(obj);return obj;};
function gaddLoad(func){var old=window.onload;if(typeof window.onload!="function"){window.onload=func;}else{window.onload=function(){old();func();}}};
gaddLoad(function(){gdelayScript("http://ossweb-img.qq.com/images/js/dr/dr.js")})

/*  |xGv00|a654b5c7ae764ee933221d4d7c52f2f0 */