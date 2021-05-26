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
	<link rel="stylesheet" type="text/css" href="assets/css/home.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.00"/>
</head>
<body>
	<center>
	<a href="logout.php"><h3>Logout</h3></a>
	<h2>Hi <?php echo htmlspecialchars($_SESSION["user"]["first_name"]); ?>!</h2>
	<h2>This is just emergency web view to change password, it is still under development</h2>
	<div class="passwd-cage">
		<h1>Change Password</h1>
		<form method="post" action="passwd.php">
			<table>
				<tr><td>Old Password</td><td>:</td><td><input type="password" name="old_password" required="1"/></td></tr>
				<tr><td>New Password</td><td>:</td><td><input type="password" name="new_password" required="1"/></td></tr>
				<tr><td>Retype New Password</td><td>:</td><td><input type="password" name="cnew_password" required="1"/></td></tr>
				<tr><td align="center" style="padding-top: 20px;" colspan="3"><input type="submit" name="Submit" value="Change Password"/></td></tr>
			</table>
		</form>
	</div>
	<h3>If you lost your password, contact @Mysticial on GNUWeeb</h3>
	<h2>Mail Client Config</h2>
	<div class="mail-info">
<pre style="text-align: left;">
[Incoming]
Server	: mail1.gnuweeb.org
Protocol: IMAP
SSL/Port: 143 for STARTTLS
	: 993 for SSL/TLS
Auth	: Normal Password

[Outgoing]
Server	: mail1.gnuweeb.org
Protocol: SMTP
SSL/Port: 587 for STARTTLS
	: 465 for SSL/TLS
Auth	: Normal Password
</pre>
	</div>
	<div style="margin-bottom:200px;"></div>
	</center>
</body>
</html>