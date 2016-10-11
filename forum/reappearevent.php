<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$con	= $_POST['hid_con'];
	$dat	= $_POST['hid_dat'];  

	mysql_query("UPDATE alak_tasks SET tArchive = '1' WHERE tContent='{$con}' and tDate ='{$dat}'");

	echo ' <script>window.location = "index.php";</script> ';

?>
