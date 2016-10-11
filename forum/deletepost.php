<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$uid	= $_POST['uid'];

	if($_POST['delpostbutton']=="delete")
	{
		mysql_query("DELETE FROM alak_posts WHERE pId='{$uid}' AND pArchive = '1'");
	}
	elseif($_POST['respostbutton']=="restore")
	{
		mysql_query("UPDATE alak_posts SET pArchive = '0' WHERE pId='{$uid}'");
	}
	echo ' <script>window.location = "archives.php";</script> ';

?>
