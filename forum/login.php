<?php
session_start();
$userErrors = 0;
if(isset($_SESSION['user']))
{
	header('Location: index.php');
}
else
{
	if(isset($_POST['userRoll']) && isset($_POST['userPass']))
	{
		define('INCLUDE_CHECK', true);
		require 'connect.php';
		
		$user_roll = mysql_real_escape_string($_POST['userRoll']);
		$user_pass = mysql_real_escape_string($_POST['userPass']);

		$userCredentials = mysql_query("SELECT mRoll, mPass FROM alak_people WHERE mRoll='{$user_roll}' AND mPass='{$user_pass}'");

		if(mysql_num_rows($userCredentials) == 0)
		{
			$userErrors = 1;
		}
		else
		{		
			$_SESSION['user'] = strtoupper($_POST['userRoll']);
			
			date_default_timezone_set('Asia/Calcutta');
			$timeStamp = date('H:i:s d M Y');

			mysql_query("UPDATE alak_people SET mLast = '{$timeStamp}' WHERE mRoll='{$_SESSION['user']}'");
			mysql_query("UPDATE alak_secretaryDetails SET sUpdate = '{$timeStamp}' WHERE sRoll='{$_SESSION['user']}'");
			
			header('Location: index.php');
		}
	}	
}
?>




<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Login</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/login/bootstrap.min.css" rel="stylesheet">
		<link href="css/login/styles.css" rel="stylesheet">
	</head>
	<body style="background: #186185 url('../images/gradientblue_img.svg') 50% 50% fixed; background-size: 100% 100%;">
<!--login modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
	  <center><br><a href="../index.php"><img src = "../favicon.ico"></a></center>
          <h2 class="text-center">Inmates' Forum Login</h2>
      </div>
      <div class="modal-body">
          <form class="form col-md-12 center-block" method="post" action="login.php">
            <div class="form-group">
              <input type="text" name="userRoll" class="form-control input-lg" placeholder="Roll Number">
            </div>
            <div class="form-group">
              <input type="password" name="userPass" class="form-control input-lg" placeholder="Password">
            </div>
            <div class="form-group">
             <button type="submit" class="btn btn-primary btn-lg btn-block">Proceed</button>
            </div>
				<?php
				if($userErrors == 1)
				{
					echo' <p style="color: #ff4300">Incorrect Username/Password combination.</p>';
				}
				?>
          </form>
      </div>
      <div class="modal-footer">
          <div class="col-md-12"></div>	
      </div>
  </div>
  </div>
</div>
	</body>
</html>