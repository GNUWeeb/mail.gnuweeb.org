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
		<form method="POST" action="javascript:void(0);" id="login-form">
			<h2>GNUWeeb Mail Login</h2>
			<div class="ilabel">Email or Username:</div>
			<div class="iinput"><input type="text" name="username" required="1"/></div>
			<div class="ilabel">Password:</div>
			<div class="iinput"><input type="password" name="password" required="1"></div>
			<div class="isubmit"><button type="submit" id="login-btn">Login</button></div>
			<div class="ireg">Don't have an account? <a href="register.php?ref=login&amp;w=<?= rstr(32) ?>">Register</a></div>
		</form>
	</div>
	<script type="text/javascript">
		let fr = document.getElementById("login-form"),
			loginBtn = document.getElementById("login-btn");

		function toggle_input(w) {
			let q = document.getElementsByTagName("input");
			loginBtn.disabled = w;

			if (w) {
				for (let i = 0; i < q.length; i++)
					q[i].setAttribute("readonly", 1);
			} else {
				for (let i = 0; i < q.length; i++)
					q[i].removeAttribute("readonly");
			}
		}

		fr.addEventListener("submit", function () {
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
			ch.open("POST", "api.php?action=login");
			ch.send(new FormData(fr));
		});
	</script>
</body>
</html>
