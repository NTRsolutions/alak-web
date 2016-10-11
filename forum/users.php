<?php
require 'connect.php';

$golden = 0;

//Check if logged-in user is secretary
$chck = mysql_query("SELECT sCode, sName, sRoom, sRoll, sPost, sEmail, sMobile, sUpdate FROM alak_secretaryDetails WHERE sRoll = '{$userroll}'");
if($check = mysql_fetch_assoc($chck))
{
 	$username = $check['sName'];
	$usercode = $check['sCode'];  // Do something with it.
	$userrole = $check['sPost'];
	$userhostel = "DEFAULT";
	$useremail = $check['sEmail'];
	$usermobile = $check['sMobile'];
	$userroom = $check['sRoom'];
	$lastlogin = $check['sUpdate'];
	$userroll = strtoupper($check['sRoll']);
	//Set IMG URL - either CCW or Custom

	if($usercode == "LIT")
	{
		$golden = 1; //Delete Previleges
	}
}
else // Assume he is not a Secretary.
{
//User Info
	$info = mysql_fetch_array(mysql_query("SELECT mName, mRoll, mRoom, mLast FROM alak_people WHERE mRoll= '{$userroll}'"));

	$username = $info['mName'];
	$userrole = "USER";
	$userhostel = "DEFAULT";
	$useremail = $info['mEmail'];
	$usermobile = $info['mMobile'];
	$userroom = $info['mRoom'];
	$lastlogin = $info['mLast'];
	$userroll = strtoupper($info['mRoll']);
}

	//Set User Role
	if($userrole == "USER")
	{
		$rolename = "Resident";
		$_SESSION['role'] = "USER";
		$role = $_SESSION['role'];
	}
	else
	{
		$rolename = $userrole;
		$_SESSION['role'] = $usercode;
		$role = $_SESSION['role'];		
	}
?>
