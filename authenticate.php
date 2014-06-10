<?php
	if(!defined('INCLUDE_CHECK')) die('Warning: You are not authorized to access this page.');
	$retrieve = mysql_query("SELECT sCode, sPass FROM secretaryDetails WHERE sCode='{$_POST['secCode']}'");
	$credentials = mysql_fetch_assoc($retrive);
		echo $credentials['sPass'];
	
	if($credentials['sPass'] == $_POST['secPass'])
	{
		$grantAccess = 1;
		echo $credentials['sPass'];
		echo 'ACCESS GRANTED';
	}
	else
	{
		$grantAccess = 0;
		echo 'ACCESS DENIED';
	}
?>
