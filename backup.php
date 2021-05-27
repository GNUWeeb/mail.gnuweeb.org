<?php
// SPDX-License-Identifier: GPL-2.0

/*
 * Copyright (C) 2021 Ammar Faizi <ammarfaizi2@gmail.com>
 */

$botToken = getenv("TG_BOT_TOKEN");
if (empty($botToken)) {
	printf("Cannot find TG_BOT_TOKEN env var\n");
	exit(1);
}

$channelId = getenv("TG_CHANNEL_ID");
if (empty($botToken)) {
	printf("Cannot find TG_CHANNEL_ID env var\n");
	exit(1);
}

require __DIR__."/config.php";
$e = [];
$startTime = microtime(true);
$now = date("Y_m_d__H_i_s");


/*
 * Backup gnuweeb database.
 */
$targetFile  = "/tmp/gnuweeb_{$now}.sql.gz";
$dumpCmd     = "exec mysqldump --default-character-set=utf8mb4 --hex-blob";
$dumpCmd    .= " -h".escapeshellarg(DB_HOST);
$dumpCmd    .= " -P".escapeshellarg(DB_PORT);
$dumpCmd    .= " -u".escapeshellarg(DB_USER);
$dumpCmd    .= " -p".escapeshellarg(DB_PASS);
$dumpCmd    .= " ".escapeshellarg(DB_NAME);
$dumpCmd    .= " | gzip -9c > ".escapeshellarg($targetFile);
$dumpCmd    .= " 2>&1";
$e[] = exec_cmd($dumpCmd, $targetFile);


/*
 * Backup postfixadmin database.
 */
if (USE_POSTFIX):
$targetFile  = "/tmp/postfixadmin_{$now}.sql.gz";
$dumpCmd     = "exec mysqldump --default-character-set=utf8mb4 --hex-blob";
$dumpCmd    .= " -h".escapeshellarg(PF_DB_HOST);
$dumpCmd    .= " -P".escapeshellarg(PF_DB_PORT);
$dumpCmd    .= " -u".escapeshellarg(PF_DB_USER);
$dumpCmd    .= " -p".escapeshellarg(PF_DB_PASS);
$dumpCmd    .= " ".escapeshellarg(PF_DB_NAME);
$dumpCmd    .= " | gzip -9c > ".escapeshellarg($targetFile);
$dumpCmd    .= " 2>&1";
$e[] = exec_cmd($dumpCmd, $targetFile);
endif;


$endTime = microtime(true);

$totalTime = $totalSize = 0;
$st1 = "<b>[Time taken for each job]</b>\n";
$st2 = "<b>[File size for each job]</b>\n";
foreach ($e as $k => $v) {
	$st1 .= "<b>{$v["fname"]}:</b> <code>{$v["time"]}</code> s\n";
	$totalTime += $v["time"];

	$st2 .= "<b>{$v["fname"]}:</b> <code>{$v["size"]}</code> bytes\n";
	$totalSize += $v["size"];
}

$st1 .= "\n<b>Total time:</b> <code>{$totalTime}</code> s\n";
$st1 .= "<b>Wall time:</b> <code>".($endTime - $startTime)."</code> s\n";

$st2 .= "\n<b>Total size:</b> <code>{$totalSize}</code> bytes";

sendMsg($st1);
sendMsg($st2);
sendMsg("==========================");

function exec_cmd(string $dumpCmd, string $targetFile)
{
	global $botToken, $channelId;

	echo $dumpCmd."\n";

	$startTime = microtime(true);
	echo shell_exec($dumpCmd);

	$size       = filesize($targetFile);
	$md5sum     = md5_file($targetFile);
	$sha1sum    = sha1_file($targetFile);
	$bsfilename = basename($targetFile);
	$datetime   = date("c");

	$caption = <<<CAPTION
<b>Datetime:</b> <code>{$datetime}</code>
<b>File name:</b> <code>{$bsfilename}</code>
<b>File size:</b> <code>{$size}</code> bytes
<b>MD5 sum:</b> <code>{$md5sum}</code>
<b>SHA1 sum:</b> <code>{$sha1sum}</code>
CAPTION;

	$ch = curl_init("https://api.telegram.org/bot{$botToken}/sendDocument");
	curl_setopt_array($ch,
		[
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_POST => true,
			CURLOPT_POSTFIELDS => [
				"chat_id" => $channelId,
				"document" => new \CurlFile($targetFile),
				"caption" => $caption,
				"parse_mode" => "HTML"
			]
		]
	);
	echo curl_exec($ch)."\n";
	curl_close($ch);
	$endTime = microtime(true);

	return [
		"fname" => $bsfilename,
		"size" => $size,
		"time" => $endTime - $startTime
	];
}


function sendMsg(string $msg)
{
	global $botToken, $channelId;
	$ch = curl_init("https://api.telegram.org/bot{$botToken}/sendMessage");
	curl_setopt_array($ch,
		[
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_POST => true,
			CURLOPT_POSTFIELDS => [
				"chat_id" => $channelId,
				"text" => $msg,
				"parse_mode" => "HTML"
			]
		]
	);
	echo curl_exec($ch)."\n";
	curl_close($ch);
}
