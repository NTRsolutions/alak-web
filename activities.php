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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="product" content="Alakananda Hostel, IIT Madras">
    <meta name="description" content="Official website of Alakananda Hostel, IIT Madras, Chennai.">
    <link rel="shortcut icon" href="favicon.png" type="image/x-icon">
    <link href="css/metro-bootstrap.css" rel="stylesheet">
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/load-metro.js"></script>
    <script src="js/github.info.js"></script>

    <title>Activities</title>

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
                 
                    <div class="tile triple double-vertical transparent" height=100px  style="height: auto;">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Technical</div>
                                <div class="panel-content transparent fg-white"><br>

                                    <img src="images/alak_tech.jpg" class="place-left margin10 nlm ntm">
                                    There has been a surge of Tech enthusiasm among the students of Alakananda in the recent years. Alakites have been actively contributing to technical activities be it through participation or taking up big projects like SOE. A keen interest in Robotics has been inculcated in the students thanks to technically brilliant seniors like Lokesh, Fuse who have been very keen mentors.<br>Students of Alakananda have been constantly winning competitions at Shaastra, Mechanica and other technical fests. Junkyard Wars, Pwned, Shock, Sim Champ, Make Things Work, Project X and Puzzle Championship to name a few are events Alakites have been winning at. Alakananda has also won the 3rd place in Fete-technical last year.<br>To continue this tradition and to ensure the fresher's continue the good work, a host of intra-hostel freshie events and fundae sessions have been planned. A series of fundae sessions are planned for after Quiz I which will cover a variety of events, from hands on events like Robotics to design events like Aesthetique.

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
                    <div class="tile bg-lightRed transparent">
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


                    <div class="tile triple double-vertical transparent" height=100px style="height: auto;">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Literary & Arts</div>
                                <div class="panel-content transparent fg-white"><br>
                                    <img src="images/alak_lit.jpg" class="place-left margin10 nlm ntm">
Lit Soc encompasses all the inter hostel literary and social activity and competitions that take place on the campus. The events range from speaking events like debate and the hugely entertaining JAM to the sober yet fiercely contested word games like Crossie and Scrabble; from the group music events which are held in front of packed audiences to the equally well followed conglomerate of quizzes- the similarity between the two? Well, both go well into the night; besides, like any other event here, are followed by the exultations and heartburn that characterize contests where pride and pride alone are at stake. Pride in representing one's hostel, pride associated with the responsibility that one has been thrust upon by the legacy that has been set in the past, pride in building upon that foundation of glory and taking it continually to a whole new dimension.<br>Alak has never been devoid of champion material and has a rich history of magnificent performers. LM, WM, Drams, Quizzing, you name it and we've won it. Every year, we put up a hell of a fight for each event, be it Queen Of Sheeba or Scrabble. Running on pure adrenaline, we managed to win Treasure Hunt last year by trumping all stalwarts in the arena. We thulped photography this year too, putting first after putting third last year. We also came up with a sterling performance in the Choreo Nite last year and have a well set and confident troupe eagerly waiting to maul the rest once again.<br> While our performance, overall, in Lit Soc is going through a slump, it is just a matter of time before we rise to the zenith of our potential once again. Watch this space for updates.			
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tile triple double-vertical transparent" height=100px style="height: auto;">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Sports</div>
                                <div class="panel-content transparent fg-white"><br>
                                <img src="images/alak_sport.jpg" class="place-left margin10 nlm ntm">
Sports at Alakananda is an integral part of our lifestyle and is much more than just a time pass activity. It is the primary mode of interaction between hostel mates and has provided some of the most memorable moments of our life at IIT.Sports in IIT Madras is played at three different levels; the intra-hostel, inter hostel and inter-IIT. Every year during December the Inter-IIT sports meet is held in one of the IITs. Representing your institute in the meet is the highest accolade any sportsperson can achieve. The Alakananda sports factory has churned out many institute players who have made us proud over the years. At present, Alakites are a very important part of the several institute teams.There is a huge passion for sports in Alak. Every evening after attending the soporific lectures, junta come down in huge numbers to play in the quadrangle. On one side the footer and hockey junta fight over getting more playing time in the quadi whereas on the other side you have the volley junta peacefully going about their business with no interference. Same is the case for basketball. Field games apart, Alak has two T.T tables and an upcoming and very talented table tennis team. The Fusball table has been a very welcome addition to our hostel’s common room. As mentioned earlier the passion for sports is also evident in the huge turnout to watch cricket, EPL and tennis matches.This intro to sports at Alak will not be complete without mentioning Schroeter, the inter-hostel sports tournament. This highly competitive tournament provides an opportunity to fight it out with other hostel guys and in the process lets students have some of the best fun of their sporting career. Alak has done very well in schroeter over the past few years, coming in 4th place last year. We also have the dean’s trophy held every year which includes games like ball badminton, chess, bridge and carom to mention a few.
			
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




