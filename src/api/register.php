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

switch ($p["gender"]) {
case "male":
	$p["gender"] = "m";
	break;
case "female":
	$p["gender"] = "f";
	break;
case "secret":
	$p["gender"] = "u";
	break;
default:
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

$p["username"] = strtolower(trim($p["username"]));
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


$cc = $p["captcha_key"];
if (!isset($_SESSION["captcha_key"]) || ($cc !== $_SESSION["captcha_key"])) {
	/* Oops... someone is trying to bypass our captcha session :) */
	$code = 400;
	$msg = "Invalid captcha_key";
	goto out;
}


$cc = aes_decrypt($cc, APP_KEY);
if (!$cc) {
	$code = 400;
	$msg = "Invalid captcha_key";
	goto out;
}

$cc = json_decode($cc, true);
if (!isset($cc["created_at"], $cc["answer"]) ||
	!is_int($cc["created_at"])) {
	$code = 400;
	$msg = "Invalid captcha_key";
	goto out;
}


$now = time();
$diff = $now - $cc["created_at"];
$maxDiff = 600;
if ($diff > $maxDiff) {
	$code = 400;
	$msg = "Captcha has been expired, please reload the captcha! (expire in {$maxDiff} seconds)";
	goto out;
}


if (((string)$cc["answer"]) !== trim($p["captcha_answer"])) {
	$code = 400;
	$msg = "Wrong captcha answer!";
	goto out;
}


$st = $pdo = NULL;
try {
	$pdo = DB::pdo();

	$st = $pdo->prepare("SELECT `username` FROM `users` WHERE `username` = ?");
	$st->execute([$p["username"]]);
	if ($r = $st->fetch(PDO::FETCH_NUM)) {
		$code = 400;
		$msg = "Username \"{$p["username"]}\" has already been registered, please use another username.";
		goto out_close;
	}

	$createdAt = date("Y-m-d H:i:s");
	$userKey = rstr(255);
	$encryptedUserKey = aes_encrypt($userKey, $createdAt);
	$p["password"] = aes_encrypt($p["password"], $userKey);
	$bcrypted = password_hash($p["password"], PASSWORD_BCRYPT);

	$pdo->beginTransaction();

	$pdo->prepare(<<<SQL
		INSERT INTO `users`
		(
			`id`,
			`first_name`,
			`last_name`,
			`username`,
			`password`,
			`gender`,
			`github_username`,
			`created_at`,
			`updated_at`
		)
		VALUES
		(
			NULL,	# id
			?,	# first_name
			?,	# last_name
			?,	# username
			?,	# password
			?,	# gender
			?,	# github_username
			?,	# created_at
			NULL	# updated_at
		);
	SQL)->execute([
		$p["first_name"],
		$p["last_name"],
		$p["username"],
		$p["password"],
		$p["gender"],
		$p["github_username"],
		$createdAt
	]);

	$userId = $pdo->lastInsertId();
	$pdo->prepare(<<<SQL
		INSERT INTO `user_keys` (`id`, `user_id`, `data`) VALUES (NULL, ?, ?);
	SQL)->execute([
		$userId,
		$encryptedUserKey
	]);

	if (USE_POSTFIX)
		require __DIR__."/postfix_insert.php";

	$pdo->commit();

	/* Kill the captcha session! */
	unset($_SESSION["captcha_key"]);

	$red = "login.php?ref=register&w=".rstr(64);
} catch (PDOException $e) {
	if ($pdo)
		$pdo->rollback();
	$code = 500;
	$msg = "Error: PDOException: ".$e->getMessage();
} catch (Error $e) {
	if ($pdo)
		$pdo->rollback();
	$code = 500;
	$msg = "Error: ".$e->getMessage();
}

out_close:
unset($st);
unset($pdo);

out:
header("Content-Type: application/json");
http_response_code($code);
echo json_encode([
	"code" => $code,
	"msg" => $msg,
	"red" => $red
]);
