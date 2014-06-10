<?php
session_start();
define('INCLUDE_CHECK', true);
require 'connect.php';
date_default_timezone_set('Asia/Calcutta');
$timeStamp = date('H:i:s d M Y');

mysql_query("UPDATE secretaryDetails SET sUpdate = '{$timeStamp}' WHERE sCode='{$_SESSION['admin']}'");

unset($_SESSION["admin"]);
header("Location: index.php");
?>
