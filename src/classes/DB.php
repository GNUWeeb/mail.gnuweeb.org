<?php

/**
 * @author Ammar Faizi <ammarfaizi2@gmail.com> https://www.facebook.com/ammarfaizi2
 * @license MIT
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
