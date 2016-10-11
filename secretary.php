<?php
session_start();

if(!isset($_SESSION['user']))
{
	//header('Location: access.php');
}

if(!isset($_SESSION['user']))
{
	$logged = 0;
	$username = "Guest";
}
else
{
	$logged = 1;
	$username = $_SESSION['user'];
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
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/jquery/jquery.dataTables.js"></script>
    <script src="js/prettify/prettify.js"></script>
    <script src="js/load-metro.js"></script>
    <script src="js/docs.js"></script>
    <script src="js/github.info.js"></script>

    <title>Secretary Profile</title>

    <style>
        .container {
            width: 1040px;
        }
    </style>
</head>
<body class="metro">
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-38503881-7', 'alakananda.in');
  ga('send', 'pageview');

</script>

<?php
if($logged ==0)
{
	echo '<a href = forum/login.php><button class="button place-right warning">LOGIN</button></a>';
}
else
{
	echo '<a href = forum/logout.php><button class="button place-right warning">LOGOUT</button></a>';
	echo '<button class="button place-right">'.$username.'</button>';
}
?>

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


	<?php
		define('INCLUDE_CHECK', true);
		require 'connect.php';
		$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sRoll, sMobile, sCode, sName, sPost, sInfo, sBudgetDate FROM secretaryDetails WHERE sCode='{$_GET['sec']}'"));
		$title = $data['sPost'];
		$name = $data['sName'];
		$code = $data['sCode'];
		$brief = $data['sInfo'];
		$secroom1 = $data['sRoom'];
		$secmail1 = $data['sEmail'];
		$secmob1 = $data['sMobile'];
		$secroll = $data['sRoll'];

		$lastUpdate = $data['sBudgetDate'];

echo'
                    <div class="tile triple double-vertical transparent" height=100px style="height: auto" >
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">'.$title.' : <strong>'.$name.'</strong></div>
                                <div class="panel-content transparent fg-white">

                    <table class="table">
                        <tbody>
                        <tr class="transparent"><td style="width: 180px;"><img src="images/council/'.$code.'.jpg" class="place-left margin10 size15 nlm ntm"></td><td>"'.$brief.'"</td></tr>
                        </tbody>
                    </table>

                    <table class="table">
                        <tbody>
                        <tr class="transparent"><td>Room Number</td><td class="right">'.$secroom1.'</td></tr>
                        <tr class="transparent"><td>E-Mail</td><td class="right">'.$secmail1.'</td></tr>
                        <tr class="transparent"><td>Phone</td><td class="right">'.$secmob1.'</td></tr>
                        <tr class="transparent"><td>Manifesto</td><td class="right"><a href="manifestos/'.$code.'.pdf" class="button primary">See the Manifesto</a></td></tr>
                        </tbody>
                    </table>

                                </div>
                            </div>
                        </div>
                    </div>

                    <a href="index.php">
                    <div class="tile bg-lightBlue transparent">
                        <div class="tile-content">
                                    <img src="images/side_home.png" />
				    <center><p style="color: #ffffff">Home</p></center>
                        </div>
                    </div>
                    </a>
                    <a href="gallery.php">                   
                    <div class="tile bg-lightBlue transparent">
                        <div class="tile-content">
                                    <img src="images/side_gallery.png" />
				    <center><p style="color: #ffffff">Gallery</p></center>
                        </div>
                    </div>
                    </a>
                    <a href="activities.php">
                    <div class="tile bg-lightBlue transparent">
                        <div class="tile-content">
                                    <img src="images/side_activity.png" />
				    <center><p style="color: #ffffff">Activities</p></center>
                        </div>
                    </div>
                    </a>
                    <a href="council.php">
		    <div class="tile bg-lightBlue transparent">
                        <div class="tile-content">
                                    <img src="images/side_council.png" />
				    <center><p style="color: #ffffff">Council</p></center>
                        </div>
                    </div>
                    </a>
                    <a href="inmatesforum.php">
                    <div class="tile bg-lightRed transparent">
                        <div class="tile-content">
                                    <img src="images/side_forum.png" />
				    <center><p style="color: #ffffff">Inmates Forum</p></center>
                        </div>
                    </div>
                    </a>
                    <a href="https://www.facebook.com/alakanandahostel" target="new">
                    <div class="tile bg-lightBlue transparent">
                        <div class="tile-content">
                                    <img src="images/side_facebook.png" />
				    <center><p style="color: #ffffff">Facebook</p></center>
                        </div>
                    </div>
                    </a>
		<br>
';
if($logged == 0)
{
echo'
<center><p style="font-size: 15px; color: #FFF410; padding-top: 390px">Please <a href = forum/login.php style="color:#ffffff"><strong>Login as Resident</strong></a> to see more details.</p></center>
';
}
else
{
echo'
		<center><h1 style="color: #ffffff;  font-size: 30px; padding-top: 390px">Budget Details</h1></center>
';
		$row2 = mysql_fetch_array(mysql_query("SELECT bCode FROM budget WHERE bCode='{$_GET['sec']}'"));
		$count2 = 0;
		$totalSpent = 0;

		if($row2["bCode"])
		{
			$query2 = mysql_query("SELECT bDetails, bAmount, bDate FROM budget WHERE bCode='{$_GET['sec']}'");
echo '
            <div class="example">
                    <table class="table hovered">
                        <thead>
                        <tr>
                            <th class="text-left">Sl No</th>
                            <th class="text-left">Date</th>
                            <th class="text-left">Details</th>
                            <th class="text-left">Amount Spent</th>
                        </tr>
                        </thead>

                        <tbody>
';
			while($entry2 = mysql_fetch_assoc($query2))
			{
				$count2 = $count2 + 1;
				$details2 = $entry2['bDetails'];
				$amount2 = $entry2['bAmount'];
				$totalSpent = $totalSpent + $amount2;	
				$date2 = $entry2['bDate'];	
echo'

                        <tr><td>'.$count2.'</td><td class="right">'.$date2.'</td><td class="right">'.$details2.'</td><td class="right">'.$amount2.'</td></tr>
';
			}
echo'
                        <tr class="info"><td>Total</td><td class="right"></td><td class="right"></td><td class="right">Rs. '.$totalSpent.'</td></tr>
                        </tbody>
                        <tfoot></tfoot>
                    </table>
Last updated on <strong>'.$lastUpdate.'</strong>.
	     </div>
';		
		}
		else
		{
echo'
		<center><p style="font-size: 15px; color: #FFF410";>Budget Details are not updated by the '.$title.'.</p></center>
';
		}
}

?>		
	<br><br>
        </div>
    </div>

    <script src="js/hitua.js"></script>

</body>
</html>