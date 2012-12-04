
/*
 *@author nicolaas[at]sunnysideup.co.nz
 *
 **/

;(function($) {
	$(document).ready(function() {
		typography.init();
	});

	var typography = {
		init: function() {
			for(var i = 1; i < 8; i++) {
				jQuery(".backgroundcolour"+i).each(
					function(j, el) {
						var rgb = jQuery(el).css("background-color");
						var hex = typography.colorToHex(rgb);
						jQuery(el).find("span").each(
							function(k, elInner) {
								var text = jQuery(elInner).html();
								jQuery(elInner).html(text+": "+hex);
							}
						);
					}
				);
				jQuery(".fontcolour"+i).each(
					function(j, el) {
						var rgb = jQuery(el).css("color");
						var hex = typography.colorToHex(rgb);
						var text = jQuery(el).html();
						jQuery(el).html(text+": "+hex);
					}
				);
			}
		},
		colorToHex: function (color) {
			if (color.substr(0, 1) === '#') {
				return color;
			}
			var digits = /(.*?)rgb\((\d+), (\d+), (\d+)\)/.exec(color);
			var red = parseInt(digits[2]);
			var green = parseInt(digits[3]);
			var blue = parseInt(digits[4]);
			var rgb = blue | (green << 8) | (red << 16);
			return digits[1] + '#' + rgb.toString(16);
		}
	}
})(jQuery);




