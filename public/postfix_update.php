<?php

require_once __DIR__."/../init/web.php";

sess_start();

if (!isset($_SESSION["user"])) {
	header("Location: login.php?ref=home&w=".rstr(32));
	exit;
}


$pfpdo = NULL;
try {
	$pfpdo = new PDO(...PF_PDO_PARAM);
	$pfpdo->prepare(<<<SQL
		UPDATE mailbox SET password = ? WHERE username = ?
	SQL)->execute(["{CRYPT}".$bcrypted, $r["username"]."@gnuweeb.org"]);
} catch (PDOException $e) {
	unset($pfpdo);
	throw $e;
}

unset($pfpdo);
