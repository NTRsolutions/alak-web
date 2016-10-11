<?php
session_start();

if(!isset($_SESSION['webadmin']))
{
	header('Location: access.php');
}

$username = $_SESSION['webadmin'];

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

    <title>Web Admin</title>

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
echo '<a href = logout.php><button class="button place-right">LOGOUT</button></a>';
?>

   <div class="container">
        <header class="margin20 nrm nlm">
            <div class="clearfix">
		<a href="#">
			<center><br><br><img src="images/head_logo.png" height=100 /></center>
		</a>
            </div><br><br>
        </header>



	<?php


    		if($_GET['action']=='wardenUpdate') 
		{
		        $name      	= $_POST['warname'];
		        $phone	 	= $_POST['warphone'];
		        $email 		= $_POST['waremail'];
		        $address 	= $_POST['waroffice'];
		        $web	 	= $_POST['warwebsite'];
			$photo	 	= $_POST['warphoto'];

			mysql_query("UPDATE wardenDetails SET wName = '{$name}', wPhone = '{$phone}', wEmail = '{$email}', wAddress = '{$address}', wWeb = '{$web}', wPhoto = '{$photo}' WHERE wCode='WAR'");

echo ' <script>window.location = "index.php";</script> ';


    		}

		$data = mysql_fetch_array(mysql_query("SELECT sCode, sName, sPost, sRoom, sMobile, sEmail, sInfo, sBudgetDate, sUpdate FROM secretaryDetails WHERE sCode='{$_SESSION['admin']}'"));
		$title = $data['sPost'];
		$name = $data['sName'];
		$code = $data['sCode'];
		$brief = $data['sInfo'];
		$mobile = $data['sMobile'];
		$email = $data['sEmail'];
		$room = $data['sRoom'];
		$lastlogin = $data['sUpdate'];



    		if($_GET['action']=='masterReset') 
		{
			//Add it Later (Version 3)
			header('Location: https://www.facebook.com/abhijithcs1993');
    		}

    		if($_GET['action']=='approvePost') 
		{
			if(!empty($_POST['approve'])) 
			{
				foreach($_POST['approve'] as $postReference) 
				{
					mysql_query("UPDATE forumInfo SET fAccess = 1 WHERE fId='{$postReference}'");
				}
			}

			//NOTIFY SEC #############

echo ' <script>window.location = "index.php";</script> ';
    		}


   		if($_GET['action']=='rejectPosts') 
		{
			//SET ACCESS TO (Reject)
			mysql_query("UPDATE forumInfo SET fAccess = 2 WHERE fAccess = 0");

			//SEND MAIL TO THE RESIDENT
			$data1 = mysql_fetch_array(mysql_query("SELECT fName, fEmail, fSubject, fDetails FROM forumInfo WHERE fAccess =  2"));
			$name1 = $data1['fName'];
			$email1 = $data1['fEmail'];
			$sub1 = $data1['fSubject'];
			$briefs = "\nYour post on \" ".$sub1." \" in Alakananda Hostel - Inmates Forum (http://forum.alakananda.in) is rejected by the Web Admin for violating the Policy of Posting. Contact hostelalakananda@gmail.com for more details.\n\n-Thank You!\nWeb Administrator";
			$forSub = "Post about ".$sub1." is rejected."; 
			mailer($name1, $email1, $forSub , $briefs);

			header('Location: index.php');
    		}

    		if($_GET['action']=='approveIP') 
		{
			if(!empty($_POST['approve'])) 
			{
				foreach($_POST['approve'] as $ipReference) 
				{
					mysql_query("UPDATE ipData SET iAccess = 1 WHERE ipID='{$ipReference}'");
				}
			}

			//NOTIFY USER #############

echo ' <script>window.location = "index.php";</script> ';
    		}

    		if($_GET['action']=='rejectIPs') 
		{
			//SEND MAIL TO THE RESIDENT
// NOTE: ASK for EMAIL also while posting the IP. To send him the status back. :D Do it my boy! :P :*
/*
			$data1 = mysql_fetch_array(mysql_query("SELECT iName, fEmail, fSubject, fDetails FROM forumInfo WHERE fAccess =  2"));
			$name1 = $data1['fName'];
			$email1 = $data1['fEmail'];
			$sub1 = $data1['fSubject'];
			$briefs = "\nYour post on \" ".$sub1." \" in Alakananda Hostel - Inmates Forum (http://forum.alakananda.in) is rejected by the Web Admin for violating the Policy of Posting. Contact hostelalakananda@gmail.com for more details.\n\n-Thank You!\nWeb Administrator";
			$forSub = "Post about ".$sub1." is rejected."; 
			mailer($name1, $email1, $forSub , $briefs);

*/

			//DELETE IPs (Reject)
			mysql_query("DELETE FROM ipData WHERE iAccess = 0");

echo ' <script>window.location = "index.php";</script> ';
    		}

echo'


		   
                    <div class="tile tripleF double-vertical transparent" style="height: auto">
                        <div class="tile-content">
                            <div class="panel no-border fg-white">
                               
                                <div class="panel-header bg-gray fg-white">Details of Hostel Secretaries</div>
                                <div class="panel-content transparent fg-white">
';
		$sec_query = mysql_query("SELECT sPost, sName, sUpdate, sMobile, sEmail FROM secretaryDetails WHERE 1 ORDER BY sPost");
echo'
				    <table class="table">
				        <tbody>
<tr class="fg-red bg-white"><td>Post</td><td class="right">Name</td><td>E-Mail</td><td>Mobile</td><td>Last Login</td></tr>
';
		while($secretary = mysql_fetch_assoc($sec_query))
		{
echo'
				        <tr class="transparent"><td>'.$secretary['sPost'].'</td><td class="right">'.$secretary['sName'].'</td><td>'.$secretary['sEmail'].'</td><td>'.$secretary['sMobile'].'</td><td>'.$secretary['sUpdate'].'</td></tr>
';
		}

echo'
				        </tbody>
				    </table>

                                </div>
				 </div>
                            </div>
                        </div>

		 <div class="tile tripleF double-vertical transparent" style="height: auto">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Pending Forum Posts</div>

';

		$forumRow = mysql_fetch_array(mysql_query("SELECT fId FROM forumInfo WHERE fAccess = 0 "));

		if($forumRow["fId"])
		{
			$forumMatches = mysql_query("SELECT fId, fSec, fName, fDate, fSubject, fRoom, fDetails, fStatus, fReply FROM forumInfo WHERE fAccess = 0");

echo '

			    <div class="example">
				    <table class="table hovered">
				        <thead>
				        <tr>
					    <th class="text-left fg-green">Select</th>
				            <th class="text-left fg-darkBlue">Secretary</th>
				            <th class="text-left">Name</th>
				            <th class="text-left">Room</th>
				            <th class="text-left">Date</th>
				            <th class="text-left">Subject</th>
				            <th class="text-left">Details</th>
				        </tr>
				        </thead>
					
					<tbody>
					<form method="post" action="?action=approvePost">
';

				while($forumEntry = mysql_fetch_assoc($forumMatches))
				{
					$fdetails = $forumEntry['fDetails'];
					$fname = $forumEntry['fName'];
					$fstatus = $forumEntry['fStatus'];	
					$freply = $forumEntry['fReply'];
					$fcode = $forumEntry['fId'];
					$fsub = $forumEntry['fSubject'];
					$froom = $forumEntry['fRoom'];
					$fdate = $forumEntry['fDate']; 
					$fsecr = $forumEntry['fSec'];
echo '				        
				        <tr><td><input type="checkbox" name="approve[]" value="'.$fcode.'"></td><td class="fg-darkBlue">'.$fsecr.'</td><td>'.$fname.'</td><td class="right">'.$froom.'</td><td class="right">'.$fdate.'</td><td class="right">'.$fsub.'</td><td class="right">'.$fdetails.'</td></tr>
';
				}
echo'
				        </tbody>
				    </table>
			<br><input type="submit" class="success" value="Approve Selected Posts">
			</form>
<button class="button danger" id="rejectPosts">Reject All Posts</button>

			     </div>
';
			}
			else
			{
echo' 
				<center><p style="font-size: 15px; color: #FFF410">There are no forum posts pending approval.</p></center> 
';
			}

echo"
                            </div>
                        </div>
                    </div>


";


//PENDING IPs
echo '


		 <div class="tile tripleF double-vertical transparent" style="height: auto">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Pending IPs</div>

';

		$forumRow = mysql_fetch_array(mysql_query("SELECT ipID FROM ipData WHERE iAccess = 0 "));

		if($forumRow["ipID"])
		{
			$forumMatches = mysql_query("SELECT ipID, iUser, iSubject, iContent, iDeadline FROM ipData WHERE iAccess = 0");

echo '

			    <div class="example">
				    <table class="table hovered">
				        <thead>
				        <tr>
					    <th class="text-left fg-green">Select</th>
				            <th class="text-left">User Name</th>
				            <th class="text-left">Subject</th>
				            <th class="text-left">Details</th>
				            <th class="text-left">Expires On</th>
				        </tr>
				        </thead>
					
					<tbody>
					<form method="post" action="?action=approveIP">
';

				while($forumEntry = mysql_fetch_assoc($forumMatches))
				{
					$icode = $forumEntry['ipID'];
					$iname = $forumEntry['iUser'];
					$isub = $forumEntry['iSubject'];
					$icon = $forumEntry['iContent'];
					$date_raw = $forumEntry['iDeadline'];
					$idate = date("d M Y", strtotime($date_raw));
echo '				        
				        <tr><td><input type="checkbox" name="approve[]" value="'.$icode.'"></td><td>'.$iname.'</td><td class="right">'.$isub.'</td><td class="right">'.$icon.'</td><td class="right">'.$idate.'</td></tr>
';
				}
echo'
				        </tbody>
				    </table>
			<br><input type="submit" class="success" value="Approve Selected IPs">
			</form>
<button class="button danger" id="rejectIPs">Reject All IPs</button>

			     </div>
';
			}
			else
			{
echo' 
				<center><p style="font-size: 15px; color: #FFF410">There are no IPs pending approval.</p></center> 
';
			}

echo '


                            </div>
                        </div>
                    </div>

		 <div class="tile tripleF double-vertical transparent" style="height: 110px">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-amber">Other Options</div>
<a href="editactivities.php"><button class="button success place-left" style="margin: 20px">Update ACTIVITIES Page</button></a>
<a href="editgallery.php"><button class="button success place-left" style="margin: 20px">Update GALLERY Page</button></a>		
<button class="button warning place-left" style="margin: 20px" id="wardenUpdate">Update Warden Details</button>
<button class="button danger place-right" style="margin: 20px" id="masterReset">Master Reset</button>
                            </div>
                        </div>
                    </div>


';
echo"
	<script>
                        $(\"#rejectPosts\").on('click', function(){
                            $.Dialog({
                                overlay: true,
                                shadow: true,
                                flat: true,
                                draggable: true,
                                icon: '<img src=\"images/favicon.png\">',
                                title: 'Flat window',
                                content: '',
                                padding: 15,
                                onShow: function(_dialog){
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=rejectPosts\">' +
                                            '<label>Are you sure about deleting all the pending posts, due to violation of policy? Note that the resident will be notified via Email.</label>' + 
                                            '<br><div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Proceed\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Reject Posts\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>

	<script>
                        $(\"#rejectIPs\").on('click', function(){
                            $.Dialog({
                                overlay: true,
                                shadow: true,
                                flat: true,
                                draggable: true,
                                icon: '<img src=\"images/favicon.png\">',
                                title: 'Flat window',
                                content: '',
                                padding: 15,
                                onShow: function(_dialog){
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=rejectIPs\">' +
                                            '<label>Are you sure about deleting all the pending IPs, due to violation of policy? Note that the resident will be notified via Email.</label>' + 
                                            '<br><div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Proceed\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Reject IPs\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>

	<script>
                        $(\"#wardenUpdate\").on('click', function(){
                            $.Dialog({
                                overlay: true,
                                shadow: true,
                                flat: true,
                                draggable: true,
                                icon: '<img src=\"images/favicon.png\">',
                                title: 'Flat window',
                                content: '',
                                padding: 10,
                                onShow: function(_dialog){
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=wardenUpdate\">' +
                                            '<div class=\"input-control text\"><input placeholder=\"Name\" type=\"text\" name=\"warname\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Phone Number\" type=\"text\" name=\"warphone\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"E-Mail ID\" type=\"text\" name=\"waremail\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Website URL\" type=\"text\" name=\"warwebsite\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Copy URL to Photo from Website\" type=\"text\" name=\"warphoto\" required></div>' +

                                            '<div class=\"input-control textarea\" data-role=\"input-control\"><textarea placeholder=\"Official Department Address (Line separated by Commas)\" name=\"waroffice\" required></textarea></div>' +
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Save\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Update Details of Warden\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>

	<script>
                        $(\"#masterReset\").on('click', function(){
                            $.Dialog({
                                overlay: true,
                                shadow: true,
                                flat: true,
                                draggable: true,
                                icon: '<img src=\"images/favicon.png\">',
                                title: 'Flat window',
                                content: '',
                                padding: 10,
                                onShow: function(_dialog){
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=masterReset\">' +
					    '<label style=\"color: red\">Master Reset will delete all the 1) Manifestos, 2) All the IPs, 3) All the Forum Posts, 4) All GBM Minutes, 5) All Budget Entries and 6) Accounts of Secretaries. Do you want to Continue? Note: It is used to reset the web page every year. Get secret code from Abhijith C S (abhijithcs1993@gmail.com) to proceed.</label>' +
                                            '<div class=\"form-actions\">' +
					    '<br><label>Secret Code:</label>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Get it from Abhijith C S\" type=\"text\" name=\"secret\" required></div>' +

                                            '<br><br><input type=\"submit\" value=\"PROCEED\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"MASTER RESET : Use with Caution!\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>

";
?>
             
                </div>                
            </div>
        </div>
    </div>
    <script src="js/hitua.js"></script>

</body>
</html>