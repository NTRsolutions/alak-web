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
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
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

    <title>Hostel Council</title>

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
	define('INCLUDE_CHECK', true);
	require 'connect.php';
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



                    <div class="tile tripleS double-vertical transparent" height=100px style="height: 350px">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Hostel Council</div>
                                <div class="panel-content fg-white"><br>
                                    The Hostel Council comprises of Hostel Warden (Teaching Faculty), Assistant Warden (Graduate Student) and 7 Secretaries elected by the Residents. General Body Meetings (GBMs) are hold once in every semester. Budget for various activities in a semester will be passed by the secretaries in the GBM. Residents have the right to reject the unnecessary proposals put forth by the secretaries. Residents can ask for their needs and wants in the GBMs. Manifesto review of various secretaries happen once in an year.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tile tripleS double-vertical transparent" style="height: 350px"">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Hostel Warden</div>
                                <div class="panel-content fg-white"><br>
<?php
$data = mysql_fetch_array(mysql_query("SELECT wName, wPhoto, wWeb, wEmail, wPhone, wAddress FROM alak_wardenDetails WHERE wCode='WAR'"));
echo'
                                    <img src="'.$data['wPhoto'].'" class="place-left margin10 nlm ntm size15">
					<p style="color: #ffffff; font-size: 22px">'.$data['wName'].'</p><br><br>'.$data['wPhone'].'<br>'.$data['wEmail'].'<br>Hostel Office, Alakananda<br><br><strong>Office Address:</strong><br>'.$data['wAddress'].'
<center><br><a href="'.$data['wWeb'].'" class="button success" target="new">Visit Website</a></center>
';
?>
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
		    <div class="tile bg-lightRed transparent">
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


		 <div class="tile triple double-vertical transparent" style="height: 42px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <center><div class="panel-header bg-gray fg-white">Hostel Secretaries</div></center>
                            </div>
                        </div>
                    </div>

                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">General Secretary</div>
                                <div class="panel-content fg-white"><br>
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sRoll, sName FROM alak_secretaryDetails WHERE sCode='GEN'"));
echo'                                    
<p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p>
<img src="images/council/GEN.jpg" class="place-left margin10 nlm ntm size2" ><div class="place-left"><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><a href="secretary.php?sec=GEN"><br><button class="button primary"">See More Details</button></a></div>
';
?>
                                </div>
                            </div>
                        </div>
                    </div>
		    
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Literary Affairs Secretary</div>
                                <div class="panel-content fg-white"><br>
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sRoll, sName FROM alak_secretaryDetails WHERE sCode='LIT'"));
echo'                                    
<p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p>
<img src="images/council/LIT.jpg" class="place-left margin10 nlm ntm size2" ><div class="place-left"><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><a href="secretary.php?sec=LIT"><br><button class="button primary"">See More Details</button></a></div>
';
?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Sports Secretary</div>
                                <div class="panel-content fg-white"><br>
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sRoll, sName FROM alak_secretaryDetails WHERE sCode='SPO'"));
echo'                                    
<p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p>
<img src="images/council/SPO.jpg" class="place-left margin10 nlm ntm size2" ><div class="place-left"><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><a href="secretary.php?sec=SPO"><br><button class="button primary"">See More Details</button></a></div>
';
?>

                                </div>
                            </div>
                        </div>
                    </div>	
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Technical Affairs Secretary</div>
                                <div class="panel-content fg-white"><br>
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sRoll, sName FROM alak_secretaryDetails WHERE sCode='TEC'"));
echo'                                    
<p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p>
<img src="images/council/TEC.jpg" class="place-left margin10 nlm ntm size2" ><div class="place-left"><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><a href="secretary.php?sec=TEC"><br><button class="button primary"">See More Details</button></a></div>
';
?>

                                </div>
                            </div>
                        </div>
                    </div>
	    
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Social Affairs Secretary</div>
                                <div class="panel-content fg-white"><br>
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sRoll, sName FROM alak_secretaryDetails WHERE sCode='SOC'"));
echo'                                    
<p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p>
<img src="images/council/SOC.jpg" class="place-left margin10 nlm ntm size2" ><div class="place-left"><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><a href="secretary.php?sec=SOC"><br><button class="button primary"">See More Details</button></a></div>
';
?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Alumni Affairs Secretary</div>
                                <div class="panel-content fg-white"><br>
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sRoll, sName FROM alak_secretaryDetails WHERE sCode='ALU'"));
echo'                                    
<p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p>
<img src="images/council/ALU.jpg" class="place-left margin10 nlm ntm size2" ><div class="place-left"><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><a href="secretary.php?sec=ALU"><br><button class="button primary"">See More Details</button></a></div>
';
?>
                                </div>
                            </div>
                        </div>
                    </div>
		    
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Health & Hygiene Secretary</div>
                                <div class="panel-content fg-white"><br>
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sRoll, sName FROM alak_secretaryDetails WHERE sCode='HEL'"));
echo'                                    
<p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p>
<img src="images/council/HEL.jpg" class="place-left margin10 nlm ntm size2"><div class="place-left"><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><a href="secretary.php?sec=HEL"><br><button class="button primary"">See More Details</button></a></div>
';
?>
                                </div>
                            </div>
                        </div>
                    </div>

                    
                </div>
            </div>
        </div>
    </div>

    <script src="js/hitua.js"></script>

</body>
</html>