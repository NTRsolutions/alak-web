<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$roll	= $_POST['hid_roll'];
	$cont	= $_POST['hid_cont'];  

	mysql_query("UPDATE alak_tasks SET tAcknowledge = '1' WHERE tId='{$cont}' AND tRoll='{$roll}'");

	echo ' <script>window.location = "index.php";</script> ';

?>
