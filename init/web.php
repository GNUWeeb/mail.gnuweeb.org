<?php

require __DIR__."/global.php";

function sess_start()
{
	static $is_started = false;

	if (!$is_started) {
		$is_started = true;
		session_start();
	}
}
