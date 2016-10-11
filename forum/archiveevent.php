<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$uid	= $_POST['hid_uid'];
	
	$tasks = mysql_query("SELECT tContent FROM alak_tasks WHERE tArchive = '0' AND tId = '{$uid}'");
	while($task = mysql_fetch_assoc($tasks))
	{
		$content = $task['tContent'];
		mysql_query("UPDATE alak_tasks SET tArchive = '1' WHERE tContent ='{$content}'");
	}

	echo ' <script>window.location = "index.php";</script> ';

?>