<?php
// SPDX-License-Identifier: GPL-2.0

require_once __DIR__."/../init/web.php";

sess_start();

if (isset($_SESSION["user"])) {
	header("Location: home.php?ref=register");
	exit;
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>GNUWeeb Mail Login</title>
	<link rel="stylesheet" type="text/css" href="assets/css/base.css"/>
	<link rel="stylesheet" type="text/css" href="assets/css/register.css"/>
</head>
<body>
	<div class="register-cage">
		<form method="POST" action="javascript:void(0);">
			<h2>GNUWeeb Mail Registration</h2>
			<table class="reg-table">
				<tbody>
					<tr>
						<td align="center" colspan="3">
							<div class="hdr-sep-uinfo"><span class="tbl-hdr">Enter User Info</span></div>
						</td>
					</tr>
					<tr>
						<td align="left"><span class="mandat">*&nbsp;</span>First Name</td>
						<td align="center">:</td>
						<td align="left"><input type="text" name="first_name" required="1"/></td>
					</tr>
					<tr>
						<td align="left">&nbsp;&nbsp;Last Name</td>
						<td align="center">:</td>
						<td align="left"><input type="text" name="last_name"/></td>
					</tr>
					<tr>
						<td align="left"><span class="mandat">*&nbsp;</span>Gender</td>
						<td align="center">:</td>
						<td align="left">
							<input type="radio" name="gender" value="male" required="1"/>Male
							<input type="radio" name="gender" value="female" required="1"/>Female
							<input type="radio" name="gender" value="secret" required="1"/>No answer
						</td>
					</tr>
					<tr>
						<td align="left">&nbsp;&nbsp;GitHub Username</td>
						<td align="center">:</td>
						<td align="left"><input type="text" name="github_username"/></td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<div class="hdr-sep-cracc"><span class="tbl-hdr">Create an Account</span></div>
						</td>
					</tr>
					<tr>
						<td align="left"><span class="mandat">*&nbsp;</span>Email</td>
						<td align="center">:</td>
						<td align="left"><input type="text" name="username" required="1" size="10"/>&nbsp;@gnuweeb.org</td>
					</tr>
					<tr>
						<td align="left"><span class="mandat">*&nbsp;</span>Password</td>
						<td align="center">:</td>
						<td align="left"><input type="password" name="password" required="1"/></td>
					</tr>
					<tr>
						<td align="left"><span class="mandat">*&nbsp;</span>Retype Password</td>
						<td align="center">:</td>
						<td align="left"><input type="password" name="cpassword" required="1"/></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="3">
							<div class="captcha-area">
								<div class="captcha-inst">
									Please solve this captcha problem to make sure you're a human!
								</div>
								<div class="captcha-cage">
									<img id="captcha-img"/>
								</div>
								<br/>Captcha Answer:<br/>
								<input type="text" name="captcha_answer" id="captcha-answer"/>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<div class="reg-btn-cage">
								<button type="submit">Register</button>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3">Already have an account? <a href="login.php?ref=register">Login</a></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>
