<?php
session_start();
if(!isset($_SESSION['user']))
{
	header('Location: access.php');
}

$username = $_SESSION['user'];

define('INCLUDE_CHECK', true);
require 'connect.php';
require 'age.php';
require 'mail.php';
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

    <title>Inmates Forum</title>

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
$forumError = 0;
echo '<a href = leave.php><button class="button place-right warning">LOGOUT</button></a>';
echo '<button class="button place-right">'.$username.'</button>';

    		if($_GET['action']=='postForum') 
		{
			date_default_timezone_set('Asia/Calcutta');

			$forumDate = date('d M Y');
			$forumRoll  = $_POST['ipPostRoll'];
			$forumRoom  = $_POST['ipPostRoom'];
			$forumEmail  = $_POST['ipPostEmail'];
			$forumMobile  = $_POST['ipPostMobile'];
			$forumSubject  = $_POST['ipPostSubject'];
			$forumContent  = $_POST['ipPostContent'];
			$forumWing  = $_POST['ipPostWing'];
			$forumSec  = $_POST['ipPostSec'];
			if($residentName = mysql_fetch_assoc(mysql_query("SELECT rName FROM residentsList WHERE rRoll='{$forumRoll}'")))
			{
				$forumName  = $residentName['rName'];
			}

			$credentials = mysql_query("SELECT rRoll FROM residentsList WHERE rRoll='{$forumRoll}' AND rRoom='{$forumRoom}' AND rWing='{$forumWing}'");

			if(mysql_num_rows($credentials) == 0)
			{
				$forumError = 1;
			}
			else
			{	
				mysql_query("INSERT INTO forumInfo (fName, fRoll, fRoom, fEmail, fSubject, fDetails, fDate, fSec, fStatus) VALUES ('{$forumName}', '{$forumRoll}', '{$forumRoom}', '{$forumEmail}', '{$forumSubject}', '{$forumContent}','{$forumDate}','{$forumSec}','0')");
			
				mysql_query("UPDATE residentsList SET rEmail = '{$forumEmail}', rMobile = '{$forumMobile}' WHERE rRoll='{$forumRoll}'");

			$data1 = mysql_fetch_array(mysql_query("SELECT sName, sEmail, sPost FROM secretaryDetails WHERE sCode='{$forumSec}'"));
			$name1 = $data1['sName'];
			$email1 = $data1['sEmail'];
			$post1 = $data1['sPost'];
			$briefs = "\nMr. ".$forumName." has posted a query in Alakananda Inmates Forum on ".$forumDate.". He has tagged ".$name1." (".$post1."). Kindly reply to his post by logging into Admin Console (http://admin.alakananda.in) as soon as possible. The details are below:\n\nSubject:\n".$forumSubject."\n\nContent:\n".$forumContent."\n\n-Thank You!\nWeb Administrator";
			$forSub = "[Alakananda Forum] ".$forumName." asked you a question.";
			mailer($name1, $email1, $forSub , $briefs);


				header('Location: inmatesforum.php');
			}
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
                 
                    <div class="tile triple double-vertical transparent" height=100px style="height: 390px">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Hostel Secretaries</div>
                                <div class="panel-content transparent fg-white">
                                <nav class="sidebar light">
                                    <ul>
                                        <li><a href="secretary.php?sec=GEN">General Secretary</a></li>
                                        <li><a href="secretary.php?sec=LIT">Literary Affairs Secretary</a></li>
                                        <li><a href="secretary.php?sec=SPO">Sports Secretary</a></li>
                                        <li><a href="secretary.php?sec=TEC">Technical Affairs Secretary</a></li>
                                        <li><a href="secretary.php?sec=ALU">Alumni Affairs Secretary</a></li>
                                        <li><a href="secretary.php?sec=SOC">Social Affairs Secretary</a></li>
                                        <li><a href="secretary.php?sec=MES">Mess Secretary</a></li>
                                        <li><a href="secretary.php?sec=GAR">Garden Secretary</a></li>
                                    </ul>
                                </nav>
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
                                    <img src="images/side_library.png" />
				    <center><p style="color: #ffffff">Facebook</p></center>
                        </div>
                    </div>
                    </a>
<?php

$query = mysql_query("SELECT fId, fName, fSubject, fRoll, fRoom, fDetails, fDate, fSec, fReply, fStatus FROM forumInfo WHERE 1");
$postsFound = 0;

echo '
                    <div class="tile triple double-vertical transparent" height=100px style="height: auto">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Complaints and Queries</div>

		                        <div class="accordion span10 place-left margin10" data-role="accordion" data-closeany="false">
';
					while($data = mysql_fetch_assoc($query))
					{
					$postsFound = 1;
					if($data['fStatus'] == 0)
					{
					$rollNo = $data['fRoll'];
echo'
		                            <div class="accordion-frame">
		                                <div class="heading bg-darkRed fg-white">'.$data['fSubject'].'</div>
		                                <div class="content">
		                                <img src="http://photos.iitm.ac.in/byroll.php?roll='.$rollNo.'" class="place-left margin10 nlm ntm size1">
<strong>'.$data['fName'].'</strong><button class="button place-right">'.$data['fSec'].' SEC has not seen yet.</button>
';
if($username == $rollNo)
{
	echo '<a href="deletepost.php?ref='.$data['fId'].'"><button class="button warning place-right">DELETE</button></a>';
}
echo '
<br>Room No. '.$data['fRoom'].'<br>Posted on '.$data['fDate'].'

<br><br><br>
						<div class="panel no-border">
						    <div class="panel-content transparent fg-white">
						        "'.$data['fDetails'].'"
						    </div>
						</div>                               
</div></div>
';
					}

					if($data['fStatus'] == 1)
					{
					$rollNo = $data['fRoll'];
echo'
		                            <div class="accordion-frame">
		                                <div class="heading bg-darkOrange fg-white">'.$data['fSubject'].'</div>
		                                <div class="content">
		                                <img src="http://photos.iitm.ac.in/byroll.php?roll='.$rollNo.'" class="place-left margin10 nlm ntm size1">
<strong>'.$data['fName'].'</strong><button class="button place-right">'.$data['fSec'].' SEC has replied.</button>
';
if($username == $rollNo)
{
	echo '<a href="deletepost.php?ref='.$data['fId'].'"><button class="button warning place-right">DELETE</button></a>';
}
echo '
<br>Room No. '.$data['fRoom'].'<br>Posted on '.$data['fDate'].'
<br><br><br>
						<div class="panel no-border">
						    <div class="panel-content transparent fg-white">
						        "'.$data['fDetails'].'"
						    </div>
						</div>
						<br>
						<div class="panel">
						    <div class="panel-content transparent fg-white">
						        REPLY : "'.$data['fReply'].'"
						    </div>
						</div>

</div></div>
';
					}

					if($data['fStatus'] == 2)
					{
					$rollNo = $data['fRoll'];
					
echo'
		                            <div class="accordion-frame">
		                                <div class="heading bg-darkGreen fg-white">'.$data['fSubject'].'</div>
		                                <div class="content">
		                                <img src="http://photos.iitm.ac.in/byroll.php?roll='.$rollNo.'" class="place-left margin10 nlm ntm size1">
<strong>'.$data['fName'].'</strong><button class="place-right">'.$data['fSec'].' SEC has taken action.</button>
';
if($username == $rollNo)
{
	echo '<a href="deletepost.php?ref='.$data['fId'].'"><button class="button warning place-right">DELETE</button></a>';
}
echo '
<br>Room No. '.$data['fRoom'].'<br>Posted on '.$data['fDate'].'
<br><br><br>

						<div class="panel no-border">
						    <div class="panel-content transparent fg-white">
						        "'.$data['fDetails'].'"
						    </div>
						</div>
						<br>
						<div class="panel">
						    <div class="panel-content bg-gray fg-yellow">
						        ACTION : "'.$data['fReply'].'"
						    </div>
						</div>


</div></div>
';
					}


}
if($forumError == 1)
{
echo '<center><br><p style="color: #ffffff">Authentication Failed.</p></center>';
}
if($postsFound == 0)
{
echo '<center><br><p style="color: #ffffff">There are no posts to display.</p></center>';
}

?>
			</div>
                            <div class="accordion span10 place-left margin10  no-border" data-role="accordion" data-closeany="false">
                                    <div class="accordion-frame no-border">
                                        <a class="heading bg-lightBlue fg-white" href="#">Post a Complaint/Query</a>
                                        <div class="content">

                            <div class="panel no-border">                           
					<div class="panel no-border">
						    <div class="panel-content">			        

							<form action="?action=postForum" method="post">
						            <fieldset>
						                <label>Authentication Details</label>
								    <div class="input-control text size2" data-role="input-control">
								        <input type="text" name="ipPostRoom" placeholder="Room Number" required>
								    </div>
								    <div class="input-control text size2" data-role="input-control">
								        <input type="text" name="ipPostRoll" placeholder="Roll Number" required>
								    </div>
								    <div class="input-control text size2" data-role="input-control">
								        <input type="password" name="ipPostWing" placeholder="Pass-Code" required>
								    </div>

						                <label>Personal Contact Info.</label>
								    <div class="input-control text size4" data-role="input-control">
								        <input type="text" name="ipPostEmail" placeholder="E-Mail Address" required>
								    </div>
								    <div class="input-control text size4" data-role="input-control">
								        <input type="text" name="ipPostMobile" placeholder="Mobile Number">
								    </div>

								<label>Tag a Secretary</label>
								    <div class="input-control select" data-role="input-control">
								        <select name="ipPostSec" required>
								            <option value="GEN">General Secretary</option>
								            <option value="SPO">Sports Secretary</option>
								            <option value="TEC">Technical Affairs Secretary</option>
								            <option value="ALU">Alumni Affairs Secretary</option>
								            <option value="LIT">Literary Affairs Secretary</option>
								            <option value="SOC">Social Affairs Secretary</option>
								            <option value="MES">Mess Secretary</option>
								            <option value="GAR">Garden Secretary</option>
								        </select>
								    </div>
						                <label>Subject</label>
								    <div class="input-control text size6" data-role="input-control">
								        <input type="text" name="ipPostSubject" required>
								    </div>
								<label>Content</label>
								    <div class="input-control textarea" data-role="input-control">
								        <textarea name="ipPostContent" required> </textarea>
								    </div>
								<input type="submit" value="Submit">
						            </fieldset>
						        </form>
						    </div>

						</div>		

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
