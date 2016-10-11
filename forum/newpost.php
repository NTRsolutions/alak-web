<?php
define('INCLUDE_CHECK', true);
require 'connect.php';
require 'mail.php';

	date_default_timezone_set('Asia/Calcutta');
	$timeStamp = date('H:i:s d M Y');
        $sub	 	= mysql_real_escape_string($_POST['post_sub']);
        $con 		= mysql_real_escape_string($_POST['post_con']);
        $reply_mail	= $_POST['reply_email'];
	$userroll 	= $_POST['post_roll'];
	$username	= $_POST['post_name']; 
        $sec 		= $_POST['tag_sec'];

//Update Database
	$notify = $_POST['tag'];
	if($notify == "yes")
	{ $flag = 1;} 
	else { $flag = 0; }

	if($reply_mail == "Enter E-Mail if you want to get notified. (Optional)")
	{
		mysql_query("INSERT INTO alak_posts (pDisplay, pRoll, pName, pSubject, pContent, pDate, pReplyFlag, pTag) VALUES ('{$flag}','{$userroll}','{$username}', '{$sub}', '{$con}', '{$timeStamp}', '0', '{$sec}')");
	}
	else
	{
		mysql_query("INSERT INTO alak_posts (pReplyMail, pDisplay, pRoll, pName, pSubject, pContent, pDate, pReplyFlag, pTag) VALUES ('{$reply_mail}','{$flag}','{$userroll}','{$username}', '{$sub}', '{$con}', '{$timeStamp}', '0', '{$sec}')");

	}
 
//Send Notification to tagged Sec.
	$subject = $username." tagged you in a post.";
	$body = "You are tagged by ".$username." in the followin post.\n\nSubject : ".$sub."\nContent : ".$con."\n\nPlease login to www.alakananda.in/forum and acknowledge it.";
	
	if($sec != "NIL")
	{
		$info = mysql_fetch_array(mysql_query("SELECT sName, sEmail FROM alak_secretaryDetails WHERE sCode= '{$sec}'"));
		$email = $info['sEmail'];
		$name = $info['sName'];
		mailer($name, $email, $subject , $body);
	}

	echo ' <script>window.location = "index.php";</script> ';

?>
