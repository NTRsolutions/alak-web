<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$subject	= $_POST['hid_sub']; 

	mysql_query("UPDATE alak_posts SET pArchive = '1' WHERE pSubject='{$subject}'");

	echo ' <script>window.location = "index.php";</script> ';

?>
