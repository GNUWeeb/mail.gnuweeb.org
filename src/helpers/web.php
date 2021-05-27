<?php


function cc()
{
	if (!defined("STATIC_CACHE") || !STATIC_CACHE)
		return time();

	return "1";
}
