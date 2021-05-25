<?php


$ch = curl_init("https://captcha.teainside.org/api.php?key=abc123&action=get_captcha&type=calculus&level=1");
curl_setopt_array($ch, [CURLOPT_RETURNTRANSFER => true]);
$out = curl_exec($ch);
if ($out === false) {
	http_response_code(500);
	echo "curl_exec() returned false";
	exit;
}

$out = json_decode($out, true);

if (!isset($out["correct_answer"], $out["msg"], $out["latex"])) {
	http_response_code(500);
	echo "Invalid JSON from captcha API";
	exit;
}

header("Content-Type: application/json");
echo json_encode([
	"key" => aes_encrypt(
		json_encode([
			"created_at" => time(),
			"answer" => $out["correct_answer"]
		]),
		APP_KEY
	),
	"img" => aes_encrypt("salt__".$out["latex"], APP_KEY),
	"msg" => $out["msg"],
], JSON_UNESCAPED_SLASHES);
