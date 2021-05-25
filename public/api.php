<?php
// SPDX-License-Identifier: GPL-2.0


if (!(isset($_GET["action"]) && is_string($_GET["action"]))) {
	http_response_code(400);
	exit;
}

require __DIR__."/../init/web.php";

switch ($_GET["action"]) {
case "captcha":
	require BASE_PATH."/src/api/captcha.php";
	break;
case "captcha_img":
	require BASE_PATH."/src/api/captcha_img.php";
	break;
case "register":
	require BASE_PATH."/src/api/register.php";
	break;
}
