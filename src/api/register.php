<?php

$p = $_POST;
$code = 200;
$msg = "Registration success!";
$red = NULL;

if (!isset($p["first_name"]) || !is_string($p["first_name"])) {
	$code = 400;
	$msg = "Missing first_name string parameter";
	goto out;
}

if (isset($p["last_name"]) && !is_string($p["last_name"])) {
	$code = 400;
	$msg = "last_name is not mandatory, but when it is given, it must be a string";
	goto out;
}

if (!isset($p["gender"]) || !is_string($p["gender"])) {
	$code = 400;
	$msg = "Missing gender string parameter";
	goto out;
}

if (isset($p["github_username"]) && !is_string($p["github_username"])) {
	$code = 400;
	$msg = "github_username is not mandatory, but when it is given, it must be a string";
	goto out;
}

if (!isset($p["username"]) || !is_string($p["username"])) {
	$code = 400;
	$msg = "Missing username string parameter";
	goto out;
}

if (!isset($p["password"]) || !is_string($p["password"])) {
	$code = 400;
	$msg = "Missing password string parameter";
	goto out;
}

if (!isset($p["cpassword"]) || !is_string($p["cpassword"])) {
	$code = 400;
	$msg = "Missing cpassword string parameter";
	goto out;
}

if (!isset($p["captcha_key"]) || !is_string($p["captcha_key"])) {
	$code = 400;
	$msg = "Missing captcha_key string parameter";
	goto out;
}

if (!isset($p["captcha_answer"]) || !is_string($p["captcha_answer"])) {
	$code = 400;
	$msg = "Missing captcha_answer string parameter";
	goto out;
}


$p["first_name"] = trim($p["first_name"]);
$c = strlen($p["first_name"]);
if ($c === 0) {
	$code = 400;
	$msg = "first_name cannot be empty!";
	goto out;
}
if ($c > 72) {
	$code = 400;
	$msg = "first_name is too long, max 72 characters, {$c} given";
	goto out;
}


if (isset($p["last_name"])) {
	$p["last_name"] = trim($p["last_name"]);
	$c = strlen($p["last_name"]);
	if ($c == 0)
		$p["last_name"] = NULL;
	if ($c > 72) {
		$code = 400;
		$msg = "last_name is too long, max 72 characters, {$c} given";
		goto out;
	}
}

if (($p["gender"] !== "male") && ($p["gender"] !== "female") && ($p["gender"] !== "secret")) {
	$code = 400;
	$msg = "gender contains invalid value";
	goto out;
}

if (isset($p["github_username"])) {
	$p["github_username"] = trim($p["github_username"]);
	$c = strlen($p["github_username"]);
	if ($c == 0) {
		$p["github_username"] = NULL;
	} else if (!preg_match('/^\@?[a-zA-Z0-9\-\_]{2,72}$/', $p["github_username"])) {
		$code = 400;
		$msg = "github_username must match the following regex pattern ^\\@?[a-zA-Z0-9\\-\\_]{2,72}\$";
		goto out;
	}
}

$p["username"] = trim($p["username"]);
$c = strlen($p["username"]);
if ($c === 0) {
	$code = 400;
	$msg = "username cannot be empty!";
	goto out;
}
if (!preg_match('/^[a-zA-Z0-9][a-zA-Z0-9\_\.]{1,64}[a-zA-Z0-9]$/', $p["username"])) {
	$code = 400;
	$msg = "Email user (username) must match the following regex pattern ^[a-zA-Z0-9][a-zA-Z0-9\\_\\.]{1,64}[a-zA-Z0-9]$";
	goto out;
}

$c = strlen($p["password"]);
if ($c < 6) {
	$code = 400;
	$msg = "Password must be at least 6 characters";
	goto out;
}
if ($c > 512) {
	$code = 400;
	$msg = "Password must not be longer than 512 characters";
	goto out;
}

if ($p["password"] !== $p["cpassword"]) {
	$code = 400;
	$msg = "Retype password must be identical with password";
	goto out;
}


$cc = aes_decrypt($p["captcha_key"], APP_KEY);
if (!$cc || (substr($cc, 0, 6) !== "salt__")) {
	$code = 400;
	$msg = "Invalid captcha_key";
	goto out;
}

if (substr($cc, 6) !== trim($p["captcha_answer"])) {
	$code = 400;
	$msg = "Wrong captcha answer!";
	goto out;
}

out:
header("Content-Type: application/json");
http_response_code($code);
echo json_encode([
	"code" => $code,
	"msg" => $msg,
	"red" => $red
]);
