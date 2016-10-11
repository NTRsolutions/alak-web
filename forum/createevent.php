<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

if($_POST['secret'] != "passmein")
{
	echo ' <script>window.location = "index.php";</script> ';
}

        $date1 	= $_POST['date'];
        $time 	= $_POST['time'];
	$date = date("d M Y", strtotime($date1));

	$venue 	= mysql_real_escape_string($_POST['venue']);
	$content = mysql_real_escape_string($_POST['content']);
	$posted = mysql_real_escape_string($_POST['postedby']);

	$notify = $_POST['tag'];
	if($notify == "yes")
	{ $flag = 1;} 
	else { $flag = 0; }

	mysql_query("INSERT INTO alak_tasks (tPost, tContent, tDate, tTime, tVenue, tAcknowledge, tArchive) VALUES ('{$posted}', '{$content}', '{$date}', '{$time}', '{$venue}', '{$flag}', '0')");

	echo ' <script>window.location = "index.php";</script> ';
?>
