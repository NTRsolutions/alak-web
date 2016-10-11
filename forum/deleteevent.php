<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$con	= $_POST['hid_con'];
	$dat	= $_POST['hid_dat'];  

	if($_POST['deleventbutton']=="delete")
	{
		mysql_query("DELETE FROM alak_tasks WHERE tContent='{$con}' AND tDate='{$dat}' AND tArchive = '1'");
	}
	elseif($_POST['reseventbutton']=="restore")
	{
		mysql_query("UPDATE alak_tasks SET tArchive = '0' WHERE tContent='{$con}' and tDate ='{$dat}'");
	}
	echo ' <script>window.location = "archives.php";</script> ';

?>