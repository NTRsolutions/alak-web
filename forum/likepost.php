<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$user	= $_POST['hid_roll']; 
	$name	= $_POST['hid_name']; 

	if($_POST['likeid'] != NULL)
	{
		mysql_query("INSERT INTO alak_likes (pId, pName, pRoll) VALUES ('{$_POST['likeid']}','{$name}', '{$user}')");
	}
	elseif($_POST['unlikeid'] != NULL)
	{
		mysql_query("DELETE FROM alak_likes WHERE pRoll='{$user}' AND pId = '{$_POST['unlikeid']}'");
	}

	echo ' <script>window.location = "index.php";</script> ';

?>