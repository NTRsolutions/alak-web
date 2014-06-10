<?php
session_start();
$userErrors = 0;
if(isset($_SESSION['user']))
{
	header('Location: inmatesforum.php');
}
else
{
	if(isset($_POST['userRoll']) && isset($_POST['userRoom']) && isset($_POST['userPass']))
	{
		define('INCLUDE_CHECK', true);
		require 'connect.php';
		$userCredentials = mysql_query("SELECT rRoll FROM residentsList WHERE rRoll='{$_POST['userRoll']}' AND rRoom='{$_POST['userRoom']}' AND rWing='{$_POST['userPass']}'");

		if(mysql_num_rows($userCredentials) == 0)
		{
			$userErrors = 1;
		}
		else
		{		
			$_SESSION['user'] = $_POST['userRoll'];
			header('Location: inmatesforum.php');
		}
	}	
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="product" content="Alakananda Hostel, IIT Madras">
    <meta name="description" content="Official website of Alakananda Hostel, IIT Madras, Chennai.">
    <link rel="shortcut icon" href="favicon.png" type="image/x-icon">
    <link href="css/metro-bootstrap.css" rel="stylesheet">
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/load-metro.js"></script>
    <script src="js/github.info.js"></script>

    <title>Resident Login</title>

    <style>
        .container {
            width: 1040px;
        }
    </style>
</head>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-38503881-7', 'alakananda.in');
  ga('send', 'pageview');

</script>

<body class="metro">

   <div class="container">
        <header class="margin20 nrm nlm">
            <div class="clearfix">
		<a href="#">
			<center><br><br><img src="images/head_logo.png" height=100 /></center>
		</a>
            </div>

            <center>
            <div class="main-menu-wrapper">
                <ul class="horizontal-menu nlm">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="activities.php">Activities</a></li>
                    <li><a href="council.php">Council</a></li>
                    <li><a href="inmatesforum.php">Inmates Forum</a></li>
                    <li><a href="gallery.php">Gallery</a></li>
                </ul>
            </div>
	</center>	

        </header>
	<br><br><br>

                    <div class="tile tripleF double-vertical transparent" style="height: 300px" >
                        <div class="tile-content">
                            <div class="panel no-border">
                                <center><div class="panel-header bg-gray fg-white">RESIDENT ACCESS</div></center>
							<center><br><br>
							<form method="post" action="access.php">
						            <fieldset>
								    <div class="input-control text size3" data-role="input-control">
								        <input type="text" style="text-transform: uppercase" name="userRoll" placeholder="Username" required>
								    </div><br>
								    <div class="input-control text size3" data-role="input-control">
								        <input type="text" name="userRoom" placeholder="Room Number" required>
								    </div><br>

								    <div class="input-control text size3" data-role="input-control">
								        <input type="password" name="userPass" placeholder="Passcode" required>
								    </div><br>
								<input type="submit"value="Login">
						            </fieldset>
						        </form>
							
				<?php
				if($userErrors == 1)
				{
echo' <p style="color: #ffffff">Incorrect Username/Room Number/Passcode combination.</p>';
				}
				?>
							</center>
                            </div>
                        </div>
                    </div>
	</div>
    <script src="js/hitua.js"></script>

</body>
</html>
