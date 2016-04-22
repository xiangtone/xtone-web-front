/**
 * @author floyd
 */

//地鼠类
var Mouse = function(type){
	//地鼠的具体dom元素，添加到页面上的
	this.mouse = null;
	//地鼠的编号
	this.num = -1;
	//地洞的编号(地鼠藏身在哪个洞)
	this.hole = -1;
	//初始化,type为地鼠类型,好与坏
	this.init(type);
}
Mouse.prototype = {
		//地鼠类型，好，坏，好的被杀，坏的被杀
		mousetype: {
			"good": "img/good.png",
			"good2":"img/good2.png",
			"good3":"img/good3.png",
			"bad": "img/bad.png",
			"goodkill":"img/goodkill.png",
			"good2kill":"img/good2kill.png",
			"good3kill":"img/good3kill.png",
			"badkill":"img/badkill.png"
		},
		//初始化地鼠
		init : function(type){
			type = type || 'good';
			var _this = this;
			//创建地鼠的dom元素
			this.mouse = document.createElement("div");
			//扩展属性--地鼠类型
			this.mouse.mousetype = type;
			//扩展类型--属否活着
			this.mouse.islive = true;
			this.mouse.style.cssText = 'width:80px;height:100px;background:url('+this.mousetype[type]+');background-repeat:no-repeat;left:0;top:20px;\
			position:relative;margin:auto;cursor:url("img/chuizi.png"),auto;z-index: 101;';
			//绑定地鼠被点击事件
			this.mouse.onclick = function(e){_this.beat(e);};
			/*alert(this.mouse);
			$(this.mouse).parent().one(function(e){
				_this.beat(e);
			});*/
		},
		//地鼠被点中
		beat : function(e){
			
			if(this.mouse.islive){
				
				this.mouse.islive = false;
				this.onbeat();
				this.mouse.style.background = "url("+this.mousetype[this.mouse.mousetype+"kill"]+")"+" no-repeat";
			}
		},
		//地鼠的动画
		animation : function(speed){
			
			speed = speed == 'fast'?20:speed == 'normal'?20:40;
			
			var obj = this.mouse,ost = obj.style,oTop = parseInt(ost.top,10),oHight= parseInt(ost.height,0),cut=5,_this = this;
			//让地鼠从地洞冒出来
			var show = function(top,hight){
				
				top = top-cut;
				
				hight = hight+12.5;
				
				if(top >= -40){
					ost.top = top + 'px';
					setTimeout(function(){show(top,hight);},speed);
				}
				else
				{
					setTimeout(function(){hide(-40);},speed*30);
				}
			}
			//隐藏地鼠
			var hide = function(top,hight){
				
				top = top+cut;
				hight = hight-12.5;
				
				if(top <= oTop){
					ost.top = top + 'px';
					setTimeout(function(){hide(top,hight);},speed);
				}
				else {
					_this.reset();
				}
			}
			show(oTop,oHight);
		},
		//重置地鼠,当地鼠滚回洞里的时候
		reset : function(){
			
			this.mouse.islive =true;
			this.mouse.style.background = "url("+this.mousetype[this.mouse.mousetype]+") no-repeat";
			
			this.onend();
		},
		//扩展方法：地鼠被点中
		onbeat : function(){},
		//扩展方法：地鼠动画结束后
		onend : function(){}
}

//游戏控制类
var Game = {
		//游戏时间,一分钟
		time : 46,
		//地鼠地图，总共有十只，其中两只是坏的
		mouseMap : {
			1:'good3',
			2:'bad',
			3:'good',
			4:'good',
			5:'bad',
			6:'good',
			7:'bad',
			8:'good',
			9:'good2',
			10:'good2',
			11:'good2',
			12:'good'
		},
		//所有的地鼠dom元素
		allMouse : [],
		//目前分数
		nowScore : 0,
		//目前有哪几个地洞给占用
		hasHole : {},
		//目前有哪几只地鼠是活动的
		hasMouse : {},
		//页面的地洞集合
		lis : null,
		//初始化地鼠与地洞
		init : function(){
			//获取页面的地洞集合
			this.lis = document.getElementById('panel').getElementsByTagName('li');
			_this = this;
			//初始化10只地鼠
			for(var i=1;i <=12;i++){
				var mouse = new Mouse(this.mouseMap[i]);
				//扩展地鼠被点中事件
				mouse.onbeat = function(){
					//修改分数
					//Game.changeScore(100 * (this.mouse.mousetype=='good'?1:-1));
					if(this.mouse.mousetype=='good'){
						Game.changeScore(100);
					}else if (this.mouse.mousetype=='good2') {
						Game.changeScore(200);
					}else if (this.mouse.mousetype=='good3') {
						Game.changeScore(300);
					}else if (this.mouse.mousetype=='bad') {
						//Game.changeScore(-100);
						Game.changeTime(1);
					}
				}
				//扩展地鼠动画结束事件
				mouse.onend = function(){
					//移除地洞中的地鼠
					var li = _this.lis[this.hole];
					li.removeChild(li.mouse.mouse);
					li.mouse = null;
					//清除对应的地洞与地鼠
					_this.hasHole[this.hole] = null;
					_this.hasMouse[this.num] = null;
				}
				this.allMouse.push(mouse);
			}
		},
		//修改游戏时间
		changeTime : function(time){
			this.time-=time;
			document.getElementById('time').innerHTML = this.time;
			$("#num").css({"left": this.time+"px"}).html(this.time);
		},
		//修改游戏分数
		changeScore : function(score){
			this.nowScore += score;
			document.getElementById('score').innerHTML = this.nowScore;
		},
		//游戏开始
		start : function(){
			
			if(this.time <= 0){
				$("#ibar").stop(true);
				$("#ibar").css("width", "0px");
				$("#num").html(0);
				this.time = 1;
				this.changeScore(100);
				return;
			}
			
			if(this.nowScore<=-100){
				$("#ibar").stop(true);
				$("#ibar").css("width", "0px");
				$("#num").html(0);
				this.time = 1;
				this.changeScore(100);
				return;
			}
			
			var _this = this;
			//随机地洞编号
			var random = parseInt(Math.random()*9,10);
			
			while(this.hasHole[random]){
				random = parseInt(Math.random()*9,10);
			}
			//随机地鼠编号
			var randomMouse = parseInt(Math.random()*10,10);
			
			while(this.hasMouse[randomMouse]){
				randomMouse = parseInt(Math.random()*10,10);
			}
			//添加地鼠到地洞中
			this.allMouse[randomMouse].hole = random;
			this.allMouse[randomMouse].num = randomMouse;
			this.lis[random].appendChild(this.allMouse[randomMouse].mouse);
			this.lis[random].mouse = this.allMouse[randomMouse];
			this.lis[random].mouse.animation('normal');
			//记录地鼠与地洞编号
			this.hasHole[random] = 'true';
			this.hasMouse[randomMouse] = 'true';
			
			setTimeout(function(){_this.start();},200);
		},
		//倒计时
	startTime : function(){
		$("#ibar").animate(
            {"width":"0px"},
            {
                duration:46000,
                easing:"linear",
                step: function(now, fx){
                    $("#num").css({"left":now+"px"}).html(parseInt(now/6.3));
                    //this.time -= 1;
                    //alert("time:"+this.time);
                    //var _this = this;
            		//document.getElementById('time').innerHTML = this.time;
					/*if($("#num").text()==0){
						alert("计时结束");
						return;
					}*/
                }
            }
        )

		this.time -= 1;
		var _this = this;
		
		document.getElementById('time').innerHTML = this.time;
		
		
		if(this.time > 0){
			setTimeout(function(){_this.startTime()},1000);
		}
	},
	//重置游戏设置
	reset : function(){
		$("#ibar").stop(true);
		$("#ibar").css("width", "300px");
		$("#num").html(45);
		this.time = 46;
		this.allMouse = [];
		this.nowScore = 0;
		this.hasHole = {};
		this.hasMouse = {};
		this.lis = null;
		
		this.changeScore(0);
	}
}

//游戏开始函数
function GameStart(){
	
	if(Game.time > 0 && Game.time != 46){
		alert("游戏尚未结束，不能重新开始哦！");
		return;
	}

	Game.reset();
	Game.init();
	Game.start();
	Game.startTime();
}

function hit(id){
	if(Game.time > 45 && Game.time != 0){
		alert("游戏尚未开始！");
		//$("#text").text(id);
		return;
	}else{
		//alert(id);
		$("#"+id).children().eq(1).click();
		//$("#text").text(id);
	}
}
