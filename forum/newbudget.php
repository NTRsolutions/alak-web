<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

			date_default_timezone_set('Asia/Calcutta');
			$timeStamp = date('d M Y');

			$bcode 		= mysql_real_escape_string($_POST['user_id']);
			$bdetails 	= mysql_real_escape_string($_POST['detailsAB']);
			$bamount 	= mysql_real_escape_string($_POST['spentAB']);

			mysql_query("INSERT INTO alak_budget (bCode, bDetails, bAmount, bDate) VALUES ('{$bcode}','{$bdetails}', '{$bamount}', '{$timeStamp}')");
			mysql_query("UPDATE alak_secretaryDetails SET sBudgetDate = '{$timeStamp}' WHERE sCode='{$bcode}'");
			echo' <script>window.location = "index.php";</script> ';
?>
