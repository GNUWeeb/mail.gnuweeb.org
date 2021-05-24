<?php

require __DIR__."/../init/web.php";

session_start();

if (isset($_SESSION["user"])) {
	header("Location: home.php");
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
			<div>Username:</div>
			<div><input type="text" name="username"/></div>
		</form>
	</div>
</body>
</html>
