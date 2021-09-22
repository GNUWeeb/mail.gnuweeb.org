<?php

date_default_timezone_set("UTC");

const BASE_PATH = __DIR__;
const STORAGE_PATH = BASE_PATH."/storage";
const PUBLIC_PATH = BASE_PATH."/public";
const STATIC_CACHE = false;

const DB_HOST = "127.0.0.1";
const DB_PORT = 3306;
const DB_NAME = "gnuweeb";
const DB_USER = "gnuweeb";
const DB_PASS = "supersecretpassword123";
const APP_KEY = "650ad4b2fea65dbc770d5db8dc8b230eda7759a178d6ca722b997257fc25";

const USE_POSTFIX = false;
const PF_DB_HOST = DB_HOST;
const PF_DB_PORT = DB_PORT;
const PF_DB_NAME = "postfixadmin";
const PF_DB_USER = DB_USER;
const PF_DB_PASS = DB_PASS;

const PDO_PARAM = [
	"mysql:host=".DB_HOST.";port=".DB_PORT.";dbname=".DB_NAME,
	DB_USER,
	DB_PASS,
	[
		\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION
	]
];

const PF_PDO_PARAM = [
	"mysql:host=".PF_DB_HOST.";port=".PF_DB_PORT.";dbname=".PF_DB_NAME,
	PF_DB_USER,
	PF_DB_PASS,
	[
		\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION
	]
];
