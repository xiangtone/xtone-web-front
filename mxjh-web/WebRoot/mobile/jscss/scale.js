$(function() {

	function doWinScale(vWidth) {
		var diff = null;

		function getClientWidth() {
			return Math.min(window.innerWidth, document.documentElement.clientWidth);
		}

		function scale() {
			var curWidth = getClientWidth(),
				value = 1;

			if(diff === null || curWidth !== diff) {
				diff = curWidth;
				value = curWidth / vWidth;
				window.SCALE = value;
				width_screen=document.documentElement.clientWidth;
				
				$(".container").css({
					"-webkit-transform":"scale("+ value +")",
					"-webkit-transform-origin":"left top",

					"-moz-transform":"scale("+ value +")",
					"-moz-transform-origin":"left top",

					"-ms-transform":"scale("+ value +")",
					"-ms-transform-origin":"left top"
				});
				
				$("body").css({
				"width":width_screen+"px",
				
				});
			}
		}

		scale();

	}
	 width_screen=document.documentElement.clientWidth;
	doWinScale(640);

	$(window).resize(function() {
		doWinScale(640);
	});

});