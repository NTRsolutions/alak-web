<?php
define('INCLUDE_CHECK', true);
require 'connect.php';


	$name	= mysql_real_escape_string($_POST['name']);
	$roll	= mysql_real_escape_string($_POST['roll']);
	$room	= mysql_real_escape_string($_POST['room']);
	$mobile	= mysql_real_escape_string($_POST['mobile']);
	$email	= mysql_real_escape_string($_POST['email']);
	$code = $_POST['code'];

	mysql_query("UPDATE alak_secretaryDetails SET sName='{$name}', sRoll='{$roll}', sRoom='{$room}', sMobile='{$mobile}', sEmail='{$email}' WHERE sCode='{$code}'");

	echo ' <script>window.location = "index.php";</script> ';

?>
