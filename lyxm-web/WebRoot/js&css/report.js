//add model cal
function getPhoneType() {
    var pattern_phone = new RegExp("iphone", "i");
    var pattern_android = new RegExp("android", "i");
    var userAgent = navigator.userAgent.toLowerCase();
    var isAndroid = pattern_android.test(userAgent);
    var isIphone = pattern_phone.test(userAgent);
    var phoneType = "phoneType";
    if (isAndroid) {
        var zh_cnIndex = userAgent.indexOf("-");
        var spaceIndex = userAgent.indexOf("build", zh_cnIndex + 4);
        var fullResult = userAgent.substring(zh_cnIndex, spaceIndex);
        phoneType = fullResult.split(";")[1];
    } else if (isIphone) {
        //6   w=375    6plus w=414   5s w=320     5 w=320
        var wigth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
        if (wigth > 400) {
            phoneType = "iphone6 plus";
        } else if (wigth > 370) {
            phoneType = "iphone6";
        } else if (wigth > 315) {
            phoneType = "iphone5 or iphone5s";
        } else {
            phoneType = "iphone 4s";
        }

    } else {
        phoneType = "other";
    }
    return phoneType;
}

function browserRedirect() {
    var sUserAgent = navigator.userAgent.toLowerCase();
    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
    var bIsAndroid = sUserAgent.match(/android/i) == "android";
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
    document.writeln("您的浏览设备为：");
    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
        return "mobile";
    } else {
        return "pc";
    }
 }

/*登录成功的地方加入上报
 * 参数：
 * uin：登录的账号信息
 * type:wx或者qq
 */
function reportInit(uin, type){
    var arrHost = window.location.host.split(".");
    var server = arrHost[0].toUpperCase();
    if (server == 'ES'){
        server = 'ESTARS';
    }
    var termial = "pc";
    var channel = window.location.href.split("\?")[0];

    var tmpArr = channel.split("/");
    var from = '';
    var len = tmpArr.length;
    if (len > 4){
        from = tmpArr[len-2];
    }else{
        from = 'website';
    }

    var param = "server="+server+"&termial="+termial+"&area="+type+"&uin="+uin+"&channel="+channel+"&from="+from;
    var request = "http://mapps.game.qq.com/lian/a20160315tc/report.php?"+param;
    FloadJS(request, null, null);
}

/*预约成功地方加入上报
* 参数：
* uin：登录的账号信息
* type:wx或者qq
* plat：选择的是哪个平台，0,1,2android或者ios
*/
function report(uin, type, plat){
    var arrHost = window.location.host.split(".");
    var server = arrHost[0].toUpperCase();
    if (server == 'ES'){
        server = 'ESTARS';
    }
    if (plat == 0){
        sPlat = 's_ios';
    }else if (plat == 1){
        sPlat = 's_android';
    }else{
        sPlat = 's_other';
    }

    var termial = "pc";
    var channel = window.location.href.split("\?")[0];
    var tmpArr = channel.split("/");
    var from = '';
    var len = tmpArr.length;
    if (len > 4){
        from = tmpArr[len-2];
    }else{
        from = 'website';
    }

    var param = "server="+server+"&termial="+termial+"&area="+type+"&uin="+uin+"&channel="+channel+"&from="+from+"&plat="+sPlat+"&success=1";
    var request1 = "http://mapps.game.qq.com/lian/a20160315tc/report.php?"+param;
    FloadJS(request1, null, null);
}/*  |xGv00|d4787f7a08e55e8a672086e5adfb4da6 */