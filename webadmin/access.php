<?php
session_start();
$userErrors = 0;
if(isset($_SESSION['webadmin']))
{
	header('Location: index.php');
}
else
{
	if(isset($_POST['answer']))
	{
		define('INCLUDE_CHECK', true);
		require 'connect.php';
		
		$ans = mysql_real_escape_string($_POST['answer']);

		if(strtoupper($ans) != "SACHIN")
		{
			$userErrors = 1;
		}
		else
		{		
			$_SESSION['webadmin'] = "WEB";
			header('Location: index.php');
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

    <title>Web-Admin Login</title>

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
        </header>
	<br><br><br>

                    <div class="tile tripleF double-vertical transparent" style="height: 300px" >
                        <div class="tile-content">
                            <div class="panel no-border">
                                <center><div class="panel-header bg-gray fg-white">WEB-ADMIN ACCESS</div></center>
							<center><br><br>
							<form method="post" action="access.php">
						            <fieldset>
							            <label style="color:#ffff00; font-size: 20px">What is your name?</label>
								    <div class="input-control text size3" data-role="input-control">
								        <input type="password" name="answer" placeholder="Secret Answer" required>
								    </div><br>
								<input type="submit"value="Proceed">
						            </fieldset>
						        </form>
							
				<?php
				if($userErrors == 1)
				{
echo' <p style="color: #ffffff">Incorrect Secret Answer.</p>';
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
