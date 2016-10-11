<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$mod	= $_POST['mod'];
	$stat	= $_POST['stat'];
	
	mysql_query("UPDATE alak_modules SET modStat = '{$stat}' WHERE modId ='{$mod}'");
	
	echo ' <script>window.location = "index.php";</script> ';

?>