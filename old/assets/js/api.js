const GWM_API_URL = "https://mail.gnuweeb.org/api2.php?action=";
const LS = localStorage;

function gid(i)
{
	return document.getElementById(i);
}

function toggle_disable_inputs(form, disable)
{
	for (let i = 0; i < form.length; i++)
		form[i].disabled = disable;
}

function escape_html(s)
{
	return s.replace(/&/g, "&amp;")
		.replace(/</g, "&lt;")
		.replace(/>/g, "&gt;");
}

function gwm_auth_get_token()
{
	return LS.getItem("gwm_token");
}

function gwm_exec_api(p)
{
	let xhr = new XMLHttpRequest();
	xhr.open(p.method, p.url);
	xhr.withCredentials = true;

	if (p.ct === "json")
		xhr.setRequestHeader("Content-Type", "application/json");

	if (p.token)
		xhr.setRequestHeader("Authorization", "Bearer " + p.token);

	xhr.onreadystatechange = function() {
		let res;

		if (xhr.readyState !== 4)
			return;

		try {
			res = JSON.parse(xhr.responseText);
		} catch (e) {
			res = xhr.responseText;
		}

		if (p.callback)
			p.callback(res, xhr);
	};
	xhr.send(p.data);
}

function gwm_exec_api_multipart(p)
{
	p.ct = "multipart";
	gwm_exec_api(p);
}

function gwm_exec_api_json(p)
{
	p.ct = "json";
	p.data = JSON.stringify(p.data);
	gwm_exec_api(p);
}

function gwm_api_get_user_info(cb)
{
	gwm_exec_api({
		method: "GET",
		url: GWM_API_URL + "get_user_info&renew_token=1",
		token: LS.getItem("gwm_token"),
		callback: cb
	});
}

function gwm_api_set_user_info(cb, data)
{
	gwm_exec_api_multipart({
		method: "POST",
		url: GWM_API_URL + "set_user_info",
		data: data,
		token: LS.getItem("gwm_token"),
		callback: cb
	});
}

function gwm_api_login(cb, user, pass)
{
	gwm_exec_api_json({
		method: "POST",
		url: GWM_API_URL + "login",
		data: { user: user, pass: pass },
		callback: cb
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

function gwm_fn_login(cb, user, pass)
{
	gwm_api_login(cb, user, pass);
}

function gwm_cb_change_password(j)
{
	if (j.code !== 200) {
		alert("Password change failed: " + JSON.stringify(j.res));
		return false;
	}

	alert("Password changed successfully!");
	return true;
}

function gwm_fn_change_password(cb, cur_pass, new_pass, retype_new_pass)
{
	gwm_exec_api_json({
		method: "POST",
		url: GWM_API_URL + "change_password",
		data: {
			cur_pass: cur_pass,
			new_pass: new_pass,
			retype_new_pass: retype_new_pass
		},
		callback: cb,
		token: gwm_auth_get_token()
	});
}

function gwm_fn_set_user_info(cb, data)
{
	let callback = function (j) {
		alert(j.res);
		if (cb)
			cb(j);
	};
	gwm_api_set_user_info(callback, data);
}

function gwm_fn_logout()
{
	LS.clear();
	window.location.href = "/";
}

function gwm_auth_get_user()
{
	return JSON.parse(LS.getItem("gwm_uinfo"));
}

function gwm_auth_redirect_if_authorized()
{
	if (LS.getItem("gwm_token")) {
		window.location.href = "/home.html";
		return true;
	}

	return false;
}

function gwm_auth_renew_session(cb = null)
{
	gwm_api_get_user_info(function(j, x) {
		// If cancelled, do nothing
		if (x.status === 0)
			return;

		if (j.code !== 200) {
			alert("Your session has expired. Please login again.");
			gwm_fn_logout();
			return;
		}

		let rt = j.res.renew_token;
		LS.setItem("gwm_uinfo", JSON.stringify(j.res.user_info));
		LS.setItem("gwm_token", rt.token);
		LS.setItem("gwm_token_exp_at", rt.token_exp_at);

		if (cb)
			cb();
	});
}

function gwm_auth_redirect_if_not_authorized()
{
	let tkn = LS.getItem("gwm_token");
	let uio = LS.getItem("gwm_uinfo");
	let tkn_exp_at = LS.getItem("gwm_token_exp_at");

	if (!tkn || !uio) {
		gwm_fn_logout();
		return true;
	}

	let unix = Math.round((new Date()).getTime() / 1000);
	if (unix >= tkn_exp_at) {
		alert("Your session has expired. Please login again.");
		gwm_fn_logout();
		return true;
	}

	gwm_auth_renew_session();
	return false;
}

function gwm_api_delete_user_photo(cb)
{
	gwm_exec_api({
		method: "GET",
		url: GWM_API_URL + "delete_user_photo",
		token: LS.getItem("gwm_token"),
		callback: cb
	});
}

function gwm_fn_delete_user_photo(cb)
{
	if (!confirm("Are you sure you want to delete your photo?"))
		return;

	gwm_api_delete_user_photo(cb);
}
