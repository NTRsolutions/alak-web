<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$pass1	= mysql_real_escape_string($_POST['pass1']);
	$pass2	= mysql_real_escape_string($_POST['pass2']);
	$user = $_POST['user'];

	if($pass1 == $pass2)
	{
		mysql_query("UPDATE alak_people SET mPass = '{$pass1}' WHERE mRoll='{$user}'");
		mysql_query("UPDATE alak_secretaryDetails SET sPass = '{$pass1}' WHERE sRoll='{$user}'");
		echo ' <script>window.location = "index.php";</script> ';
	}

		echo ' <script>window.location = "index.php";</script> ';

?>
