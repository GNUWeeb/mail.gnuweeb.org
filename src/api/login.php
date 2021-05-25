<?php

$p = $_POST;
$code = 200;
$msg = "Login success!";
$red = NULL;

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

$st = $pdo = NULL;
try {
	$pdo = DB::pdo();

	$st = $pdo->prepare(<<<SQL
		SELECT
			a.id,
			a.first_name,
			a.last_name,
			a.username,
			a.password,
			a.created_at,
			b.data AS user_key
		FROM users AS a
		INNER JOIN user_keys AS b
		ON a.id = b.user_id
		WHERE a.username = ?
		LIMIT 1
	SQL);

	$st->execute([$p["username"]]);
	if (!($r = $st->fetch(PDO::FETCH_ASSOC))) {
		$code = 400;
		$msg = "Wrong email or password!";
		goto out_close;
	}

	$userKey  = aes_decrypt($r["user_key"], $r["created_at"]);
	$password = aes_decrypt($r["password"], $userKey);

	if ($password !== $p["password"]) {
		$code = 400;
		$msg = "Wrong email or password!";
		goto out_close;
	}

	$_SESSION["user"] = $r;
	$red = "home.php";

} catch (PDOException $e) {
	$code = 500;
	$msg = "Error: PDOException: ".$e->getMessage();
} catch (Error $e) {
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
