<?php
define('INCLUDE_CHECK', true);
require 'connect.php';

if($_POST['secret'] != "passmein")
{
	echo ' <script>window.location = "index.php";</script> ';
}

	date_default_timezone_set('Asia/Calcutta');
	$timeStamp = date('H:i:s d M Y');
        $com_sub 	= $_POST['repSub'];
        $com_con 	= $_POST['repCon'];
	$userroll 	= $_POST['hid_roll'];
	$username	= $_POST['hid_name'];
	$redirect	= $_POST['hid_dir'];

	if($username == "view_users")
	{
		$chatnamerow = mysql_fetch_array(mysql_query("SELECT mName FROM alak_people WHERE mRoll = '{$userroll}'"));
		$usernameSet = $chatnamerow['mName'];  
		mysql_query("INSERT INTO alak_posts (pRoll, pName, pSubject, pContent, pDate, pReplyFlag) VALUES ('{$userroll}','{$usernameSet}', '{$com_sub}', '{$com_con}', '{$timeStamp}', '1')");
		echo ' <script>window.location = "view.php?profile='.$redirect.'";</script> ';

	} 
	else
	{
		if($_POST['deletebutton'] == "delete")
		{
			if(!empty($_POST['delete_comments'])) 
			{
				foreach($_POST['delete_comments'] as $del) 
				{
					mysql_query("DELETE FROM posts WHERE pId = '{$del}'");
				}
			}
		}
		elseif($_POST['addbutton'] == "add")
		{
			if($com_con != NULL)
			{
				mysql_query("INSERT INTO alak_posts (pRoll, pName, pSubject, pContent, pDate, pReplyFlag) VALUES ('{$userroll}','{$username}', '{$com_sub}', '{$com_con}', '{$timeStamp}', '1')");
			}		
		}

		echo ' <script>window.location = "index.php";</script> ';
	}

?>


