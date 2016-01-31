/* require(["jquery-1.11.0.min", "browserSwipe", "touchswipe", "weixin-api"], function() { */

	var app = (function( app, $ ) {
		var currentScene = 0, currentPage = 0;

		$cache = {
			scenes: $( ".section" )
		}

		function _constructor(){
			_bindEvents();
		}

		function _bindEvents() {
			$( "body" ).swipe({
				swipe: function(event,direction) {
					if(direction == "up") {
						slideHandle( "down" );
					} else if(direction == "down") {
						slideHandle( "up" );
					} else if(direction == "right") {
						slideHandle( "left" );
					}else if(direction == "left") {
						slideHandle("right");
					}
				}
			});
		
			/*阻止事件冒泡*/
			$( "body, a, iframe" ).on( "touchmove", function( e ) {
				e.stopPropagation();
				e.preventDefault();
			});
			$( "a, iframe" ).on( "mouseenter", function( e ) {
				e.stopPropagation();
				e.preventDefault();
			});
		
			//绑定事件
			$.browserSwipe({
				up: function() {
					slideHandle( "up" );
				},
				down: function() {
					slideHandle( "down" );
				},
				left: function(){
					slideHandle( "left" );
				},
				right: function(){
					slideHandle( "right" );
				}
			});
		}

		//执行片段
		function slideHandle( direction ) {
			switch(direction) {
				case "up":
				if( currentScene > 0 ) {
					currentScene--;
					sceneHandle();
				}
				break;
				case "down":
				if( currentScene < ($cache.scenes.length - 1) ) {
					currentScene++;
					sceneHandle();
				}
				break;

			}
		}
	  
		var limit = false;
		window.onorientationchange = orientationChange;

		function orientationChange() {
			if( limit != true ) {
				if ( window.orientation == 0 || window.orientation == 180 ) {
				$( "#lock" ).hide();
				$( "#global" ).show();
				} else if ( window.orientation == 90 || window.orientation == -90 ) {
				$( "#lock" ).show();
				$( "#global" ).hide();
				}
			}
		}

		function sceneHandle() {
			$cache.scenes.each(function() {
				if($(this).index() == currentScene) {
					$(this).addClass( "active" ).removeClass( "after" );
				} else if($(this).index() < currentScene){
					$(this).addClass( "after" ).removeClass( "active" );
				} else {
					$(this).removeClass( "after" ).removeClass( "active" );
				}
			});
		}
		
		var loading = $( "#loading" ), loadingText = $("#loading-text");
		var loadingImg = function() {
			var images = [], imgTotal = images.length, loadedCount = 0;
			var doLoad = function( url ) {
				var img = new Image();
				img.onload = function() {
					++loadedCount;
					loadingText.text( parseInt(( loadedCount/imgTotal)*100 ) + "%" );
				}
				img.src = url;
			}
			for( var i = 0; i < imgTotal; ++i ) {
				doLoad( images[i] );
			}
			var checkTime = 60,
				check = function() {
					if( 0 >= checkTime ) {
						if( loadedCount / imgTotal > .5 ) {
							plushPage();
						} else {
							alert( "加载图片失败，请返回刷新尝试!" );
						}
					} else {
						checkTime -= .5;
						if( loadedCount == imgTotal ) {
							plushPage();
						} else {
							setTimeout( check, 500 );
						}
					}
				}
			var plushPage = function() {};
			return function( cb ) {
				if( typeof( cb ) == "function" ) plushPage = cb;
				check();
			}
		}();
		loadingImg( function() {
			//图片加载完成后，回调
			loading.hide();
			$( "#global" ).show();
		});
		
		$( ".job li" ).on( "click", function( e ) {
			currentScene = $(this).index() + 3;
			sceneHandle();
		});
		
		/* $( ".t-down-a" ).on( "click", function( e ) {
			currentScene = 9;
			sceneHandle();
		}); */
		
		$( ".m-a" ).on( "click", function( e ) {
			currentScene = $(this).index();
			sceneHandle();			
		});
		
		return _constructor;
		
	})( window.app || {}, jQuery );

	$( document ).ready(function() {
		app();
		
		var $close = $( ".close" ),
			$join = $( ".join" ),
			$pop = $( ".pop" );
		
		$join.on( "click", function() { 
			$pop.show();
		});
		
		$close.on( "click", function() { 
			$pop.hide();
		});
		
		var musicSrc = "music.mp3",
			$audio = $( "#audio" ),
			$musicBtn = $( "#music-btn" ),
			$logo = $( ".logo" ),
			$musicBox = $( "#music-box" );
		
		$audio.attr( "src", musicSrc );
		$audio.get(0).load();
		$audio.eq(0)[0].play();

		var _muted = true;
		$musicBtn.on( "click", function() {
			if( _muted ) {
				$audio.eq(0)[0].pause();
				$musicBtn.addClass( "off" );
				_muted = false;
			} else {
				$audio.eq(0)[0].play();
				$musicBtn.removeClass( "off" );
				_muted = true;
			}
		});
		
		// 微信分享
		try {
			function weixin() {
				var data = {
					"imgUrl": "http://smzg.xtonegame.com/img/main/top_corp.png",
					"link": window.location.href,
					"desc": "转发要“礼值”圣诞要“气壮”！自拍捣蛋两不乱~",
					"title": "圣诞弹豪礼"
				};
				WeixinApi.shareToTimeline( data, {
					ready: function() {
						data.desc = "转发要“礼值”圣诞要“气壮”！自拍捣蛋两不乱~";
					}
				});
				WeixinApi.shareToFriend( data, {
					ready: function() {
						data.desc = "转发要“礼值”圣诞要“气壮”！自拍捣蛋两不乱~";
					}
				});
			}
			WeixinApi.ready(function( Api ) {
				setTimeout(function() {
					weixin( Api );
				}, 500 );
			});
		} catch( ex ) {}
		
	});
	
/* }); */
