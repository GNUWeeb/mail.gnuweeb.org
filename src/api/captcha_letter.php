<?php

/**
 * @param int $val
 * @return array
 */
function hextorgb(int $val): array
{
	return [
		"red" => 0xff & ($val >> 0x10),
		"green" => 0xff & ($val >> 0x8),
		"blue" => 0xff & $val
	];
}

/**
 * @param string $captcha_code
 * @return bool
 */
function make_captcha(string $captcha_code): bool
{
	$captcha_image_height = 105;
	$captcha_image_width = 400;
	$total_characters_on_image = 6;

	$captcha_font = STORAGE_PATH."/fonts/monofont.ttf";

	$random_captcha_dots = 1000;
	$random_captcha_lines = 200;
	$captcha_text_color = 0x580459;
	$captcha_noise_color = $captcha_text_color;

	$captcha_font_size = $captcha_image_height * 0.65;
	$captcha_image = @imagecreate($captcha_image_width, $captcha_image_height);

	/* setting the background, text and noise colours here */
	$background_color = imagecolorallocate($captcha_image, 255, 255, 255);
	$array_text_color = hextorgb($captcha_text_color);
	$captcha_text_color = imagecolorallocate(
		$captcha_image, $array_text_color['red'],
		$array_text_color['green'], $array_text_color['blue']);

	$array_noise_color = hextorgb($captcha_noise_color);
	$image_noise_color = imagecolorallocate(
		$captcha_image,
		$array_noise_color['red'],
		$array_noise_color['green'],
		$array_noise_color['blue']
	);

	/* Generate random dots in background of the captcha image */
	for( $count=0; $count<$random_captcha_dots; $count++ ) {
		imagefilledellipse(
			$captcha_image,
			mt_rand(0, $captcha_image_width),
			mt_rand(0, $captcha_image_height),
			2, 3, $image_noise_color
		);
	}

	/* Generate random lines in background of the captcha image */
	for( $count=0; $count<$random_captcha_lines; $count++ ) {
		imageline(
			$captcha_image,
			mt_rand(0,$captcha_image_width),
			mt_rand(0,$captcha_image_height),
			mt_rand(0,$captcha_image_width),
			mt_rand(0,$captcha_image_height),
			$image_noise_color
		);
	}

	/* Create a text box and add 6 captcha letters code in it */
	$text_box = imagettfbbox(
		$captcha_font_size,
		0,
		$captcha_font,
		$captcha_code
	);
	$x = ($captcha_image_width - $text_box[4])/2;
	$y = ($captcha_image_height - $text_box[5])/2;
	imagettftext(
		$captcha_image, $captcha_font_size, 0, $x, $y,
		$captcha_text_color, $captcha_font, $captcha_code
	);

	$st = imagejpeg($captcha_image);
	imagedestroy($captcha_image);
	return $st;
}
