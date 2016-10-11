<?php
session_start();
unset($_SESSION["webadmin"]);
header("Location: index.php");
?>
