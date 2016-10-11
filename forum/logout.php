<?php
session_start();
define('INCLUDE_CHECK', true);
require 'connect.php';
date_default_timezone_set('Asia/Calcutta');
$timeStamp = date('H:i:s d M Y');

mysql_query("UPDATE alak_people SET mLast = '{$timeStamp}' WHERE mRoll='{$_SESSION['user']}'");

unset($_SESSION["user"]);
unset($_SESSION["role"]);
header("Location: login.php");
?>
