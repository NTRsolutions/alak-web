<?php
session_start();

if(!isset($_SESSION['user']))
{
	$logged = 0;
}
else
{
	$logged = 1;
	$username = $_SESSION['user'];
}

define('INCLUDE_CHECK', true);
require 'connect.php';
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

    <title>Gallery</title>

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

        <div class="main-content clearfix">
            <div class="tile-area no-padding clearfix">
                <div class="tile-group no-margin no-padding clearfix" style="width: 100%">

<?php
$query = mysql_query("SELECT pgTitle, pgContent, pgDate, pgFlag FROM pageGallery WHERE 1");
$data = mysql_fetch_array($query);
	$title = $data['pgTitle'];
	$date = $data['pgDate'];
	$content = $data['pgContent'];
	$flag = $data['pgFlag'];
echo'                 
                    <div class="tile triple double-vertical transparent" height=100px  style="height: auto;">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-amber fg-white"><strong>'.$title.'</strong></div>
                                <div class="panel-content fg-yellow"><br>
';
				if($flag == 1)
                                { echo' <img src="images/gallery/'.$title.'.jpg" width="66%" class="place-left margin10 nlm ntm"> ';}

echo ' '.$content.' 
                                </div>
                            </div>
                        </div>
                    </div>
';
?>

                    <a href="index.php">
                    <div class="tile bg-lightBlue transparent">
                        <div class="tile-content">
                                    <img src="images/side_home.png" />
				    <center><p style="color: #ffffff">Home</p></center>
                        </div>
                    </div>
                    </a>
                    <a href="gallery.php">                   
                    <div class="tile bg-lightRed transparent">
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
                    <div class="tile bg-lightBlue transparent">
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

<?php
$query = mysql_query("SELECT pgTitle, pgContent, pgDate, pgFlag FROM alak_pageGallery WHERE 1");
$count = 0;
while ($data = mysql_fetch_array($query))
{
	$title = $data['pgTitle'];
	$date = $data['pgDate'];
	$content = $data['pgContent'];
	$flag = $data['pgFlag'];

	if($count != 0)
	{
echo'

                    <div class="tile triple double-vertical transparent" height=100px style="height: auto;">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-amber fg-white"><strong>'.$title.'</strong></div>
                                <div class="panel-content  fg-yellow"><br>
';
				if($flag == 1)
				{					
                                    echo' <img src="images/gallery/'.$title.'.jpg" width = "50%" class="place-left margin10 nlm ntm"> ';
				}
echo ' '.$content.'			
                                </div>
                            </div>
                        </div>
                    </div>
';
	}
	$count++;
}
?>

                </div>
            </div>
         </div>

    </div>

    <script src="js/hitua.js"></script>

</body>
</html>



