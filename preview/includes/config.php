<?php
	require_once('./includes/Database.php');

	define('HOST', 'localhost');
	define('USER', 'root');
	define('PASSWORD', '');
	define('DATABASE', 'filemanager');

	$db = new Database(HOST, USER, PASSWORD, DATABASE);
?>