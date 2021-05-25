<?php

const BASE_PATH = __DIR__;
const STORAGE_PATH = BASE_PATH."/storage";
const PUBLIC_PATH = BASE_PATH."/public";

const DB_HOST = "127.0.0.1";
const DB_PORT = 3306;
const DB_NAME = "gnuweeb";
const DB_USER = "gnuweeb";
const DB_PASS = "supersecretpassword123";
const APP_KEY = "650ad4b2fea65dbc770d5db8dc8b230eda7759a178d6ca722b997257fc25";

const PDO_PARAM = [
	"mysql:host=".DB_HOST.";port=".DB_PORT.";dbname=".DB_NAME,
	DB_USER,
	DB_PASS,
	[
		\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION
	]
];
