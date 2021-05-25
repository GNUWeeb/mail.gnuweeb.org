<?php


$pfpdo = NULL;
try {
	$pfpdo = new PDO(...PF_PDO_PARAM);
	$pfpdo->prepare(<<<SQL
		INSERT INTO `mailbox`
		(
			`username`,
			`password`,
			`name`,
			`maildir`,
			`quota`,
			`local_part`,
			`domain`,
			`created`,
			`modified`,
			`active`,
			`phone`,
			`email_other`,
			`token`,
			`token_validity`
		)
		VALUES
		(
			?,	# username
			?,	# password
			?,	# name
			?,	# maildir
			?,	# quota
			?,	# local_part
			?,	# domain
			?,	# created
			?,	# modified
			?,	# active
			?,	# phone
			?,	# email_other
			?,	# token
			?	# token_validity
		);
	SQL)->execute([
		$p["username"]."@gnuweeb.org",
		"{CRYPT}".$bcrypted,
		$p["first_name"].(isset($p["last_name"]) ? " ".$p["last_name"] : ""),
		"gnuweeb.org/".$p["username"]."/",
		0,
		$p["username"],
		"gnuweeb.org",
		$createdAt,
		$createdAt,
		1,
		"",
		"",
		"",
		$createdAt
	]);
} catch (PDOException $e) {
	unset($pfpdo);
	throw $e;
}

unset($pfpdo);
