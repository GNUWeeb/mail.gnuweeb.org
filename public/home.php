<?php
// SPDX-License-Identifier: GPL-2.0


require_once __DIR__."/../init/web.php";

sess_start();

if (!isset($_SESSION["user"])) {
	header("Location: login.php?ref=home&w=".rstr(32));
	exit;
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>GNUWeeb Mail</title>
	<link rel="stylesheet" type="text/css" href="assets/css/base.css"/>
</head>
<body>
	<center>
	<a href="logout.php"><h3>Logout</h3></a>
	<h2>Hi <?php echo htmlspecialchars($_SESSION["user"]["first_name"]); ?>!</h2>
	<h2>This is just emergency web view to change password, it is still under development</h2>
	<h1>Change Password</h1>
	<form method="post" action="passwd.php">
		<table>
			<tr><td>Current Password</td><td>:</td><td><input type="password" name="old_password" required="1"/></td></tr>
			<tr><td>New Password</td><td>:</td><td><input type="password" name="new_password" required="1"/></td></tr>
			<tr><td>Retype New Password</td><td>:</td><td><input type="password" name="cnew_password" required="1"/></td></tr>
			<tr><td align="center" colspan="3"><input type="submit" name="Submit"/></td></tr>
		</table>
	</form>
	<h2>If you lost your password, contact @Mysticial on GNUWeeb</h2>
	</center>
</body>
</html>