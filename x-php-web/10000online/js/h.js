(function(){var h={},mt={},c={id:"269a9dbb19b027f2039ac8601dd97088",dm:["cmge.com"],js:"tongji.baidu.com/hm-web/js/",etrk:[],icon:'/hmt/icon/21|gif|20|20',ctrk:false,align:-1,nv:-1,vdur:1800000,age:31536000000,rec:0,rp:[],trust:0,vcard:0,qiao:0,lxb:0,conv:0,apps:''};var p=!0,q=null,s=!1;mt.h={};mt.h.xa=/msie (\d+\.\d+)/i.test(navigator.userAgent);mt.h.cookieEnabled=navigator.cookieEnabled;mt.h.javaEnabled=navigator.javaEnabled();mt.h.language=navigator.language||navigator.browserLanguage||navigator.systemLanguage||navigator.userLanguage||"";mt.h.la=(window.screen.width||0)+"x"+(window.screen.height||0);mt.h.colorDepth=window.screen.colorDepth||0;mt.cookie={};
mt.cookie.set=function(a,e,g){var d;g.B&&(d=new Date,d.setTime(d.getTime()+g.B));document.cookie=a+"="+e+(g.domain?"; domain="+g.domain:"")+(g.path?"; path="+g.path:"")+(d?"; expires="+d.toGMTString():"")+(g.Ba?"; secure":"")};mt.cookie.get=function(a){return(a=RegExp("(^| )"+a+"=([^;]*)(;|$)").exec(document.cookie))?a[2]:q};mt.event={};mt.event.d=function(a,e,g){a.attachEvent?a.attachEvent("on"+e,function(d){g.call(a,d)}):a.addEventListener&&a.addEventListener(e,g,s)};
mt.event.preventDefault=function(a){a.preventDefault?a.preventDefault():a.returnValue=s};mt.m={};mt.m.parse=function(){return(new Function('return (" + source + ")'))()};
mt.m.stringify=function(){function a(a){/["\\\x00-\x1f]/.test(a)&&(a=a.replace(/["\\\x00-\x1f]/g,function(a){var d=g[a];if(d)return d;d=a.charCodeAt();return"\\u00"+Math.floor(d/16).toString(16)+(d%16).toString(16)}));return'"'+a+'"'}function e(a){return 10>a?"0"+a:a}var g={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};return function(d){switch(typeof d){case "undefined":return"undefined";case "number":return isFinite(d)?String(d):"null";case "string":return a(d);case "boolean":return String(d);
default:if(d===q)return"null";if(d instanceof Array){var g=["["],m=d.length,n,f,b;for(f=0;f<m;f++)switch(b=d[f],typeof b){case "undefined":case "function":case "unknown":break;default:n&&g.push(","),g.push(mt.m.stringify(b)),n=1}g.push("]");return g.join("")}if(d instanceof Date)return'"'+d.getFullYear()+"-"+e(d.getMonth()+1)+"-"+e(d.getDate())+"T"+e(d.getHours())+":"+e(d.getMinutes())+":"+e(d.getSeconds())+'"';n=["{"];f=mt.m.stringify;for(m in d)if(Object.prototype.hasOwnProperty.call(d,m))switch(b=
d[m],typeof b){case "undefined":case "unknown":case "function":break;default:g&&n.push(","),g=1,n.push(f(m)+":"+f(b))}n.push("}");return n.join("")}}}();mt.lang={};mt.lang.e=function(a,e){return"[object "+e+"]"==={}.toString.call(a)};mt.lang.ya=function(a){return mt.lang.e(a,"Number")&&isFinite(a)};mt.lang.Aa=function(a){return mt.lang.e(a,"String")};mt.localStorage={};
mt.localStorage.w=function(){if(!mt.localStorage.f)try{mt.localStorage.f=document.createElement("input"),mt.localStorage.f.type="hidden",mt.localStorage.f.style.display="none",mt.localStorage.f.addBehavior("#default#userData"),document.getElementsByTagName("head")[0].appendChild(mt.localStorage.f)}catch(a){return s}return p};
mt.localStorage.set=function(a,e,g){var d=new Date;d.setTime(d.getTime()+g||31536E6);try{window.localStorage?(e=d.getTime()+"|"+e,window.localStorage.setItem(a,e)):mt.localStorage.w()&&(mt.localStorage.f.expires=d.toUTCString(),mt.localStorage.f.load(document.location.hostname),mt.localStorage.f.setAttribute(a,e),mt.localStorage.f.save(document.location.hostname))}catch(k){}};
mt.localStorage.get=function(a){if(window.localStorage){if(a=window.localStorage.getItem(a)){var e=a.indexOf("|"),g=a.substring(0,e)-0;if(g&&g>(new Date).getTime())return a.substring(e+1)}}else if(mt.localStorage.w())try{return mt.localStorage.f.load(document.location.hostname),mt.localStorage.f.getAttribute(a)}catch(d){}return q};
mt.localStorage.remove=function(a){if(window.localStorage)window.localStorage.removeItem(a);else if(mt.localStorage.w())try{mt.localStorage.f.load(document.location.hostname),mt.localStorage.f.removeAttribute(a),mt.localStorage.f.save(document.location.hostname)}catch(e){}};mt.sessionStorage={};mt.sessionStorage.set=function(a,e){if(window.sessionStorage)try{window.sessionStorage.setItem(a,e)}catch(g){}};
mt.sessionStorage.get=function(a){return window.sessionStorage?window.sessionStorage.getItem(a):q};mt.sessionStorage.remove=function(a){window.sessionStorage&&window.sessionStorage.removeItem(a)};mt.I={};mt.I.log=function(a,e){var g=new Image,d="mini_tangram_log_"+Math.floor(2147483648*Math.random()).toString(36);window[d]=g;g.onload=g.onerror=g.onabort=function(){g.onload=g.onerror=g.onabort=q;g=window[d]=q;e&&e(a)};g.src=a};mt.t={};
mt.t.ca=function(){var a="";if(navigator.plugins&&navigator.mimeTypes.length){var e=navigator.plugins["Shockwave Flash"];e&&e.description&&(a=e.description.replace(/^.*\s+(\S+)\s+\S+$/,"$1"))}else if(window.ActiveXObject)try{if(e=new ActiveXObject("ShockwaveFlash.ShockwaveFlash"))(a=e.GetVariable("$version"))&&(a=a.replace(/^.*\s+(\d+),(\d+).*$/,"$1.$2"))}catch(g){}return a};
mt.t.V=function(a,e,g,d,k){return'<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="'+a+'" width="'+g+'" height="'+d+'"><param name="movie" value="'+e+'" /><param name="flashvars" value="'+(k||"")+'" /><param name="allowscriptaccess" value="always" /><embed type="application/x-shockwave-flash" name="'+a+'" width="'+g+'" height="'+d+'" src="'+e+'" flashvars="'+(k||"")+'" allowscriptaccess="always" /></object>'};mt.url={};
mt.url.k=function(a,e){var g=a.match(RegExp("(^|&|\\?|#)("+e+")=([^&#]*)(&|$|#)",""));return g?g[3]:q};mt.url.wa=function(a){return(a=a.match(/^(https?:)\/\//))?a[1]:q};mt.url.$=function(a){return(a=a.match(/^(https?:\/\/)?([^\/\?#]*)/))?a[2].replace(/.*@/,""):q};mt.url.K=function(a){return(a=mt.url.$(a))?a.replace(/:\d+$/,""):a};mt.url.va=function(a){return(a=a.match(/^(https?:\/\/)?[^\/]*(.*)/))?a[2].replace(/[\?#].*/,"").replace(/^$/,"/"):q};
h.z={ia:"http://tongji.baidu.com/hm-web/welcome/ico",P:"hm.baidu.com/hm.gif",S:"baidu.com",fa:"hmmd",ga:"hmpl",ea:"hmkw",da:"hmci",ha:"hmsr",l:0,g:Math.round(+new Date/1E3),protocol:"https:"==document.location.protocol?"https:":"http:",za:0,sa:6E5,ta:10,ua:1024,ra:1,r:2147483647,Q:"cc cf ci ck cl cm cp cw ds ep et fl ja ln lo lt nv rnd si st su v cv lv api tt u".split(" ")};
(function(){var a={i:{},d:function(a,g){this.i[a]=this.i[a]||[];this.i[a].push(g)},o:function(a,g){this.i[a]=this.i[a]||[];for(var d=this.i[a].length,k=0;k<d;k++)this.i[a][k](g)}};return h.p=a})();
(function(){function a(a,d){var k=document.createElement("script");k.charset="utf-8";e.e(d,"Function")&&(k.readyState?k.onreadystatechange=function(){if("loaded"===k.readyState||"complete"===k.readyState)k.onreadystatechange=q,d()}:k.onload=function(){d()});k.src=a;var m=document.getElementsByTagName("script")[0];m.parentNode.insertBefore(k,m)}var e=mt.lang;return h.load=a})();
(function(){var a=h.z,e=mt.t,g={init:function(){if(""!==c.icon){var d;d=c.icon.split("|");var g=a.ia+"?s="+c.id,m=("http:"==a.protocol?"http://eiv":"https://bs")+".baidu.com"+d[0]+"."+d[1];switch(d[1]){case "swf":d=e.V("HolmesIcon"+a.g,m,d[2],d[3],"s="+g);break;case "gif":d='<a href="'+g+'" target="_blank"><img border="0" src="'+m+'" width="'+d[2]+'" height="'+d[3]+'"></a>';break;default:d='<a href="'+g+'" target="_blank">'+d[0]+"</a>"}document.write(d)}}};h.p.d("pv-b",g.init);return g})();
(function(){function a(){return function(){h.b.a.nv=0;h.b.a.st=4;h.b.a.et=3;h.b.a.ep=h.A.aa()+","+h.A.Z();h.b.j()}}function e(){clearTimeout(x);var a;w&&(a="visible"==document[w]);y&&(a=!document[y]);f="undefined"==typeof a?p:a;if((!n||!b)&&f&&l)u=p,r=+new Date;else if(n&&b&&(!f||!l))u=s,t+=+new Date-r;n=f;b=l;x=setTimeout(e,100)}function g(b){var a=document,f="";if(b in a)f=b;else for(var l=["webkit","ms","moz","o"],r=0;r<l.length;r++){var d=l[r]+b.charAt(0).toUpperCase()+b.slice(1);if(d in a){f=
d;break}}return f}function d(b){if(!("focus"==b.type||"blur"==b.type)||!(b.target&&b.target!=window))l="focus"==b.type||"focusin"==b.type?p:s,e()}var k=mt.event,m=h.p,n=p,f=p,b=p,l=p,v=+new Date,r=v,t=0,u=p,w=g("visibilityState"),y=g("hidden"),x;e();(function(){var b=w.replace(/[vV]isibilityState/,"visibilitychange");k.d(document,b,e);k.d(window,"pageshow",e);k.d(window,"pagehide",e);"object"==typeof document.onfocusin?(k.d(document,"focusin",d),k.d(document,"focusout",d)):(k.d(window,"focus",d),
k.d(window,"blur",d))})();h.A={aa:function(){return+new Date-v},Z:function(){return u?+new Date-r+t:t}};m.d("pv-b",function(){k.d(window,"unload",a())});return h.A})();
(function(){function a(b){for(var f in b)if({}.hasOwnProperty.call(b,f)){var e=b[f];d.e(e,"Object")||d.e(e,"Array")?a(e):b[f]=String(e)}}function e(b){return b.replace?b.replace(/'/g,"'0").replace(/\*/g,"'1").replace(/!/g,"'2"):b}var g=mt.I,d=mt.lang,k=mt.m,m=h.z,n=h.p,f={L:q,n:[],s:0,M:s,init:function(){f.c=0;f.L={push:function(){f.G.apply(f,arguments)}};n.d("pv-b",function(){f.W();f.X()});n.d("pv-d",f.Y);n.d("stag-b",function(){h.b.a.api=f.c||f.s?f.c+"_"+f.s:""});n.d("stag-d",function(){h.b.a.api=
0;f.c=0;f.s=0})},W:function(){var b=window._hmt;if(b&&b.length)for(var a=0;a<b.length;a++){var d=b[a];switch(d[0]){case "_setAccount":1<d.length&&/^[0-9a-z]{32}$/.test(d[1])&&(f.c|=1,window._bdhm_account=d[1]);break;case "_setAutoPageview":if(1<d.length&&(d=d[1],s===d||p===d))f.c|=2,window._bdhm_autoPageview=d}}},X:function(){if("undefined"===typeof window._bdhm_account||window._bdhm_account===c.id){window._bdhm_account=c.id;var b=window._hmt;if(b&&b.length)for(var a=0,e=b.length;a<e;a++)d.e(b[a],
"Array")&&"_trackEvent"!==b[a][0]&&"_trackRTEvent"!==b[a][0]?f.G(b[a]):f.n.push(b[a]);window._hmt=f.L}},Y:function(){if(0<f.n.length)for(var b=0,a=f.n.length;b<a;b++)f.G(f.n[b]);f.n=q},G:function(b){if(d.e(b,"Array")){var a=b[0];if(f.hasOwnProperty(a)&&d.e(f[a],"Function"))f[a](b)}},_trackPageview:function(b){if(1<b.length&&b[1].charAt&&"/"==b[1].charAt(0)){f.c|=4;h.b.a.et=0;h.b.a.ep="";h.b.D?(h.b.a.nv=0,h.b.a.st=4):h.b.D=p;var a=h.b.a.u,d=h.b.a.su;h.b.a.u=m.protocol+"//"+document.location.host+b[1];
f.M||(h.b.a.su=document.location.href);h.b.j();h.b.a.u=a;h.b.a.su=d}},_trackEvent:function(b){2<b.length&&(f.c|=8,h.b.a.nv=0,h.b.a.st=4,h.b.a.et=4,h.b.a.ep=e(b[1])+"*"+e(b[2])+(b[3]?"*"+e(b[3]):"")+(b[4]?"*"+e(b[4]):""),h.b.j())},_setCustomVar:function(b){if(!(4>b.length)){var a=b[1],d=b[4]||3;if(0<a&&6>a&&0<d&&4>d){f.s++;for(var r=(h.b.a.cv||"*").split("!"),t=r.length;t<a-1;t++)r.push("*");r[a-1]=d+"*"+e(b[2])+"*"+e(b[3]);h.b.a.cv=r.join("!");b=h.b.a.cv.replace(/[^1](\*[^!]*){2}/g,"*").replace(/((^|!)\*)+$/g,
"");""!==b?h.b.setData("Hm_cv_"+c.id,encodeURIComponent(b),c.age):h.b.ka("Hm_cv_"+c.id)}}},_setReferrerOverride:function(b){1<b.length&&(h.b.a.su=b[1].charAt&&"/"==b[1].charAt(0)?m.protocol+"//"+window.location.host+b[1]:b[1],f.M=p)},_trackOrder:function(b){b=b[1];d.e(b,"Object")&&(a(b),f.c|=16,h.b.a.nv=0,h.b.a.st=4,h.b.a.et=94,h.b.a.ep=k.stringify(b),h.b.j())},_trackMobConv:function(b){if(b={webim:1,tel:2,map:3,sms:4,callback:5,share:6}[b[1]])f.c|=32,h.b.a.et=93,h.b.a.ep=b,h.b.j()},_trackRTPageview:function(b){b=
b[1];d.e(b,"Object")&&(a(b),b=k.stringify(b),512>=encodeURIComponent(b).length&&(f.c|=64,h.b.a.rt=b))},_trackRTEvent:function(b){b=b[1];if(d.e(b,"Object")){a(b);b=encodeURIComponent(k.stringify(b));var e=function(b){var a=h.b.a.rt;f.c|=128;h.b.a.et=90;h.b.a.rt=b;h.b.j();h.b.a.rt=a},g=b.length;if(900>=g)e.call(this,b);else for(var g=Math.ceil(g/900),r="block|"+Math.round(Math.random()*m.r).toString(16)+"|"+g+"|",t=[],u=0;u<g;u++)t.push(u),t.push(b.substring(900*u,900*u+900)),e.call(this,r+t.join("|")),
t=[]}},_setUserId:function(b){b=b[1];if(d.e(b,"String")||d.e(b,"Number")){var a=h.b.C(),e="hm-"+h.b.a.v;f.O=f.O||Math.round(Math.random()*m.r);g.log("//datax.baidu.com/x.gif?si="+c.id+"&dm="+encodeURIComponent(a)+"&ac="+encodeURIComponent(b)+"&v="+e+"&li="+f.O+"&rnd="+Math.round(Math.random()*m.r))}}};f.init();h.T=f;return h.T})();
(function(){function a(){"undefined"==typeof window["_bdhm_loaded_"+c.id]&&(window["_bdhm_loaded_"+c.id]=p,this.a={},this.D=s,this.init())}var e=mt.url,g=mt.I,d=mt.t,k=mt.lang,m=mt.cookie,n=mt.h,f=mt.localStorage,b=mt.sessionStorage,l=h.z,v=h.p;a.prototype={F:function(b,a){b="."+b.replace(/:\d+/,"");a="."+a.replace(/:\d+/,"");var d=b.indexOf(a);return-1<d&&d+a.length==b.length},N:function(b,a){b=b.replace(/^https?:\/\//,"");return 0===b.indexOf(a)},q:function(b){for(var a=0;a<c.dm.length;a++)if(-1<
c.dm[a].indexOf("/")){if(this.N(b,c.dm[a]))return p}else{var d=e.K(b);if(d&&this.F(d,c.dm[a]))return p}return s},C:function(){for(var a=document.location.hostname,b=0,d=c.dm.length;b<d;b++)if(this.F(a,c.dm[b]))return c.dm[b].replace(/(:\d+)?[\/\?#].*/,"");return a},J:function(){for(var b=0,a=c.dm.length;b<a;b++){var d=c.dm[b];if(-1<d.indexOf("/")&&this.N(document.location.href,d))return d.replace(/^[^\/]+(\/.*)/,"$1")+"/"}return"/"},ba:function(){if(!document.referrer)return l.g-l.l>c.vdur?1:4;var b=
s;this.q(document.referrer)&&this.q(document.location.href)?b=p:(b=e.K(document.referrer),b=this.F(b||"",document.location.hostname));return b?l.g-l.l>c.vdur?1:4:3},getData:function(a){try{return m.get(a)||b.get(a)||f.get(a)}catch(d){}},setData:function(a,d,e){try{m.set(a,d,{domain:this.C(),path:this.J(),B:e}),e?f.set(a,d,e):b.set(a,d)}catch(g){}},ka:function(a){try{m.set(a,"",{domain:this.C(),path:this.J(),B:-1}),b.remove(a),f.remove(a)}catch(d){}},pa:function(){var a,b,d,f,e;l.l=this.getData("Hm_lpvt_"+
c.id)||0;13==l.l.length&&(l.l=Math.round(l.l/1E3));b=this.ba();a=4!=b?1:0;if(d=this.getData("Hm_lvt_"+c.id)){f=d.split(",");for(e=f.length-1;0<=e;e--)13==f[e].length&&(f[e]=""+Math.round(f[e]/1E3));for(;2592E3<l.g-f[0];)f.shift();e=4>f.length?2:3;for(1===a&&f.push(l.g);4<f.length;)f.shift();d=f.join(",");f=f[f.length-1]}else d=l.g,f="",e=1;this.setData("Hm_lvt_"+c.id,d,c.age);this.setData("Hm_lpvt_"+c.id,l.g);d=l.g==this.getData("Hm_lpvt_"+c.id)?"1":"0";if(0===c.nv&&this.q(document.location.href)&&
(""===document.referrer||this.q(document.referrer)))a=0,b=4;this.a.nv=a;this.a.st=b;this.a.cc=d;this.a.lt=f;this.a.lv=e},oa:function(){for(var a=[],b=0,d=l.Q.length;b<d;b++){var f=l.Q[b],e=this.a[f];"undefined"!=typeof e&&""!==e&&a.push(f+"="+encodeURIComponent(e))}b=this.a.et;this.a.rt&&(0===b?a.push("rt="+encodeURIComponent(this.a.rt)):90===b&&a.push("rt="+this.a.rt));return a.join("&")},qa:function(){this.pa();this.a.si=c.id;this.a.su=document.referrer;this.a.ds=n.la;this.a.cl=n.colorDepth+"-bit";
this.a.ln=n.language;this.a.ja=n.javaEnabled?1:0;this.a.ck=n.cookieEnabled?1:0;this.a.lo="number"==typeof _bdhm_top?1:0;this.a.fl=d.ca();this.a.v="1.0.81";this.a.cv=decodeURIComponent(this.getData("Hm_cv_"+c.id)||"");1==this.a.nv&&(this.a.tt=document.title||"");var a=document.location.href;this.a.cm=e.k(a,l.fa)||"";this.a.cp=e.k(a,l.ga)||"";this.a.cw=e.k(a,l.ea)||"";this.a.ci=e.k(a,l.da)||"";this.a.cf=e.k(a,l.ha)||""},init:function(){try{this.qa(),0===this.a.nv?this.na():this.H(".*"),h.b=this,this.U(),
v.o("pv-b"),this.ma()}catch(a){var b=[];b.push("si="+c.id);b.push("n="+encodeURIComponent(a.name));b.push("m="+encodeURIComponent(a.message));b.push("r="+encodeURIComponent(document.referrer));g.log(l.protocol+"//"+l.P+"?"+b.join("&"))}},ma:function(){function a(){v.o("pv-d")}"undefined"===typeof window._bdhm_autoPageview||window._bdhm_autoPageview===p?(this.D=p,this.a.et=0,this.a.ep="",this.j(a)):a()},j:function(a){var b=this;b.a.rnd=Math.round(Math.random()*l.r);v.o("stag-b");var d=l.protocol+"//"+
l.P+"?"+b.oa();v.o("stag-d");b.R(d);g.log(d,function(d){b.H(d);k.e(a,"Function")&&a.call(b)})},U:function(){var a=document.location.hash.substring(1),b=RegExp(c.id),d=-1<document.referrer.indexOf(l.S)?p:s,f=e.k(a,"jn"),g=/^heatlink$|^select$/.test(f);a&&(b.test(a)&&d&&g)&&(a=document.createElement("script"),a.setAttribute("type","text/javascript"),a.setAttribute("charset","utf-8"),a.setAttribute("src",l.protocol+"//"+c.js+f+".js?"+this.a.rnd),f=document.getElementsByTagName("script")[0],f.parentNode.insertBefore(a,
f))},R:function(a){var d=b.get("Hm_unsent_"+c.id)||"",f=this.a.u?"":"&u="+encodeURIComponent(document.location.href),d=encodeURIComponent(a.replace(/^https?:\/\//,"")+f)+(d?","+d:"");b.set("Hm_unsent_"+c.id,d)},H:function(a){var d=b.get("Hm_unsent_"+c.id)||"";d&&((d=d.replace(RegExp(encodeURIComponent(a.replace(/^https?:\/\//,"")).replace(/([\*\(\)])/g,"\\$1")+"(%26u%3D[^,]*)?,?","g"),"").replace(/,$/,""))?b.set("Hm_unsent_"+c.id,d):b.remove("Hm_unsent_"+c.id))},na:function(){var a=this,d=b.get("Hm_unsent_"+
c.id);if(d)for(var d=d.split(","),f=function(b){g.log(l.protocol+"//"+decodeURIComponent(b).replace(/^https?:\/\//,""),function(b){a.H(b)})},e=0,k=d.length;e<k;e++)f(d[e])}};return new a})();
(function(){if("378f3aa9b8779062c8de4dc247dd8874"===c.id){var a=function(a){if(a.item){for(var b=a.length,d=Array(b);b--;)d[b]=a[b];return d}return[].slice.call(a)},e={click:function(){for(var d=[],b=a(document.getElementsByTagName("a")),b=[].concat.apply(b,a(document.getElementsByTagName("area"))),e=/openZoosUrl\(/,g=0,k=b.length;g<k;g++)e.test(b[g].getAttribute("onclick"))&&d.push(b[g]);return d}},g=function(a,b){for(var d in a)if(a.hasOwnProperty(d)&&b.call(a,d,a[d])===s)return s},d=function(a,
b){return Object.prototype.toString.call(a)==="[object "+b+"]"};window._hmt=window._hmt||[];var k,m="/zoosnet"+(/\/$/.test("/zoosnet")?"":"/"),n=function(a,b){if(k===b){window._hmt.push(["_trackPageview",m+a]);for(var e=+new Date;500>=+new Date-e;);return s}if(d(b,"Array")||d(b,"NodeList"))for(var e=0,g=b.length;e<g;e++)if(k===b[e]){window._hmt.push(["_trackPageview",m+a+"/"+(e+1)]);for(e=+new Date;500>=+new Date-e;);return s}};(function(a,b,d){a.addEventListener?a.addEventListener(b,d,p):a.attachEvent&&
a.attachEvent("on"+b,d)})(document,"click",function(a){a=a||window.event;k=a.target||a.srcElement;var b={};for(g(e,function(a,e){b[a]=d(e,"Function")?e():document.getElementById(e)});k&&k!==document&&g(b,n)!==s;)k=k.parentNode})}})();})();
