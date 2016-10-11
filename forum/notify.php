<?php
define('INCLUDE_CHECK', true);
require 'connect.php';
require 'mail.php';

if($_POST['secret'] != "passmein")
{
	echo ' <script>window.location = "index.php";</script> ';
}

	$content = mysql_real_escape_string($_POST['content']);
	$subject = mysql_real_escape_string($_POST['sub']);

	echo' <script>window.alert("E-Mails are being sent. DO NOT REFRESH OR CLOSE THE WINDOW. You will be automatically redirected. Click OK.");</script> ';

	if(!empty($_POST['tag'])) 
	{
		foreach($_POST['tag'] as $tagpeople) 
		{
			if($tagpeople == "CG")
			{
				$myfile = fopen("mailcg.txt", "r");
				$set = fread($myfile,filesize("mailcg.txt"));
				$emails = explode(",", $set);	
				$count = 0;	

				while($emails[$count] != NULL)
				{  
					mailer("Content Generation Team", $emails[$count], $subject , $content);
					$count++;
				}
				fclose($myfile);
			}

			if($tagpeople == "ST")
			{
				$myfile = fopen("mailst.txt", "r");
				$set = fread($myfile,filesize("mailst.txt"));
				$emails = explode(",", $set);	
				$count = 0;	

				while($emails[$count] != NULL)
				{  
					mailer("Supporting Team", $emails[$count], $subject , $content);
					$count++;
				}
				fclose($myfile);
			}

			if($tagpeople == "ET")
			{
				$myfile = fopen("mailet.txt", "r");
				$set = fread($myfile,filesize("mailet.txt"));
				$emails = explode(",", $set);	
				$count = 0;	

				while($emails[$count] != NULL)
				{  
					mailer("Editing Team", $emails[$count], $subject , $content);
					$count++;
				}
				fclose($myfile);
			}
			if($tagpeople == "PR")
			{
				$myfile = fopen("mailpr.txt", "r");
				$set = fread($myfile,filesize("mailpr.txt"));
				$emails = explode(",", $set);	
				$count = 0;	

				while($emails[$count] != NULL)
				{  
					mailer("PR", $emails[$count], $subject , $content);
					$count++;
				}
				fclose($myfile);
			}


		}
	}

	echo ' <script>window.location = "index.php";</script> ';
?>