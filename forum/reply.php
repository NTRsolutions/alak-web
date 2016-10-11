<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

	date_default_timezone_set('Asia/Calcutta');
	$timeStamp = date('H:i:s d M Y');
        $content 	= mysql_real_escape_string($_POST['reply']);
        $toRoll 	= $_POST['to'];
	$userroll	= $_POST['userroll'];

	mysql_query("UPDATE alak_messages SET mHead = '0' WHERE (mFrom = '{$userroll}' AND mTo = '{$toRoll}') OR (mFrom = '{$toRoll}' AND mTo = '{$userroll}') AND mHead='1'");
	mysql_query("INSERT INTO alak_messages (mFrom, mTo, mTime, mContent, mHead) VALUES ('{$userroll}','{$toRoll}', '{$timeStamp}', '{$content}', '1')");

	echo ' <script>window.location = "messages.php?friend='.$toRoll.'";</script> ';
?>
