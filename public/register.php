<?php
// SPDX-License-Identifier: GPL-2.0

require_once __DIR__."/../init/web.php";

sess_start();

if (isset($_SESSION["user"])) {
	header("Location: home.php?ref=register&w=".rstr(32));
	exit;
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>GNUWeeb Mail Registration</title>
	<link rel="stylesheet" type="text/css" href="assets/css/base.css"/>
	<link rel="stylesheet" type="text/css" href="assets/css/register.css"/>
	<meta name="viewport" content="width=device-width,initial-scale=1.00"/>
</head>
<body>
	<div class="register-cage">
		<form method="POST" action="javascript:void(0);" id="reg-form">
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
							<input type="radio" name="gender" value="secret" required="1"/>N/A
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
					<tr>
						<td align="center" colspan="3">
							<div class="captcha-extreme-cage">
								<input onchange="loadCaptcha();" type="checkbox" id="captcha-extreme"/> Turn on extreme captcha
							</div>
						</td>
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
								<div id="captcha-inst">Please solve this captcha problem to make sure you're a human!</div>
								<div class="captcha-cage">
									<p id="captcha-msg"></p>
									<img id="captcha-img" alt="Loading captcha image..."/>
								</div>
								<a onclick="loadCaptcha();" href="#rel">Reload Captcha</a>
								<br/><br/>Captcha Answer:<br/>
								<input type="hidden" name="captcha_key" id="captcha-key"/>
								<input type="text" name="captcha_answer" id="captcha-answer" required="1"/>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<div class="reg-btn-cage">
								<button type="submit" id="register-btn">Register</button>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<div class="login-link">
								Already have an account? <a href="login.php?ref=register&amp;w=<?= rstr(32) ?>">Login</a>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		const LATEX_IMG_BASE_URL = "https://latex.teainside.org/api.php?action=file&type=png&hash=";
		let
			captchaLoading = document.getElementById("captcha-loading"),
			captchaExtreme = document.getElementById("captcha-extreme"),
			registerBtn = document.getElementById("register-btn"),
			captchaArea = document.getElementById("captcha-area"),
			captchaImg = document.getElementById("captcha-img"),
			captchaMsg = document.getElementById("captcha-msg"),
			captchaKey = document.getElementById("captcha-key"),
			regForm = document.getElementById("reg-form");

		function toggle_input(w) {
			let q = document.getElementsByTagName("input");
			registerBtn.disabled = w;

			if (w) {
				for (let i = 0; i < q.length; i++)
					q[i].setAttribute("readonly", 1);
			} else {
				for (let i = 0; i < q.length; i++)
					q[i].removeAttribute("readonly");
			}
			captchaExtreme.disabled = w;
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
				let res = this.responseText;
				try {
					let j = JSON.parse(res);
					let p = document.createTextNode(j.msg);
					captchaMsg.innerHTML = "";
					captchaMsg.appendChild(p);
					captchaKey.value = j.key;
					captchaImg.src = "api.php?action=captcha_img&content="+encodeURIComponent(j.img)
						+(captchaExtreme.checked ? "&extreme=1" : "");
					captchaArea.style.display = "";
					captchaLoading.style.display = "none";
					toggle_input(0);
				} catch (e) {
					if (res) {
						alert("Error: "+e.message+";; Res: "+res);
					}
				}
			};
			ch.open("GET", "api.php?action=captcha"+(captchaExtreme.checked ? "&extreme=1" : ""));
			ch.send();
		}

		loadCaptcha();

		regForm.addEventListener("submit", function () {
			toggle_input(1);
			let ch = new XMLHttpRequest;
			ch.withCredentials = true;
			ch.onreadystatechange = function () {
				if (this.readyState != 4)
					return;
				let res = this.responseText;
				try {
					let j = JSON.parse(res);
					if (typeof j.msg != "undefined" && j.msg)
						alert(j.msg);
					if (typeof j.red != "undefined" && j.red)
						window.location = j.red;
				} catch (e) {
					if (res) {
						alert("Error: "+e.message+";; Res: "+res);
					}
				}
				toggle_input(0);
			};
			ch.open("POST", "api.php?action=register");
			ch.send(new FormData(regForm));
		});
	</script>
</body>
</html>
