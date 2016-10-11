<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	$uid = $_POST['uid'];
	$code = $_POST['code'];
	
	$info = mysql_fetch_array(mysql_query("SELECT rTitle, rDate FROM alak_reports WHERE rId = '{$uid}'"));
	$file = $info['rTitle'];
	$date = $info['rDate'];
	unlink('reports/'.$code.'/'.$file.'_'.$date.'.pdf');
	mysql_query("DELETE FROM alak_reports WHERE rId='{$uid}'");

	echo ' <script>window.location = "index.php";</script> ';

?>
