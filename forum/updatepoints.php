<?php
define('INCLUDE_CHECK', true);
require 'connect.php';


	$h1	= mysql_real_escape_string($_POST['h1']);
	$h2	= mysql_real_escape_string($_POST['h2']);
	$h3	= mysql_real_escape_string($_POST['h3']);
	$p1	= mysql_real_escape_string($_POST['p1']);
	$p2	= mysql_real_escape_string($_POST['p2']);
	$p3	= mysql_real_escape_string($_POST['p3']);
	$posA	= mysql_real_escape_string($_POST['posA']);	
	$pA	= mysql_real_escape_string($_POST['pA']);

	date_default_timezone_set('Asia/Calcutta');
	$timeStamp = date('d M Y');

	$code = $_POST['code'];

	if($code = "LIT")
	{
	mysql_query("UPDATE alak_pointsTable SET h1='{$h1}', h2='{$h2}', h3='{$h3}', p1='{$p1}', p2='{$p2}', p3='{$p3}', posA='{$posA}', pA='{$pA}', date='{$timeStamp}' WHERE type='0'");
	}
	else if($code = "SPO")
	{
	mysql_query("UPDATE alak_pointsTable SET h1='{$h1}', h2='{$h2}', h3='{$h3}', p1='{$p1}', p2='{$p2}', p3='{$p3}', posA='{$posA}', pA='{$pA}', date='{$timeStamp}' WHERE type='1'");
	}
	else if($code = "TEC")
	{
	mysql_query("UPDATE alak_pointsTable SET h1='{$h1}', h2='{$h2}', h3='{$h3}', p1='{$p1}', p2='{$p2}', p3='{$p3}', posA='{$posA}', pA='{$pA}', date='{$timeStamp}' WHERE type='2'");
	}

	echo ' <script>window.location = "index.php";</script> ';

?>
