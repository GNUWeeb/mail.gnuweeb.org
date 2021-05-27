<?php
// SPDX-License-Identifier: GPL-2.0

/**
 * @author Ammar Faizi <ammarfaizi2@gmail.com>
 * @license GPL-2.0
 * @package {No Package}
 * @version 8.0
 */
final class DB
{
	/**
	 * @return \PDO
	 */
	public static function pdo(): \PDO
	{
		return new \PDO(...PDO_PARAM);
	}
}
