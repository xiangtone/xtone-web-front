	var n = 0 ;
		var t = 0 ;
		var flag = true ;
		function init(){
			
			var lbls = document.getElementsByTagName("label") ;
			
			for(var i= 0 ;i<lbls.length;i++){
				lbls[i].onmouseover = function(){
					
					clearTimeout(t) ;
					
					var b = this.innerText * 1 ;
					
					var img = document.getElementById("img") ;
					img.src = "images/test" + b + ".png" ;
					
					clearStyle() ;

					
					this.className = "one" ;
				}

				lbls[i].onmouseout =function(){
					t = setTimeout("fun()",1000) ;					
					n = this.innerText*1 ;
				}
			}

			fun() ;
		}

		function fun(){
			n ++;
			if(n == 8)
				n =1 ;
			
			var img = document.getElementById("img") ;
			img.src = "images/test" + n + ".png" ;
			
			clearStyle() ;

			document.getElementById("i" + n).className = "one" ;
			t = setTimeout("fun()",3000) ;
		}

		function clearStyle(){
			
			var lbls = document.getElementsByTagName("label") ;
			for(var i = 0 ; i <lbls.length ;i++){
				lbls[i].className = "" ;
			}
		}