<?php


if (!(isset($_GET["content"]) && is_string($_GET["content"]))) {
	http_response_code(400);
	echo "Missing content parameter";
	exit;
}

$data = aes_decrypt($_GET["content"], APP_KEY);
if (!is_string($data)) {
	http_response_code(400);
	echo "Invalid content";
	exit;
}

if (substr($data, 0, 6) !== "salt__") {
	http_response_code(400);
	echo "Invalid salt__";
	exit;
}
$data = substr($data, 6);


if (!isset($_GET["extreme"])) {
	require __DIR__."/captcha_letter.php";
	header("Content-Type: image/jpeg");
	make_captcha($data);
	exit;
}


$begin = <<<LATEX
\\documentclass[12pt]{article}
\\usepackage{amsmath}
\\usepackage{amssymb}
\\usepackage{amsfonts}
\\usepackage{cancel}
\\usepackage{color}
\\usepackage{xcolor}
\\definecolor{my_custom_green}{HTML}{1f8012}
\\usepackage[utf8]{inputenc}
\\thispagestyle{empty}
\\begin{document}
\\begin{align*}
LATEX;

$end = <<<LATEX
\\end{align*}
\\end{document}

LATEX;


$ch = curl_init("https://latex.teainside.org/api.php?action=tex2png");
curl_setopt_array($ch,
	[
		CURLOPT_RETURNTRANSFER => true,
		CURLOPT_POST => true,
		CURLOPT_POSTFIELDS => json_encode(
			[
				"bcolor" => "white",
				"border" => "50x20",
				"content" => $begin.$data.$end,
				"d" => 250
			]
		)
	]
);

$out = curl_exec($ch);
curl_close($ch);

if (!$out) {
	http_response_code(500);
	exit;
}


$out = json_decode($out, true);
if (!isset($out["res"])) {
	http_response_code(500);
	exit;
}

header("Content-Type: image/png");
$ch = curl_init("https://latex.teainside.org/api.php?action=file&type=png&hash=".urlencode($out["res"]));
curl_setopt_array($ch,
	[
		CURLOPT_WRITEFUNCTION => function ($ch, $str) {
			echo $str;
			return strlen($str);
		}
	]
);
curl_exec($ch);
curl_close($ch);
