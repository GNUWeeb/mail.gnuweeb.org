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
			</table>
			<table class="captcha-table">
				<tbody>
					<tr>
						<td colspan="3">
							<div id="captcha-loading">
								<h1>Loading Captcha...</h1>
							</div>
							<div id="captcha-area" style="display:none;">
								<div class="captcha-inst">
									Please solve this captcha problem to make sure you're a human!
								</div>
								<div class="captcha-cage">
									<p id="captcha-msg"></p>
									<img id="captcha-img"/>
								</div>
								<a style="color:blue;" onclick="loadCaptcha();" href="#rel">Reload Captcha</a>
								<br/><br/>Captcha Answer:<br/>
								<input type="hidden" name="captcha_key" id="captcha-key"/>
								<input type="text" name="captcha_answer" id="captcha-answer" required="1"/>
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
				</tbody>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		const LATEX_IMG_BASE_URL = "https://latex.teainside.org/api.php?action=file&type=png&hash=";
		let
			captchaLoading = document.getElementById("captcha-loading"),
			captchaArea = document.getElementById("captcha-area"),
			captchaImg = document.getElementById("captcha-img"),
			captchaMsg = document.getElementById("captcha-msg"),
			captchaKey = document.getElementById("captcha-key");

		function toggle_input(w) {
			let q = document.getElementsByTagName("input");
			for (let i = 0; i < q.length; i++) {
				q[i].disabled = w;
			}
		}

		function genImgCaptcha(img) {
			let ch = new XMLHttpRequest;
			ch.withCredentials = true;
			ch.onreadystatechange = function () {
				if (this.readyState != 4)
					return;
				try {
					let j = JSON.parse(this.responseText);
					captchaImg.src = LATEX_IMG_BASE_URL+encodeURIComponent(j.res);
					captchaArea.style.display = "";
					captchaLoading.style.display = "none";
					toggle_input(0);
				} catch (e) {
					alert("Error: "+e.message);
				}
			};
			ch.open("GET", "api.php?action=captcha_img&content="+encodeURIComponent(img));
			ch.send();
		}

		function loadCaptcha() {
			toggle_input(1);
			captchaArea.style.display = "none";
			captchaLoading.style.display = "";
			captchaImg.removeAttribute("src");
			let ch = new XMLHttpRequest;
			ch.withCredentials = true;
			ch.onreadystatechange = function () {
				if (this.readyState != 4)
					return;
				try {
					let j = JSON.parse(this.responseText);
					let p = document.createTextNode(j.msg);
					captchaMsg.innerHTML = "";
					captchaMsg.appendChild(p);
					captchaKey.value = j.key;
					genImgCaptcha(j.img);
				} catch (e) {
					alert("Error: "+e.message);
				}
			};
			ch.open("GET", "api.php?action=captcha");
			ch.send();
		}

		loadCaptcha();
	</script>
</body>
</html>
