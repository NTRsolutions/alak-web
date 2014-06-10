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
	echo '<a href = access.php><button class="button place-right warning">LOGIN</button></a>';
}
else
{
	echo '<a href = leave.php><button class="button place-right warning">LOGOUT</button></a>';
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
                                    The Hostel Council comprises of Hostel Warden (Teaching Faculty), Assistant Warden (Graduate Student) and 8 Secretaries elected by the Residents. General Body Meetings (GBMs) are hold once in every semester. Budget for various activities in a semester will be passed by the secretaries in the GBM. Residents have the right to reject the unnecessary proposals put forth by the secretaries. Residents can ask for their needs and wants in the GBMs. Manifesto review of various secretaries happen once in an year.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tile tripleS double-vertical transparent" style="height: 350px"">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Hostel Warden</div>
                                <div class="panel-content fg-white"><br>
                                    <img src="images/council/WAR.jpg" class="place-left margin10 nlm ntm size2">
					<p style="color: #ffffff; font-size: 22px">Dr. Somashekhar S. Hiremath</p><br><br>0442257 4681<br>somashekhar@iitm.ac.in<br>Hostel Office, Alakananda<br><br><strong>Office Address:</strong><br>MSB 310, Department of Mechanical Engineering,<br>IIT Madras, Chennai - 600 036
<center><br><a href="http://mech.iitm.ac.in/PEIL%20HOME%20PAGE/Members/Prof.Somasekhar/Soma%20sekhar.html" class="button success" target="new">Visit Website</a></center>
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
                                    <img src="images/council/GEN.jpg" class="place-left margin10 nlm ntm size2">
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sName FROM secretaryDetails WHERE sCode='GEN'"));
echo'
<br><p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p><br><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><br>
';
?>
<a href="secretary.php?sec=GEN"><center><br><button class="button primary"">See More Details</button></center></a>
                                </div>
                            </div>
                        </div>
                    </div>
		    
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Literary Affairs</div>
                                <div class="panel-content fg-white"><br>
                                    <img src="images/council/LIT.jpg" class="place-left margin10 nlm ntm size2">
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sName FROM secretaryDetails WHERE sCode='LIT'"));
echo'
<br><p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p><br><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><br>
';
?>
<a href="secretary.php?sec=LIT"><center><br><button class="button primary"">See More Details</button></center></a>
          <div  style="background-image: url('images/council/GEN.jpg');"></div>​

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Sports Secretary</div>
                                <div class="panel-content fg-white"><br>
                                    <img src="images/council/SPO.jpg" class="place-left margin10 nlm ntm size2 size2">
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sName FROM secretaryDetails WHERE sCode='SPO'"));
echo'
<br><p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p><br><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><br>
';
?>
<a href="secretary.php?sec=SPO"><center><br><button class="button primary"">See More Details</button></center></a>
                                </div>
                            </div>
                        </div>
                    </div>	
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Technical Affairs</div>
                                <div class="panel-content fg-white"><br>
                                    <img src="images/council/TEC.jpg" class="place-left margin10 nlm ntm size2">
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sName FROM secretaryDetails WHERE sCode='TEC'"));
echo'
<br><p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p><br><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><br>
';
?>
<a href="secretary.php?sec=TEC"><center><br><button class="button primary"">See More Details</button></center></a>
                                </div>
                            </div>
                        </div>
                    </div>
	    
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Social Affairs</div>
                                <div class="panel-content fg-white"><br>
                                    <img src="images/council/SOC.jpg" class="place-left margin10 nlm ntm size2">
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sName FROM secretaryDetails WHERE sCode='SOC'"));
echo'
<br><p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p><br><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><br>
';
?>
<a href="secretary.php?sec=SOC"><center><br><button class="button primary"">See More Details</button></center></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Alumni Affairs</div>
                                <div class="panel-content fg-white"><br>
                                    <img src="images/council/ALU.jpg" class="place-left margin10 nlm ntm size2">
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sName FROM secretaryDetails WHERE sCode='ALU'"));
echo'
<br><p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p><br><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><br>
';
?>
<a href="secretary.php?sec=ALU"><center><br><button class="button primary"">See More Details</button></center></a>
                                </div>
                            </div>
                        </div>
                    </div>
		    
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Mess Secretary</div>
                                <div class="panel-content fg-white"><br>
                                    <img src="images/council/MES.jpg" class="place-left margin10 nlm ntm size2">
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sName FROM secretaryDetails WHERE sCode='MES'"));
echo'
<br><p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p><br><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><br>
';
?>
<a href="secretary.php?sec=MES"><center><br><button class="button primary"">See More Details</button></center></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tile tripleS double-vertical transparent" style="height: 288px">
                         <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Garden Secretary</div>
                                <div class="panel-content fg-white"><br>
                                    <img src="images/council/GAR.jpg" class="place-left margin10 nlm ntm size2">
<?php
$data = mysql_fetch_array(mysql_query("SELECT sRoom, sEmail, sMobile, sName FROM secretaryDetails WHERE sCode='GAR'"));
echo'
<br><p style="color: #ffffff; font-size: 22px">'.$data['sName'].'</p><br><br>'.$data['sMobile'].'<br>'.$data['sEmail'].'<br>Room #'.$data['sRoom'].'<br><br>
';
?>
<a href="secretary.php?sec=GAR"><center><br><button class="button primary"">See More Details</button></center></a>
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
