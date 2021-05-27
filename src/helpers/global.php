<?php
// SPDX-License-Identifier: GPL-2.0

/**
 * @param string  $str
 * @param string  $key
 * @param ?string $iv
 * @return string
 */
function aes_encrypt(string $str, string $key, ?string $iv = null): string
{
	$key = hash("sha256", $key, true);

	if (is_null($iv)) {
		$iv = openssl_random_pseudo_bytes(16);
		$ret = @openssl_encrypt($str, "AES-256-CBC", $key, 1, $iv).$iv;
	} else {
		$ret = @openssl_encrypt($str, "AES-256-CBC", $key, 1, $iv);
	}

	return base64_encode($ret);
}


/**
 * @param string  $str
 * @param string  $key
 * @param ?string $iv
 * @return ?string
 */
function aes_decrypt(string $str, string $key, ?string $iv = null): ?string
{
	$key = hash("sha256", $key, true);
	$str = base64_decode($str);

	if (is_null($iv)) {
		$iv = substr($str, -16);
		$str = substr($str, 0, -16);
	}

	$ret = @openssl_decrypt($str, "AES-256-CBC", $key, 1, $iv);
	return is_string($ret) ? $ret : null;
}

/**
 * @param int     $n
 * @param ?string $e
 * @return string
 */
function rstr(int $n, ?string $e = null): string
{
	if (is_null($e))
		$e = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOASDFGHJKLZXCVBNM1234567890_.";

	$r = "";
	$c = strlen($e) - 1;
	$n = abs($n) & 0xffff;
	for ($i = 0; $i < $n; $i++)
		$r .= $e[rand(0, $c)];

	return $r;
}
