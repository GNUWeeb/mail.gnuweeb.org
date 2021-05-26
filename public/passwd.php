<?php

require __DIR__."/../init/web.php";

sess_start();

$p = $_POST;
$code = 200;
$msg = "Password changed successfully!";
$red = NULL;

if (!isset($p["old_password"]) || !is_string($p["old_password"])) {
	$code = 400;
	$msg = "Missing old_password string parameter";
	goto out;
}

if (!isset($p["new_password"]) || !is_string($p["new_password"])) {
	$code = 400;
	$msg = "Missing new_password string parameter";
	goto out;
}

if (!isset($p["cnew_password"]) || !is_string($p["cnew_password"])) {
	$code = 400;
	$msg = "Missing cnew_password string parameter";
	goto out;
}

$inTrx = false;
$st = $pdo = NULL;
try {
	$pdo = DB::pdo();

	$pdo->beginTransaction();
	$inTrx = true;
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
		WHERE a.id = ?
		LIMIT 1
	SQL);

	$st->execute([$_SESSION["user"]["id"]]);
	if (!($r = $st->fetch(PDO::FETCH_ASSOC))) {
		$code = 400;
		$msg = "Invalid session!";
		session_destroy();
		header("Location: login.php?ref=passwd&w=".rstr(32));
		exit;
	}

	$userKey  = aes_decrypt($r["user_key"], $r["created_at"]);
	$password = aes_decrypt($r["password"], $userKey);

	if ($password !== $p["old_password"]) {
		$code = 400;
		$msg = "Wrong old password!";
		goto out_close;
	}


	$c = strlen($p["new_password"]);
	if ($c < 6) {
		$code = 400;
		$msg = "New password must be at least 6 characters";
		goto out;
	}
	if ($c > 512) {
		$code = 400;
		$msg = "New password must not be longer than 512 characters";
		goto out;
	}

	if ($p["new_password"] !== $p["cnew_password"]) {
		$code = 400;
		$msg = "Retype new password must be identical with new password";
		goto out;
	}

	$createdAt = $r["created_at"];
	$userKey = aes_decrypt($r["user_key"], $createdAt);
	$bcrypted = password_hash($p["new_password"], PASSWORD_BCRYPT, ["cost" => 5]);
	$p["new_password"] = aes_encrypt($p["new_password"], $userKey);

	$pdo->prepare(<<<SQL
		UPDATE users SET password = ?, updated_at = ? WHERE id = ? LIMIT 1
	SQL)->execute([$p["new_password"], date("Y-m-d H:i:s"), $_SESSION["user"]["id"]]);

	if (USE_POSTFIX)
		require __DIR__."/postfix_update.php";

	$pdo->commit();
	$inTrx = false;
	$_SESSION["user"] = $r;
	$red = "home.php";
} catch (PDOException $e) {
	if ($pdo && $inTrx)
		$pdo->rollback();
	$code = 500;
	$msg = "Error: PDOException: ".$e->getMessage();
} catch (Error $e) {
	if ($inTrx && $pdo)
		$pdo->rollback();
	$code = 500;
	$msg = "Error: ".$e->getMessage();
}

out_close:
unset($st);
unset($pdo);

out:
http_response_code($code);
?><!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<script type="text/javascript">
	alert("<?php echo $msg; ?>");
	window.location = "home.php";
</script>
</body>
</html>
