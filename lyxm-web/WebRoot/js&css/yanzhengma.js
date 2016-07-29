    					
            	function daojishi(waitTime) {
            		var yzms=document.getElementById("yzms")
            			        if(waitTime == 0) {
            			            flag = true;
            			            $(".yzm").html('重新发送');          			            
            			            clearInterval(daojishi());
            			            waitTime = 60;
            			        } else {
            			            waitTime--;
            			            $(".yzm").html('还剩' + waitTime + '秒');
            			            $('#yzms').unbind("click");
            			        }
            			    }    

//onload = function () {
//	  var container2dl = document.getElementById("vCode2dl");
//      var code2dl = new vCode(container2dl, {
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
//      document.getElementById("yySubmitdl").addEventListener("click", function () {  
//      	var sMobile = document.all("mobiledl").value; 
//      	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
//      		if(code2dl.verify(document.getElementById("code2dl").value)){  
//      			code2dl.update.call(code2dl);
//      			commitdl();
//      			
//      		}else{
//      			alert("图片验证码错误")
//      		}
//      		}
//      } );
//      document.getElementById("yzmsdl").addEventListener("click", function () {
//      	var waitTime = 60;
//		    var dj = null;
//		    var flag = true;
//		    //发送验证码倒计时
//      	var sMobile = document.all("mobiledl").value;
//      	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
////      		if(code2.verify(document.getElementById("code2").value)){
////      			
//      		$("#yzmsdl").html('还剩' + 60 + '秒'+'可重新发送');
//	            $("#yzmsdl").css("background","#D3D3D3");
//	            $("#yzmsdl").attr("disabled", "disabled");
//      			var valid = setInterval(function daojishi(){
//      				if(waitTime == 0){
//			            flag = true;
//			            $("#yzmsdl").html('重新发送');
//			            clearInterval(valid);
//			            waitTime = 60;
//			            $("#yzmsdl").css("background","#ffd244");
//			            $("#yzmsdl").attr("disabled", false);
//			        } else {
//			            waitTime--;
//			            flag = false;
//			            $("#yzmsdl").html('还剩' + waitTime + '秒'+'可重新发送');
//			            $("#yzmsdl").css("background","#D3D3D3");
//			            $("#yzmsdl").attr("disabled", "disabled");
//			        } },1000);
//      			 
//      			 sentCodedl(); 	   
////      		} else{
////      			alert("验证码错误");
////      			
////      		}
//      		
//      	}
//      	else{
//      		alert("请输入正确手机号");
//      		
//      	}
//      	
//         
//      });
//            var container2 = document.getElementById("vCode2");
//            var code2 = new vCode(container2, {
//                len: 6,
//                bgColor: "#444444",
//                colors: [
//                    "#DDDDDD",
//                    "#DDFF77",
//                    "#77DDFF",
//                    "#99BBFF",
//                    "#7700BB",
//                    "#EEEE00"
//                ]
//            });
//            document.getElementById("yySubmit").addEventListener("click", function () {
//            	var sMobile = document.all("mobile").value;
//            	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
//            		if(code2.verify(document.getElementById("code2").value)){
//            			code2.update.call(code2);
//            			commit();
//            			
//            		}else{
//            			alert("图片验证码错误")
//            		}
//            		}
//            } );
//            
//            
//            document.getElementById("yzms").addEventListener("click", function () {
//            	var waitTime = 60;
//			    var dj = null;
//			    var flag = true;
//			    //发送验证码倒计时
//            	var sMobile = document.all("mobile").value;
//            	if(/^1[3|4|5|7|8][0-9]\d{8}$/.test(sMobile)){ 
////            		if(code2.verify(document.getElementById("code2").value)){
////            			
//            		$("#yzms").html('还剩' + 60 + '秒'+'可重新发送');
//		            $("#yzms").css("background","#D3D3D3");
//		            $("#yzms").attr("disabled", "disabled");
//            			var valid = setInterval(function daojishi(){
//            				if(waitTime == 0){
//    			            flag = true;
//    			            $("#yzms").html('重新发送');
//    			            clearInterval(valid);
//    			            waitTime = 60;
//    			            $("#yzms").css("background","#ffd244");
//    			            $("#yzms").attr("disabled", false);
//    			        } else {
//    			            waitTime--;
//    			            flag = false;
//    			            $("#yzms").html('还剩' + waitTime + '秒'+'可重新发送');
//    			            $("#yzms").css("background","#D3D3D3");
//    			            $("#yzms").attr("disabled", "disabled");
//    			        } },1000);
//            			 
//            			 sentCode(); 	   
////            		} else{
////            			alert("验证码错误");
////            			
////            		}
//            		
//            	}
//            	else{
//            		alert("请输入正确手机号");
//            		
//            	}
//            	
//               
//            });
//        };

(function(){
    var randstr = function(length){
        var key = {

            str : [
                'a','b','c','d','e','f','g','h','i','j','k','l','m',
                'o','p','q','r','s','t','x','u','v','y','z','w','n',
                '0','1','2','3','4','5','6','7','8','9'
            ],

            randint : function(n,m){
                var c = m-n+1;
                var num = Math.random() * c + n;
                return  Math.floor(num);
            },

            randStr : function(){
                var _this = this;
                var leng = _this.str.length - 1;
                var randkey = _this.randint(0, leng);
                return _this.str[randkey];
            },

            create : function(len){
                var _this = this;
                var l = len || 10;
                var str = '';

                for(var i = 0 ; i<l ; i++){
                    str += _this.randStr();
                }

                return str;
            }

        };

        length = length ? length : 10;

        return key.create(length);
    };

    var randint = function(n,m){
        var c = m-n+1;
        var num = Math.random() * c + n;
        return  Math.floor(num);
    };

    var vCode = function(dom, options){
        this.codeDoms = [];
        this.lineDoms = [];
        this.initOptions(options);
        this.dom = dom;
        this.init();
        this.addEvent();
        this.update();
        this.mask();
    };

    vCode.prototype.init = function(){
        this.dom.style.position = "relative";
        this.dom.style.overflow = "hidden";
        this.dom.style.cursor = "pointer";
        this.dom.title = "点击更换验证码";
        this.dom.style.background = this.options.bgColor;
        this.w = this.dom.clientWidth;
        this.h = this.dom.clientHeight;
        this.uW = this.w / this.options.len;
    };

    vCode.prototype.mask = function(){
        var dom = document.createElement("div");
        dom.style.cssText = [
            "width: 100%",
            "height: 100%",
            "left: 0",
            "top: 0",
            "position: absolute",
            "cursor: pointer",
            "z-index: 9999999"
        ].join(";");

        dom.title = "点击更换验证码";

        this.dom.appendChild(dom);
    };

    vCode.prototype.addEvent = function(){
        var _this = this;
        _this.dom.addEventListener("click", function(){
            _this.update.call(_this);
        });
    };

    vCode.prototype.initOptions = function(options){

        var f = function(){
            this.len = 4;
            this.fontSizeMin = 20;
            this.fontSizeMax = 48;
            this.colors = [
                "green",
                "red",
                "blue",
                "#53da33",
                "#AA0000",
                "#FFBB00"
            ];
            this.bgColor = "#FFF";
            this.fonts = [
                "Times New Roman",
                "Georgia",
                "Serif",
                "sans-serif",
                "arial",
                "tahoma",
                "Hiragino Sans GB"
            ];
            this.lines = 8;
            this.lineColors = [
                "#888888",
                "#FF7744",
                "#888800",
                "#008888"
            ];

            this.lineHeightMin = 1;
            this.lineHeightMax = 3;
            this.lineWidthMin = 1;
            this.lineWidthMax = 60;
        };

        this.options = new f();

        if(typeof options === "object"){
            for(i in options){
                this.options[i] = options[i];
            }
        }
    };

    vCode.prototype.update = function(){
        for(var i=0; i<this.codeDoms.length; i++){
            this.dom.removeChild(this.codeDoms[i]);
        }
        for(var i=0; i<this.lineDoms.length; i++){
            this.dom.removeChild(this.lineDoms[i]);
        }
        this.createCode();
        this.draw();
    };

    vCode.prototype.createCode = function(){
        this.code = randstr(this.options.len);
    };

    vCode.prototype.verify = function(code){
        return this.code === code;
    };

    vCode.prototype.draw = function(){
        this.codeDoms = [];
        for(var i=0; i<this.code.length; i++){
            this.codeDoms.push(this.drawCode(this.code[i], i));
        }

        this.drawLines();
    };

    vCode.prototype.drawCode = function(code, index){
        var dom = document.createElement("span");

        dom.style.cssText = [
            "font-size:" + randint(this.options.fontSizeMin, this.options.fontSizeMax) + "px",
            "color:" + this.options.colors[randint(0,  this.options.colors.length - 1)],
            "position: relative",
            "left:" + this.uW*index+15 + "px",
            "top:" + randint(-17,-7) + "px",
            "transform:rotate(" + randint(-30, 30) + "deg)",
            "-ms-transform:rotate(" + randint(-30, 30) + "deg)",
            "-moz-transform:rotate(" + randint(-30, 30) + "deg)",
            "-webkit-transform:rotate(" + randint(-30, 30) + "deg)",
            "-o-transform:rotate(" + randint(-30, 30) + "deg)",
            "font-family:" + this.options.fonts[randint(0, this.options.fonts.length - 1)],
            "font-weight:" + randint(400, 900)
        ].join(";");

        dom.innerHTML = code;
        this.dom.appendChild(dom);

        return dom;
    };

    vCode.prototype.drawLines = function(){
        this.lineDoms = [];
        for(var i=0; i<this.options.lines; i++){
            var dom = document.createElement("div");

            dom.style.cssText = [
                "position: absolute",
                "opacity: " + randint(3, 8) / 10,
                "width:" + randint(this.options.lineWidthMin, this.options.lineWidthMax) + "px",
                "height:" + randint(this.options.lineHeightMin, this.options.lineHeightMax) + "px",
                "background: " + this.options.lineColors[randint(0, this.options.lineColors.length - 1)],
                "left:" + randint(0, this.w - 20) + "px",
                "top:" + randint(0, this.h) + "px",
                "transform:rotate(" + randint(-30, 30) + "deg)",
                "-ms-transform:rotate(" + randint(-30, 30) + "deg)",
                "-moz-transform:rotate(" + randint(-30, 30) + "deg)",
                "-webkit-transform:rotate(" + randint(-30, 30) + "deg)",
                "-o-transform:rotate(" + randint(-30, 30) + "deg)",
                "font-family:" + this.options.fonts[randint(0, this.options.fonts.length - 1)],
                "font-weight:" + randint(400, 900)
            ].join(";");
            this.dom.appendChild(dom);

            this.lineDoms.push(dom);
        }
    };

    this.vCode = vCode;

}).call(this);  