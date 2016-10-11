<?php
session_start();
if(!isset($_SESSION['user']))
{
	header('Location: access.php');
}

$username = $_SESSION['user'];

define('INCLUDE_CHECK', true);
require 'connect.php';
$forumID = $_GET['ref'];

mysql_query("DELETE FROM alak_forumInfo WHERE fId='{$forumID}'");
header('Location: inmatesforum.php');
?>