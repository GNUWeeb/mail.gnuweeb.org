<?php
// SPDX-License-Identifier: GPL-2.0

require_once __DIR__."/../init/web.php";

sess_start();

if (isset($_SESSION["user"])) {
	header("Location: home.php&ref=login&w=".rstr(32));
	exit;
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>GNUWeeb Mail Login</title>
	<link rel="stylesheet" type="text/css" href="assets/css/base.css"/>
	<link rel="stylesheet" type="text/css" href="assets/css/login.css"/>
</head>
<body>
	<div class="login-cage">
		<form method="POST" action="javascript:void(0);">
			<h2>GNUWeeb Mail Login</h2>
			<div class="ilabel">Email or Username:</div>
			<div class="iinput"><input type="text" name="username" required="1"/></div>
			<div class="ilabel">Password:</div>
			<div class="iinput"><input type="password" name="password" required="1"></div>
			<div class="isubmit"><button type="submit">Login</button></div>
			<div class="ireg">Don't have an account? <a href="register.php?ref=login&<?= rstr(32) ?>">Register</a></div>
		</form>
	</div>
</body>
</html>
