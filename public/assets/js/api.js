
const GWM_API_URL = "https://mail.gnuweeb.org/api.php?action=";
const LS = localStorage;

function gwm_exec_api(p)
{
	let xhr = new XMLHttpRequest();
	xhr.open(p.method, p.url);
	xhr.setRequestHeader("Content-Type", "application/json");

	if (p.token)
		xhr.setRequestHeader("Authorization", "Bearer " + p.token);

	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			if (p.callback)
				p.callback(JSON.parse(xhr.responseText));
		}
	}
	xhr.send(JSON.stringify(p.data));
}

function gwm_api_get_user_info(tkn, cbk)
{
	gwm_exec_api({
		method: "GET",
		url: GWM_API_URL + "get_user_info",
		token: tkn,
		callback: cbk
	});
}

function gwm_api_login(user, pass, cbk)
{
	gwm_exec_api({
		method: "POST",
		url: GWM_API_URL + "login",
		data: { user: user, pass: pass },
		callback: cbk
	});
}

function gwm_api_change_password(tkn, cur_pass, new_pass, cbk)
{
	gwm_exec_api({
		method: "POST",
		url: GWM_API_URL + "change_password",
		token: tkn,
		data: {
			cur_pass: cur_pass,
			new_pass: new_pass,
			retype_new_pass: new_pass
		},
		callback: cbk
	});
}

function gwm_cb_login(j)
{
	if (j.code !== 200) {
		alert("Login failed: " + JSON.stringify(j.res));
		return;
	}

	let r = j.res;
	LS.setItem("gwm_token", r.token);
	LS.setItem("gwm_token_exp_at", r.token_exp_at);
	LS.setItem("gwm_uinfo", JSON.stringify(r.user_info));
	alert("Login successful!");
	window.location.href = "/home.html";
}

function gwm_fn_login(user, pass)
{
	gwm_api_login(user, pass, gwm_cb_login);
}

function gwm_cb_change_pass(j)
{
	if (j.code === 200) {
		alert("Password changed successfully!");
		window.location.href = "?";
	} else {
		alert("Failed to change password: " + JSON.stringify(j.res));
	}
}

function gwm_fn_change_pass(cur_pass, new_pass)
{
	let tkn = LS.getItem("gwm_token");
	gwm_api_change_password(tkn, cur_pass, new_pass, gwm_cb_change_pass);
}

function gwm_redirect_if_authorized()
{
	if (LS.getItem("gwm_token"))
		window.location.href = "/home.html";
}

function gwm_do_logout()
{
	LS.clear();
	window.location.href = "/";
}

function gwm_gu_cb(j)
{
	if (j.code === 200) {
		LS.setItem("gwm_uinfo", JSON.stringify(j.res));
	} else {
		alert("Your session has expired. Please login again.");
		gwm_do_logout();
	}
}

function gwm_redirect_if_not_authorized()
{
	let tkn = LS.getItem("gwm_token");
	let uio = LS.getItem("gwm_uinfo");
	let tkn_exp_at = LS.getItem("gwm_token_exp_at");

	if (!tkn || !uio) {
		gwm_do_logout();
		return;
	}

	let unix = Math.round((new Date()).getTime() / 1000);
	if (unix >= tkn_exp_at) {
		alert("Your session has expired. Please login again.");
		gwm_do_logout();
		return;
	}

	gwm_api_get_user_info(tkn, gwm_gu_cb);
}

function gwm_get_user_info()
{
	return JSON.parse(LS.getItem("gwm_uinfo"));
}
