<?php


if (!(isset($_GET["content"]) && is_string($_GET["content"]))) {
	http_response_code(400);
	exit;
}

$data = aes_decrypt($_GET["content"], APP_KEY);
if (!is_string($data)) {
	http_response_code(400);
	exit;
}

if (substr($data, 0, 6) !== "salt__") {
	http_response_code(400);
	exit;
}

$data = substr($data, 6);
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
				"d" => 300
			]
		)
	]
);

$out = curl_exec($ch);

if (!$out) {
	http_response_code(500);
	exit;
}

header("Content-Type: application/json");
echo $out;
