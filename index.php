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
require 'age.php';
require 'mail.php';
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

    <title>Alakananda Hostel</title>

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
$searchedRoll = 0;
$searchedRoom = 0;
				$postError = 0;

		    		if($_GET['action']=='postIP') 
				{
				       	$ipUser = $_POST['userName'];
				       	$userRoll = $_POST['rollAuth'];
					$userRoom      = $_POST['roomAuth'];
					$userWing 	= $_POST['passCode'];
					$ipSub 	= $_POST['ipSub'];
					$ipCon 	= $_POST['ipCon'];
					$ipdate 	= $_POST['ipDate'];

					$credentials = mysql_query("SELECT rRoll, rName FROM residentsList WHERE rRoll='{$userRoll}' AND rRoom='{$userRoom}' AND rWing='{$userWing}'");


					if(mysql_num_rows($credentials) == 0)
					{
						$postError = 1;
					}
					else
					{		
						mysql_query("INSERT INTO ipData (iUser, iSubject, iContent, iHighlight) VALUES ('{$ipUser}','{$ipSub}', '{$ipCon}', '0')");

							$mailSub = "New IP: ".$ipSub;
							$mailCon = $ipCon."\n\n- ".$ipUser;

							mailer('Resident','alakjunta@googlegroups.com', $mailSub , $mailCon);
							header('Location: index.php');
					}

				}
				
				$searchRoll = 0;

		    		if($_GET['action']=='searchRoll') 
				{
					$searchedRoll = 1;

					$residentQuery_Roll = mysql_query("SELECT rRoom, rName, rRoll, rWing, rYear, rBranch, rMobile, rEmail FROM residentsList WHERE rRoll='{$_POST['residentRoll']}'");
					while($residentInfo = mysql_fetch_assoc($residentQuery_Roll))
					{
						$searchRoll = 1;
					
						$residentName = $residentInfo['rName'];
						$residentRoom = $residentInfo['rRoom'];
						$residentRoll = $residentInfo['rRoll'];	
						$residentWing = $residentInfo['rWing'];
						$residentYear = $residentInfo['rYear'];
						$residentDept = $residentInfo['rBranch'];
						$residentMobile = $residentInfo['rMobile'];	
						$residentEmail = $residentInfo['rEmail'];		
						break;	
					}
		    		}

				$searchRoom = 0;

		    		if($_GET['action']=='searchRoom') 
				{
					$searchedRoom = 1;

					$residentQuery_Room = mysql_query("SELECT rRoom, rName, rRoll, rWing, rYear, rBranch, rMobile, rEmail FROM residentsList WHERE rRoom='{$_POST['residentRoom']}'");
					while($residentInfo1 = mysql_fetch_assoc($residentQuery_Room))
					{
						$searchRoom = 1;
					
						$residentName = $residentInfo1['rName'];
						$residentRoom = $residentInfo1['rRoom'];
						$residentRoll = $residentInfo1['rRoll'];	
						$residentWing = $residentInfo1['rWing'];
						$residentYear = $residentInfo1['rYear'];
						$residentDept = $residentInfo1['rBranch'];
						$residentMobile = $residentInfo1['rMobile'];	
						$residentEmail = $residentInfo1['rEmail'];		

						break;	
					}
		    		}




?>
<div>
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
                    <div class="tile double quadro-vertical transparent" style="float: right; ">

                        <div class="tile-content">




				<center><h1 style="color: #ffffff">News & Events</h1></center>

			<?php
$eventsFound = 0;
				//For IP Flushing
				date_default_timezone_set('Asia/Calcutta');
				$startDate = date('d M Y');

				$query = mysql_query("SELECT iSubject, iContent, iUser, iHighlight, iDeadline FROM ipData WHERE 1");

echo '
		                        <div class="accordion span3E place-left" data-role="accordion" data-closeany="false">
';

					while($data = mysql_fetch_assoc($query))
					{

						$eventsFound = 1;

						$dateLast = $data['iDeadline'];
						$endDate = date("d M Y", strtotime($dateLast));

						if($startDate <= $endDate)
						{ 
echo'
		                            		<div class="accordion-frame">
';
							if($data['iHighlight'] == 1)
							{
				                                echo' <div class="heading bg-darkRed fg-yellow"><marquee>'.$data['iSubject'].'</marquee></div> ';
							}
							else
							{
						                echo' <div class="heading bg-gray fg-white">'.$data['iSubject'].'</div> ';
							}
echo'
					                                <div class="content">
				                                    '.$data['iContent'].'<br> - '.$data['iUser'].'
				                                </div>
	    		                                </div>
'; 
						}
					}

echo'		                        </div>
					
';

if($eventsFound == 0)
{
echo '<center><br><p style="color: #F3EB0A">There are no upcoming events.<br></p></center>';
}



if($logged ==1)
{
	echo' <center><button class="button warning" id="createFlatWindow">Post an IP</button></center>';
	if($postError ==1)
	{
		echo'<center><p style="color: #ffffff">Incorrect Username/Passcode combination.</p></center>';
	}
}

echo '

				<center><h1 style="color: #ffffff; font-size: 24px; padding-top: 15px">Resident Search</h1></center>
					<div class="place-middle">
					    <form method="post" action="?action=searchRoll">
						<div class="input-control text size3 margin10 nrm">
						    <input type="text" name="residentRoll" placeholder="Enter Roll Number">
						    <button type="submit" class="btn-search"></button>
						</div>
					    </form>
					</div>
					<div class="place-middle">
					    <form method="post" action="?action=searchRoom">
						<div class="input-control text size3 margin10 nrm">
						    <input type="text" name="residentRoom" placeholder="Enter Room Number">
						    <button type="submit" class="btn-search"></button>
						</div>
					    </form>
					</div>
';

			if($searchedRoll == 1)
			{
					if($searchRoll == 0)
					{
						echo '<center>No Matches Found.</center><br>';
					}
					else
					{
echo'
						<div class="panel">
						    <div class="panel-header bg-lightBlue fg-white">
						        Roll Number: '.$residentRoll.'
						    </div>
						    <div class="panel-content">
							<center><img src="http://photos.iitm.ac.in/byroll.php?roll='.$residentRoll.'" class="margin10 size2 nlm ntm"><br>
						        <strong>'.$residentName.'</strong><br>Room #'.$residentRoom.', '.$residentWing.' Wing<br>'.$residentYear.' Year Student<br>'.$residentDept.' </center><br><br><strong>Mobile</strong> : <br>'.$residentMobile.'<br><strong>EMail</strong> : <br>'.$residentEmail.'
						    </div>
						</div>
';
					}
			}

			if($searchedRoom == 1)
			{
					if($searchRoom == 0)
					{
						echo '<center>No Matches Found.</center><br>';
					}
					else
					{
echo'
						<div class="panel">
						    <div class="panel-header bg-lightBlue fg-white">
						        Room Number: '.$residentRoom.'
						    </div>
						    <div class="panel-content">
							<center><img src="http://photos.iitm.ac.in/byroll.php?roll='.$residentRoll.'" class="margin10 size2 nlm ntm"><br>
						        <strong>'.$residentName.'</strong><br>Roll No. '.$residentRoll.'<br>'.$residentYear.' Year Student<br>'.$residentDept.'<br><br></center><strong>Mobile</strong> : <br>'.$residentMobile.'<br><strong>EMail</strong> : <br>'.$residentEmail.'
						    </div>
						</div>
';
					}
			}



echo '
                        </div>
                    </div>
';
echo "



	<script>
                        $(\"#createFlatWindow\").on('click', function(){
                            $.Dialog({
                                overlay: true,
                                shadow: true,
                                flat: true,
                                draggable: true,
                                icon: '<img src=\"images/favicon.png\">',
                                title: 'Authenticate',
                                content: '',
                                padding: 15,
                                onShow: function(_dialog){
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=postIP\">' +
                                            '<div class=\"input-control text\"><input placeholder=\"Name to be Displayed\" type=\"text\" name=\"userName\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Room Number\" type=\"text\" name=\"roomAuth\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Roll Number\" type=\"text\" name=\"rollAuth\" required></div>' +
                                            '<div class=\"input-control password\"><input placeholder=\"Pass-Code\" type=\"password\" name=\"passCode\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"IP Subject\" type=\"text\" name=\"ipSub\" required></div>' +

                                            '<div class=\"input-control textarea\" data-role=\"input-control\"><textarea placeholder=\"IP Content\" name=\"ipCon\" required></textarea></div>' +
					    '<label>Expires On</label>' +
                                            '<div class=\"input-control text\"><input type=\"date\" name=\"ipDate\" required></div>' +
 
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Post\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Post an IP\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>


";
?>


                    <div class="tile quadro double-vertical ol-transparent" style="height: 250px;">
                        <div class="tile-content">

                                <div class="carousel" id="carousel2">
                                    <div class="slide">
                                        <img src="images/alak1.jpg" class="cover1" />
                                    </div>

                                    <div class="slide">
                                        <img src="images/alak2.jpg" class="cover1" />
                                    </div>

                                    <div class="slide">
                                        <img src="images/alak3.jpg" class="cover1"/>
                                    </div>
                                </div>
                                <script>
                                    $(function(){
                                        $("#carousel2").carousel({
                                            height: 250,
                                            effect: 'fade',
                                            markers: {
                                                show: true,
                                                type: 'square',
                                                position: 'bottom-right'
                                            }
                                        });
                                    })
                                </script>

                        </div>
                    </div>
                    <a href="index.php">
                    <div class="tile bg-lightRed transparent">
                        <div class="tile-content">
                                    <img src="images/side_home.png" />
				    <center><p style="color: #ffffff">Home</p></center>
                        </div>
                    </div>
                    </a>
                    <a href="gallery.php">
		    <div class="tile bg-lightBlue transparent">
                        <div class="tile-content">
                                    <img src="images/side_hall of fame.png" />
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
                    <a href="inmatesforum.php">
                    <div class="tile bg-lightBlue transparent">
                        <div class="tile-content">
                                    <img src="images/side_forum.png" />
				    <center><p style="color: #ffffff">Inmates Forum</p></center>
                        </div>
                    </div>
                    </a>
                    <div class="tile triple double-vertical transparent" height=100px style="height: auto;">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">About</div>
                                <div class="panel-content transparent fg-white"><br>
                                    <img src="images/alak_logo.png" class="place-left margin10 nlm ntm size2">
                                    <strong>Alakananda</strong>, built in the 1970s has been home away from home to some of the finest students of Indian Institute of Technology Madras. Housing about 380 students, its walls speak of stories of the past and the present. It has seen the transformation of IIT as a brand of global repute. Named after the great river, a continuous flow of promising talent is what we pride ourselves in.<br>Alak, as we fondly call our hostel, is an abode of chaos. Sports, music, academics come together in a potent blend of ecstasy. Coming from various parts of the country, we are the most varied, talented and envied among the students of IIT. We at Alakananda thrive at being the best in everything, whether it's our LM and WM performances sweeping away everyone else in Lit-Soc or the basky team smashing away the competition in Schroeter or the nine pointers beating everyone else when it comes to academics.<br>Alak has traditionally prided itself in having inmates who excel quietly, without making a huge hue and cry about it. From having had sporting legends winning events in consecutive years to quizzing gods thulping away quizzes even now to the largest number of T5E Editors and Executive Editors, Alak has been at the forefront of activity, but has never hogged the limelight.<br>Tucked away in a quiet corner of the campus, the location of Alakananda hostel is an operation researcher's dream-come-true solution. Located at just the right distance from Zaitoon - the Night Restaurant, IRCTC Snacketeria - the 24x7 Canteen, Sangam Ground, Taramani (the back gate, which leads to loads of possibilities!), the SAC and farthest from the academic section!
                                </div>
                            </div>
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Facilities</div>
                                <div class="panel-content transparent fg-white"><br>
                                    <strong>Music Room</strong>: Alak has perhaps the best equipped hostel music room on campus. We currently own two electric guitars, a bass guitar, a set of jazz drums, mixer, amplifier - all coupled with powerful speakers. Located in a quaint corner of the premises, i.e. a soundproofed portion in the old common room, it facilitates round the clock usage without causing acoustic disturbance to the hostel's quieter residents.<br><br>
                                    <strong>Library</strong>: Alak boasts a well stocked library run and maintained by the Literary Affairs Secretary. We currently own a good number of Jeffrey Archers, Arthur Haileys, Dan Browns, etc among others and the collection keeps growing. The library is currently under renovation and will soon parallel others in the Institute in range and grandeur.<br><br>
                                    <strong>Common Room</strong>: Veritable media for the inmates to congregate and socialise, Alak has two common rooms boasting two different televisions. The common room is usually well-equipped with newspapers and magazines for junta to enjoy as they sit around and spend time outside of their lonely rooms.<br><br>
                                    <strong>Tech Room</strong>: Well equipped, air conditioned and well maintained tech-room provides you with various tools, power tools, materials etc required for doing a tech-project.<br><br>                              
				    <strong>Sporting Facilities</strong>: <strong>Footer Field, </strong>Alak’s quadrangular is state-of-the-art with an excellent football field. Rain or shine, this field shall bear witness as you bend it like Beckham.<strong> Badminton Court, </strong>A well-lit and well-designated badminton court is a pointer to a hostel’s sporting enthusiasm and Alak has one of the best badminton courts in the Institute.<strong> Table Tennis Room, </strong>Fitted with two TT tables, Alak’s TT room is an integral part of the hostel’s sports culture. Racquets and balls are made available and enthusiastic junta always find comfort in TTing away their time here.<br><br>
				    <div class="bottom-menu-wrapper">
					<ul class="horizontal-menu compact">
					<center>
			    		    <li><a href="https://www.facebook.com/alakanandahostel" target="new"><button class="button place-right default">Facebook Page</button></a></li>
					    <li><a href="https://www.facebook.com/groups/alakanandahosteliitm" target="new"><button class="button place-right default">Facebook Group</button></a></li>
					    <li><a href="https://www.linkedin.com/groups/Alakananda-Hostel-Alumni-IIT-Madras-4322687" target="new"><button class="button place-right default">LinkedIn Group</button></a></li>
					</center>
					</ul>
				    </div>

                               </div>
                            </div>
                  
                </div>
            </div>
	 <center><p style="color: #aaaaaa">Alakananda Hostel, IIT Madras, Chennai - 36</center>
        </div>
    </div>
    <script src="js/hitua.js"></script>

</body>
</html>
