<?php

require __DIR__."/../config.php";
require BASE_PATH."/src/helpers/global.php";

function myAutoload($className)
{
	if (file_exists($f = BASE_PATH."/src/classes/"
				.str_replace("\\", "/", $className)
				.".php"))
		require $f;
}

spl_autoload_register("myAutoload");
