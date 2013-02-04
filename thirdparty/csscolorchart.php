<?php
/*
	CSS Color Chart generator from directories containing CSS files
	Author: Ralph Slooten
	Website: http://www.axllent.org/
	------------------------------------------------------------------------
	License: Distributed under the Lesser General Public License (LGPL)
		http://www.gnu.org/copyleft/lesser.html
	------------------------------------------------------------------------
*/

class CssColorChart {

	/*
	 * list of files that are not included (e.g. /var/www/webroot/themes/myfile.css)
	 * @var Array
	 */
	public $ignoreFiles = array();

	/**
	 * Find, parse, and return output
	 * @param String | Array $dir
	 * @return String generated HTML of colour codes
	 */
	public function listColors($dir) {
		$this->matchResults = array();

		$cssFiles = array();
		if (!is_array($dir)) $dir = array($dir);
		foreach ($dir as $d)
			$cssFiles = array_merge($cssFiles, $this->findCssFiles($d, '*.css'));

		$this->colorNames = $this->genColorNames();

		$reg = array();
		foreach ($this->colorNames as $cn => $hex)
			$reg[] = preg_quote($cn, '/');
		$this->colorRegex = implode('|', $reg);

		$ignore = array();
		foreach ($this->ignoreFiles as $i)
			$ignore[] = preg_quote($i, '/');

		$ignoreRegex = '('.implode($ignore, '|').')';

		foreach ($cssFiles as $cssFile) {
			if (strlen($ignoreRegex) == 2 || !preg_match('/'.$ignoreRegex.'/', $cssFile))
				$colors = $this->findColors($cssFile);
		}

		$this->sortMatches();

		return $this->displayColors();
	}


	/*
	 * list of colours that will be replaced using
	 * the replaceColours Method
	 * Example:
	 * Array("#ffffff" => "#000000", "red" => "blue");
	 * this will turn white into black and red into blue.
	 * @var Array
	 */
	public $replaceColoursArray = array();

	/**
	 * Find, parse, and return output
	 * @param String | Array $dir
	 * @return String - generated HTML of colour codes
	 */
	public function replaceColours($dir) {
		$this->matchResults = array();

		//find files
		$cssFiles = array();
		if (!is_array($dir)) {
			$dir = array($dir);
		}
		foreach ($dir as $d) {
			$cssFiles = array_merge($cssFiles, $this->findCssFiles($d, '*.css'));
		}
		$this->colorNames = $this->genColorNames();

		//setup files to ignore
		$ignore = array();
		foreach ($this->ignoreFiles as $i) {
			$ignore[] = preg_quote($i, '/');
		}
		$ignoreRegex = '('.implode($ignore, '|').')';

		echo "<h1>Starting replacement</h1><ul>";
		foreach ($cssFiles as $cssFile) {
			if (strlen($ignoreRegex) == 2 || !preg_match('/'.$ignoreRegex.'/', $cssFile)) {
				$from = array_keys($this->replaceColoursArray);
				$to = $this->replaceColoursArray;
				$oldFileContents = file_get_contents($cssFile);
				//NON-case sensitive!!!
				$newFileContents = str_ireplace($from, $to, $oldFileContents);
				if($oldFileContents != $newFileContents) {
					echo "<li>replacing ".implode(", ", $from)." TO ".implode(", ", $to)." in $cssFile</li>";
					file_put_contents($cssFile,$newFileContents);
				}
			}
		}
		echo "</ul><h1>Ending replacement</h1>";
	}

	/* Returns an array of all found *.css files in path
	 * @param String
	 * @return generated HTML of colour codes
	 */
	protected function findCssFiles($dir, $pattern) {
		if (is_file($dir)) return array($dir);
		$dir = rtrim(escapeshellcmd($dir), '/');
		$files = glob($dir.'/'.$pattern);
		foreach (glob("$dir/{.[^.]*,*}", GLOB_BRACE|GLOB_ONLYDIR) as $sub_dir) {
			$arr   = $this->findCssFiles($sub_dir, $pattern);
			$files = array_merge($files, $arr);
		}
		return $files;
	}

	/* Parse CSS files and build $this->matchResults
	 * @param String
	 * @return Null
	 */
	protected function findColors($cssFile) {
		$data = $this->cssPrepare(file_get_contents($cssFile));

		/* read line-by-line */
		$lines = preg_split('/\n/', $data, false, PREG_SPLIT_NO_EMPTY);

		foreach ($lines as $line) {
			@preg_match('/^(.*)\{(.*)\}$/', $line, $matches);
			if ($matches && count($matches) == 3) {
				$className = $matches[1];
				$styles = preg_split('/\;/', $matches[2], false, PREG_SPLIT_NO_EMPTY);

				if ($styles) {
					foreach ($styles as $declaration) {
						$parts = preg_split('/\:/', $declaration, 2);
						if (count($parts) == 2) {
							$property = trim($parts[0]);
							$value = trim($parts[1]);
							/* Hex colors */
							if (preg_match_all('/(#[a-f0-9]{3,6})/i', $value, $colorMatch)) {
								for ($x = 0; $x < count($colorMatch[0]); $x++) {
									$matchLength = strlen($colorMatch[1][$x]);
									if ($matchLength == 7 || $matchLength == 4) {
										if ($matchLength == 4)
											$colorMatch[0][$x] = $colorMatch[0][$x].str_replace('#', '', $colorMatch[0][$x]);
										$this->addToMatchResults(
											array(
												'color' => strtolower($colorMatch[0][$x]),
												'stylesheet' => $cssFile,
												'class' => $className,
												'property' => $property,
												'value' => $value
											)
										);
									}
								}
							}
							/* named colors */
							else if (preg_match_all('/\b('.$this->colorRegex.')\b/i', $value, $colorMatch)) {
								for ($x = 0; $x < count($colorMatch[0]); $x++) {
									$this->addToMatchResults(
										array(
											'color' => strtolower($this->colorNames[$colorMatch[1][$x]]),
											'stylesheet' => $cssFile,
											'class' => $className,
											'property' => $property,
											'value' => $value
										)
									);
								}
							}
							/* rgb colors */
							else if (preg_match_all('/\brgba?\s?\(\s?(\d+)\s?,\s?(\d+)\s?,\s?(\d+)\s?(,\s?(\d+)\s?)?\)/i', $value, $colorMatch)) {
								for ($x = 0; $x < count($colorMatch[0]); $x++){
									$hexcolor = $this->rgb2hex($colorMatch[1][$x], $colorMatch[2][$x], $colorMatch[3][$x]);
									$this->addToMatchResults(
										array(
											'color' => '#'.$hexcolor,
											'stylesheet' => $cssFile,
											'class' => $className,
											'property' => $property,
											'value' => $value
										)
									);
								}
							}
						}
					}
				}
			}
		}

	}

	/**
	 * Sort $this->matchResults by HSV values
	 * @param Null
	 * @return Null
	 */
	protected function sortMatches() {
		if (count($this->matchResults) == 0) return array();

		foreach ($this->matchResults as $code => $matches) {
			$rgb = $this->hex2rgb($code);
			$order[] = $this->rgb2hsv($rgb[0], $rgb[1], $rgb[2]);
		}
		//Split each array up into H, S and V arrays
		foreach ($order as $k => $v) {
			$hue[$k] = $v[0];
			$sat[$k] = $v[1];
			$val[$k] = $v[2];
		}

		//Sort in ascending order by H, then S, then V and recompile the array
		array_multisort($hue, SORT_ASC, $sat, SORT_ASC, $val, SORT_ASC, $order);

		$output = array();
		foreach ($order as $k => $v) {
			list($hue,$sat,$val) = $v;
			$rgb = $this->hsv2rgb($hue,$sat,$val);
			$hexcolor = $this->rgb2hex($rgb[0], $rgb[1], $rgb[2]);
			$output[$hexcolor] = $this->matchResults[$hexcolor];
		}

		$this->matchResults = $output;
	}

	/**
	 * Add array to $this->matchResults
	 * @param Array $arr
	 * @return Null
	 */
	protected function addToMatchResults(Array $arr) {
		$color = str_replace('#', '', $arr['color']);
		if (!isset($this->matchResults[$color])) $this->matchResults[$color] = array();
		array_push($this->matchResults[$color], $arr);
	}

	/**
	 * Return HTML code of $this->matchResults
	 * @return String HTML
	 */
	protected function displayColors(){
		$out = '';
		foreach ($this->matchResults as $color => $matches) {
			$out .= '		<div class="colorHolder">
			<div class="colorSwatch" style="background-color: #'.$color.'" onclick="ViewFiles(\''.$color.'\')"></div>
			<div class="colorName">#'.$color.'</div>
			<div class="colorToggle"><a href="javascript:ViewFiles(\''.$color.'\')">view '.count($matches).' matches</a></div>
			<div class="colorMatches" id="matches_'.$color.'">';
			foreach ($matches as $match){
				$out .= '<span class="colorFilename">'.$match['stylesheet']."</span>\n";
				$out .= "\t<span class=\"colorClass\">".preg_replace('/,/', ",\n\t   ", $match['class']) . "</span> {\n\t\t" .
					'<span class="colorProperty">'.htmlspecialchars($match['property']).'</span>: ' .
					'<span class="colorValue">'.htmlspecialchars($match['value'])."</span>;\n\t}\n";
			}
			$out .= '</div></div>';
		}
		return $out;
	}

	/**
	 * Clean CSS code, strip comments & format one style per line
	 * @param String $buffer
	 * @return String
	 */
	public function cssPrepare($buffer) {
		$buffer = preg_replace('!/\*[^*]*\*+([^/][^*]*\*+)*/!', '', $buffer); // Strip out comments
		$buffer = str_replace(array("\r\n", "\r", "\n", "\t"), '', $buffer);
		$buffer = preg_replace('/\s+/', ' ', $buffer);
		$buffer = preg_replace('/,\s/', ',', $buffer);
		$buffer = preg_replace('/\s?\:\s?/', ':', $buffer);
		$buffer = preg_replace('/\s?\;\s?/', ';', $buffer);
		$buffer = preg_replace('/\s?\{\s?/', '{', $buffer);
		$buffer = preg_replace('/\s?\}\s?/', '}', $buffer);
		$buffer = preg_replace('/\;?\}\s?/', ';}', $buffer);
		$buffer = preg_replace('/\}/', "}\n", $buffer); // each entry on one line
		return trim($buffer);
	}

	/**
	 * Convert RGB array to hexidecimal string
	 * @param Array(red, green, blue)
	 * @return String
	 */
	public function rgb2hex($r, $g, $b) {
		$out = "";
		foreach (array($r, $g, $b) as $c) {
			$hex = base_convert($c, 10, 16);
			$out .= ($c < 16) ? ("0".$hex) : $hex;
		}
		return $out;
	}

	/**
	 * Convert hexidecimal string to RGB array
	 * @param String
	 * @return Array(red, green, blue)
	 */
	public function hex2rgb($hex) {
		$hex = str_replace("#", "", $hex);

		if (strlen($hex) == 3) {
			$r = hexdec(substr($hex,0,1).substr($hex,0,1));
			$g = hexdec(substr($hex,1,1).substr($hex,1,1));
			$b = hexdec(substr($hex,2,1).substr($hex,2,1));
		} else {
			$r = hexdec(substr($hex,0,2));
			$g = hexdec(substr($hex,2,2));
			$b = hexdec(substr($hex,4,2));
		}
		return array($r, $g, $b);
	}

	/**
	 * Convert RGB array to HSV array
	 * @param Array(red, green, blue)
	 * @return Array(hue, saturation, value)
	 */
	public function rgb2hsv($r,$g,$b) {
		//Convert RGB to HSV
		$r /= 255;
		$g /= 255;
		$b /= 255;
		$min = min($r,$g,$b);
		$max = max($r,$g,$b);

		switch($max) {
			case 0:
				$h = $s = $v = 0;
				break;
			case $min:
				$h = $s = 0;
				$v = $max;
				break;
			default:
				$delta = $max - $min;
			if ($r == $max)
				$h = 0 + ($g - $b) / $delta;
			else if ($g == $max)
				$h = 2 + ($b - $r) / $delta;
			else
				$h = 4 + ($r - $g) / $delta;
			$h *= 60;
			if ($h < 0 ) $h += 360;
			$s = $delta / $max;
			$v = $max;
		}
		return array($h,$s,$v);
	}

	/**
	 * Convert HSV array to RGB array
	 * @param Array(hue, saturation, value)
	 * @return Array(red, green, blue)
	 */
	public function hsv2rgb($h,$s,$v) {
		//Convert HSV to RGB
		if ($s == 0) {
			$r = $g = $b = $v;
		} else {
			$h /= 60.0;
			$s = $s;
			$v = $v;

			$hi = floor($h);
			$f = $h - $hi;
			$p = ($v * (1.0 - $s));
			$q = ($v * (1.0 - ($f * $s)));
			$t = ($v * (1.0 - ((1.0 - $f) * $s)));

			switch($hi) {
				case 0: $r = $v; $g = $t; $b = $p; break;
				case 1: $r = $q; $g = $v; $b = $p; break;
				case 2: $r = $p; $g = $v; $b = $t; break;
				case 3: $r = $p; $g = $q; $b = $v; break;
				case 4: $r = $t; $g = $p; $b = $v; break;
				default: $r = $v; $g = $p; $b = $q; break;
			}
		}
		return array(
			(integer) ($r * 255 + 0.5),
			(integer) ($g * 255 + 0.5),
			(integer) ($b * 255 + 0.5)
		);
	}


	/**
	 * Return an array of colour names and their hexidecimal values
	 * @return Array
	 */
	protected function genColorNames() {
		return array(
			"aliceblue"	=>	"#f0f8ff",
			"antiquewhite"	=>	"#faebd7",
			"aqua"	=>	"#00ffff",
			"aquamarine"	=>	"#7fffd4",
			"azure"	=>	"#f0ffff",
			"beige"	=>	"#f5f5dc",
			"bisque"	=>	"#ffe4c4",
			"black"	=>	"#000000",
			"blanchedalmond"	=>	"#ffebcd",
			"blue"	=>	"#0000ff",
			"blueviolet"	=>	"#8a2be2",
			"brown"	=>	"#a52a2a",
			"burlywood"	=>	"#deb887",
			"cadetblue"	=>	"#5f9ea0",
			"chartreuse"	=>	"#7fff00",
			"chocolate"	=>	"#d2691e",
			"coral"	=>	"#ff7f50",
			"cornflowerblue"	=>	"#6495ed",
			"cornsilk"	=>	"#fff8dc",
			"crimson"	=>	"#dc143c",
			"cyan"	=>	"#00ffff",
			"darkblue"	=>	"#00008b",
			"darkcyan"	=>	"#008b8b",
			"darkgoldenrod"	=>	"#b8860b",
			"darkgray"	=>	"#a9a9a9",
			"darkgrey"	=>	"#a9a9a9",
			"darkgreen"	=>	"#006400",
			"darkkhaki"	=>	"#bdb76b",
			"darkmagenta"	=>	"#8b008b",
			"darkolivegreen"	=>	"#556b2f",
			"darkorange"	=>	"#ff8c00",
			"darkorchid"	=>	"#9932cc",
			"darkred"	=>	"#8b0000",
			"darksalmon"	=>	"#e9967a",
			"darkseagreen"	=>	"#8fbc8f",
			"darkslateblue"	=>	"#483d8b",
			"darkslategray"	=>	"#2f4f4f",
			"darkslategrey"	=>	"#2f4f4f",
			"darkturquoise"	=>	"#00ced1",
			"darkviolet"	=>	"#9400d3",
			"deeppink"	=>	"#ff1493",
			"deepskyblue"	=>	"#00bfff",
			"dimgray"	=>	"#696969",
			"dimgrey"	=>	"#696969",
			"dodgerblue"	=>	"#1e90ff",
			"firebrick"	=>	"#b22222",
			"floralwhite"	=>	"#fffaf0",
			"forestgreen"	=>	"#228b22",
			"fuchsia"	=>	"#ff00ff",
			"gainsboro"	=>	"#dcdcdc",
			"ghostwhite"	=>	"#f8f8ff",
			"gold"	=>	"#ffd700",
			"goldenrod"	=>	"#daa520",
			"gray"	=>	"#808080",
			"grey"	=>	"#808080",
			"green"	=>	"#008000",
			"greenyellow"	=>	"#adff2f",
			"honeydew"	=>	"#f0fff0",
			"hotpink"	=>	"#ff69b4",
			"indianred "	=>	"#cd5c5c",
			"indigo "	=>	"#4b0082",
			"ivory"	=>	"#fffff0",
			"khaki"	=>	"#f0e68c",
			"lavender"	=>	"#e6e6fa",
			"lavenderblush"	=>	"#fff0f5",
			"lawngreen"	=>	"#7cfc00",
			"lemonchiffon"	=>	"#fffacd",
			"lightblue"	=>	"#add8e6",
			"lightcoral"	=>	"#f08080",
			"lightcyan"	=>	"#e0ffff",
			"lightgoldenrodyellow"	=>	"#fafad2",
			"lightgray"	=>	"#d3d3d3",
			"lightgrey"	=>	"#d3d3d3",
			"lightgreen"	=>	"#90ee90",
			"lightpink"	=>	"#ffb6c1",
			"lightsalmon"	=>	"#ffa07a",
			"lightseagreen"	=>	"#20b2aa",
			"lightskyblue"	=>	"#87cefa",
			"lightslategray"	=>	"#778899",
			"lightslategrey"	=>	"#778899",
			"lightsteelblue"	=>	"#b0c4de",
			"lightyellow"	=>	"#ffffe0",
			"lime"	=>	"#00ff00",
			"limegreen"	=>	"#32cd32",
			"linen"	=>	"#faf0e6",
			"magenta"	=>	"#ff00ff",
			"maroon"	=>	"#800000",
			"mediumaquamarine"	=>	"#66cdaa",
			"mediumblue"	=>	"#0000cd",
			"mediumorchid"	=>	"#ba55d3",
			"mediumpurple"	=>	"#9370db",
			"mediumseagreen"	=>	"#3cb371",
			"mediumslateblue"	=>	"#7b68ee",
			"mediumspringgreen"	=>	"#00fa9a",
			"mediumturquoise"	=>	"#48d1cc",
			"mediumvioletred"	=>	"#c71585",
			"midnightblue"	=>	"#191970",
			"mintcream"	=>	"#f5fffa",
			"mistyrose"	=>	"#ffe4e1",
			"moccasin"	=>	"#ffe4b5",
			"navajowhite"	=>	"#ffdead",
			"navy"	=>	"#000080",
			"oldlace"	=>	"#fdf5e6",
			"olive"	=>	"#808000",
			"olivedrab"	=>	"#6b8e23",
			"orange"	=>	"#ffa500",
			"orangered"	=>	"#ff4500",
			"orchid"	=>	"#da70d6",
			"palegoldenrod"	=>	"#eee8aa",
			"palegreen"	=>	"#98fb98",
			"paleturquoise"	=>	"#afeeee",
			"palevioletred"	=>	"#db7093",
			"papayawhip"	=>	"#ffefd5",
			"peachpuff"	=>	"#ffdab9",
			"peru"	=>	"#cd853f",
			"pink"	=>	"#ffc0cb",
			"plum"	=>	"#dda0dd",
			"powderblue"	=>	"#b0e0e6",
			"purple"	=>	"#800080",
			"red"	=>	"#ff0000",
			"rosybrown"	=>	"#bc8f8f",
			"royalblue"	=>	"#4169e1",
			"saddlebrown"	=>	"#8b4513",
			"salmon"	=>	"#fa8072",
			"sandybrown"	=>	"#f4a460",
			"seagreen"	=>	"#2e8b57",
			"seashell"	=>	"#fff5ee",
			"sienna"	=>	"#a0522d",
			"silver"	=>	"#c0c0c0",
			"skyblue"	=>	"#87ceeb",
			"slateblue"	=>	"#6a5acd",
			"slategray"	=>	"#708090",
			"slategrey"	=>	"#708090",
			"snow"	=>	"#fffafa",
			"springgreen"	=>	"#00ff7f",
			"steelblue"	=>	"#4682b4",
			"tan"	=>	"#d2b48c",
			"teal"	=>	"#008080",
			"thistle"	=>	"#d8bfd8",
			"tomato"	=>	"#ff6347",
			"turquoise"	=>	"#40e0d0",
			"violet"	=>	"#ee82ee",
			"wheat"	=>	"#f5deb3",
			"white"	=>	"#ffffff",
			"whitesmoke"	=>	"#f5f5f5",
			"yellow"	=>	"#ffff00",
			"yellowgreen"	=>	"#9acd32"
		);
	}

}
