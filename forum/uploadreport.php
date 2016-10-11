<?php
echo'
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/styles.css" rel="stylesheet">
';

define('INCLUDE_CHECK', true);
require 'connect.php';

	date_default_timezone_set('Asia/Calcutta');
	$date = date('H:i:s d M Y');
        $file 	= mysql_real_escape_string($_POST['title']);
        $code 	= mysql_real_escape_string($_POST['sec_id']);

			$allowedExts = array("pdf");
			$temp = explode(".", $_FILES["file"]["name"]);
			$extension = end($temp);

			if (($_FILES["file"]["size"] < 300000000)
			&& in_array($extension, $allowedExts)) 
			{
			  	if ($_FILES["file"]["error"] > 0) 
				{
				    echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
				} 
				else 
				{
					mysql_query("INSERT INTO alak_reports (rTitle, rDate, rCode) VALUES ('{$file}','{$date}','{$code}')");
					move_uploaded_file($_FILES["file"]["tmp_name"], "reports/".$code."/".$file.'_'.$date.'.pdf');
					echo ' <script>window.location = "index.php";</script> ';
				}
			} 
			else 
			{
				die('<center><br><br><h1 style="color: #ffffff;">Error: Only PDF is allowed.</h1><br><a href="index.php"><button class="btn  btn-red">Back</button></a></center>');
			}
?>
