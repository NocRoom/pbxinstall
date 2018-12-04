<?php

//set the database type
	$db_type = 'pgsql'; //sqlite, mysql, pgsql, others with a manually created PDO connection

//sqlite: the db_name and db_path are automatically assigned however the values can be overidden by setting the values here.
	//$db_name = 'nocroompbx.db'; //host name/ip address + '.db' is the default database filename
	//$db_path = '/var/www/nocroompbx/secure'; //the path is determined by a php variable

//pgsql: database connection information
	$db_host = 'localhost'; //set the host only if the database is not local
	$db_port = '5432';
	$db_name = 'nocroompbx';
	$db_username = '{database_username}';
	$db_password = '{database_password}';

//show errors
	ini_set('display_errors', '1');
	//error_reporting (E_ALL); // Report everything
	error_reporting (E_ALL ^ E_NOTICE); // hide notices
	//error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING ); //hide notices and warnings
