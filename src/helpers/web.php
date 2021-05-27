<?php
// SPDX-License-Identifier: GPL-2.0

function cc()
{
	if (!defined("STATIC_CACHE") || !STATIC_CACHE)
		return time();

	return "1";
}
