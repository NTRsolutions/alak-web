<?php
session_start();

if(!isset($_SESSION['admin']))
{
	header('Location: login.php');
}

$username = $_SESSION['admin'];

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

    <title>Admin Panel</title>

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


    		if($_GET['action']=='updateInfo') 
		{
		        $secname      	= $_POST['secName'];
		        $secroom 	= $_POST['secRoom'];
		        $secemail 	= $_POST['secEmail'];
		        $secmobile 	= $_POST['secMobile'];
		        $secvision 	= $_POST['secVision'];
			$secroll 	= $_POST['secRoll'];

			mysql_query("UPDATE secretaryDetails SET sRoll = '{$secroll}', sName = '{$secname}', sMobile = '{$secmobile}', sEmail = '{$secemail}', sInfo = '{$secvision}', sRoom = '{$secroom}' WHERE sCode='{$_SESSION['admin']}'");

			header('Location: admin.php');

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

    		if($_GET['action']=='forumReply') 
		{
		        $forumcode     	= $_POST['forumCode'];
		        $forumstatus 	= $_POST['forumStatus'];
		        $forumreply 	= $_POST['forumReply'];

			mysql_query("UPDATE forumInfo SET fStatus = '{$forumstatus}', fReply = '{$forumreply}' WHERE fId='{$forumcode}'");

			$data1 = mysql_fetch_array(mysql_query("SELECT fName, fEmail, fSubject, fDetails FROM forumInfo WHERE fId='{$forumcode}'"));
			$name1 = $data1['fName'];
			$email1 = $data1['fEmail'];
			$briefs = "\nThe ".$title." has replied to your post in Alakananda Hostel - Inmates Forum (http://forum.alakananda.in). Details are below:\nYou posted:\n".$data1['fDetails']."\n\nReply:\n".$forumreply."\n\n-Thank You!\nWeb Administrator";
			$forSub = $title." replied to: ".$data1['fSubject']."";
			mailer($name1, $email1, $forSub , $briefs);
		
			header('Location: admin.php');
    		}


    		if($_GET['action']=='postIP') 
		{
		       	$ipuser	        = $title;
		        $ipsubject      = $_POST['ipSubject'];
		        $ipcontent 	= $_POST['ipContent'];
		        $iptype 	= $_POST['ipType'];
		        $ipdate 	= $_POST['ipDate'];
			mysql_query("INSERT INTO ipData (iUser, iSubject, iContent, iHighlight, iDeadline) VALUES ('{$ipuser}','{$ipsubject}', '{$ipcontent}', '{$iptype}', '{$_POST['ipDate']}')");

			$mailSub = "New IP: ".$ipsubject;
			$mailCon = $ipcontent."\n\n- ".$ipuser;

			mailer('Resident','alakjunta@googlegroups.com', $mailSub , $mailCon);


			header('Location: admin.php');
    		}

    		if($_GET['action']=='addBudget') 
		{

			date_default_timezone_set('Asia/Calcutta');
			$timeStamp = date('d M Y');

		        $bcode      	= $_SESSION['admin'];
		        $bdetails 	= $_POST['detailsAB'];
		        $bamount 	= $_POST['spentAB'];

			mysql_query("INSERT INTO budget (bCode, bDetails, bAmount, bDate) VALUES ('{$bcode}','{$bdetails}', '{$bamount}', '{$timeStamp}')");
			mysql_query("UPDATE secretaryDetails SET sBudgetDate = '{$timeStamp}'WHERE sCode='{$_SESSION['admin']}'");
			header('Location: admin.php');

    		}
		
		if($_GET['action']=='modifyBudget') 
		{

			date_default_timezone_set('Asia/Calcutta');
			$timeStamp = date('d M Y');
			echo $timeStamp;

		        $bref1      	= $_POST['refMB'];
		        $bdetails1 	= $_POST['detMB'];
		        $bamount1	= $_POST['spentMB'];
			
			$row3 = mysql_fetch_array(mysql_query("SELECT bCode, bNo FROM budget WHERE bNo='{$bref1}'"));
			if($_SESSION['admin'] == $row3["bCode"])
			{
			mysql_query("UPDATE budget SET bDetails = '{$bdetails1}', bAmount = '{$bamount1}' WHERE bNo='{$bref1}'");
			}
			
			header('Location: admin.php');

    		}

    		if($_GET['action']=='addGBM') 
		{
		        $gbcode      	= $_SESSION['admin'];
		        $gbdetails 	= $_POST['detAG'];
		        $gbexpense 	= $_POST['expAG'];
		        $gbdead_raw 	= $_POST['deadAG'];
		        $gbstat 	= $_POST['statAG'];

			//Converting to desired format.
			$gbdead = date("d M Y", strtotime($gbdead_raw));

			mysql_query("INSERT INTO gbmMinutes (mCode, mDetails, mExpense, mDeadline, mStatus) VALUES ('{$gbcode}','{$gbdetails}', '{$gbexpense}', '{$gbdead}', '{$gbstat}')");

			header('Location: admin.php');

    		}

    		if($_GET['action']=='editGBM') 
		{
		        $gbcode11      	= $_SESSION['admin'];
		        $gbref11 	= $_POST['refEG'];
		        $gbstat11 	= $_POST['statEG'];

			$row4 = mysql_fetch_array(mysql_query("SELECT mCode FROM gbmMinutes WHERE mId='{$gbref11}'"));
			if($_SESSION['admin'] == $row4["mCode"])
			{
			mysql_query("UPDATE gbmMinutes SET mStatus = '{$gbstat11}' WHERE mId='{$gbref11}'");
			}


			header('Location: admin.php');

    		}

    		if($_GET['action']=='deleteGBM') 
		{
		        $gbcode22      	= $_SESSION['admin'];
		        $gbref22	= $_POST['refEG'];

			$row41 = mysql_fetch_array(mysql_query("SELECT mCode FROM gbmMinutes WHERE mId='{$gbref22}'"));
			if($_SESSION['admin'] == $row41["mCode"])
			{
			mysql_query("DELETE FROM gbmMinutes WHERE mId='{$gbref22}'");
			}

			header('Location: admin.php');

    		}
    		$cropped = 1;

    		if($_GET['action']=='changePhoto')
		{ 
			$allowedExts = array("jpg", "png");
			$temp = explode(".", $_FILES["file"]["name"]);
			$extension = end($temp);

			if ((($_FILES["file"]["type"] == "image/gif")
			|| ($_FILES["file"]["type"] == "image/jpeg")
			|| ($_FILES["file"]["type"] == "image/jpg")
			|| ($_FILES["file"]["type"] == "image/pjpeg")
			|| ($_FILES["file"]["type"] == "image/x-png")
			|| ($_FILES["file"]["type"] == "image/png"))
			&& ($_FILES["file"]["size"] < 200000000)
			&& in_array($extension, $allowedExts)) {
			  if ($_FILES["file"]["error"] > 0) {
			    echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
			  } else {

			move_uploaded_file($_FILES["file"]["tmp_name"], "images/council/" . $username.'.jpg');
			$cropped = 0;

			  }
			} else {
			  echo "<p style=\"color: #ffffff\">Invalid File.</p>";
			}
		}
		
		if($cropped == 0)
		{
		echo 'SAVE';
		header('Location: crop.php');
		}

echo'




                    <div class="tile tripleF double-vertical transparent" style="height: auto">
                        <div class="tile-content">
                            <div class="panel no-border fg-white">
                               
                                <div class="panel-header bg-gray fg-white">Account of '.$title.'</strong></div>
                                <div class="panel-content transparent fg-white">

				    <table class="table">
				        <tbody>
 <h10 class="fg-gray">Last Login '.$lastlogin.'</h10>
<button id="changePhoto" class="button primary place-right" style="margin-right: 10px">Change Photo</button>
<button id="editDetails" class="button primary place-right" style="margin-right: 10px">Edit Details</button>
				        <tr><td style="width: 180px;"><img src="images/council/'.$code.'.jpg" class="place-left margin10 size2 nlm ntm"></td><td>"'.$brief.'"</td></tr>
				        </tbody>
				    </table>

				    <table class="table">
				        <tbody>
				        <tr class="transparent"><td>Name</td><td class="right">'.$name.'</td></tr>
					<tr class="transparent"><td>Room Number</td><td class="right">'.$room.'</td></tr>
				        <tr class="transparent"><td>E-Mail</td><td class="right">'.$email.'</td></tr>
				        <tr class="transparent"><td>Phone</td><td class="right">'.$mobile.'</td></tr>
					<tr class="transparent"><td>Budget Entries</td><td class="right">
						<button id="addBudget" class="button warning place-left" style="margin-right: 10px">New Entry</button>
						<button id="editBudget" class="button warning place-left" style="margin-right: 10px">Modify Entry</button>
						<button id="deleteBudget" class="button place-left" style="margin-right: 10px">Delete</button>
						</td></tr>
					<tr class="transparent"><td>GBM Minutes</td><td class="right">
						<button id="addGBM" class="button warning place-left" style="margin-right: 10px">New Entry</button>
						<button id="editGBM" class="button warning place-left" style="margin-right: 10px">Change Status</button>
						<button id="deleteGBM" class="button warning place-left" style="margin-right: 10px">Delete</button>
						</td></tr>
					<tr class="transparent"><td>News and Events (IPs)</td><td class="right">
						<button id="postIP" class="button warning place-left" style="margin-right: 10px">Post</button>
						</td></tr>
				        </tbody>
				    </table>

                                </div>
				 </div>
                            </div>
                        </div>

';

echo "

	<script>
                        $(\"#changePhoto\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=changePhoto\" enctype=\"multipart/form-data\">' +
                                            '<label>ONLY .jpg File (less than 1 MB)</label>' +
                                            '<div class=\"input-control text\"><input type=\"file\" name=\"file\" id=\"file\"></div>' +
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Submit\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Change Photo\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>

	<script>
                        $(\"#editDetails\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=updateInfo\">' +
                                            '<div class=\"input-control text\"><input placeholder=\"Name to be Displayed\" type=\"text\" name=\"secName\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Room Number\" type=\"text\" name=\"secRoom\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Roll Number\" type=\"text\" name=\"secRoll\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"E-Mail ID\" type=\"text\" name=\"secEmail\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Mobile Number\" type=\"text\" name=\"secMobile\" required></div>' +

                                            '<div class=\"input-control textarea\" data-role=\"input-control\"><textarea placeholder=\"Vision as a Secretary\" name=\"secVision\" required></textarea></div>' +
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Save\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Edit Details\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>

	<script>
                        $(\"#postIP\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=postIP\">' +
                                            '<div class=\"input-control text\"><input placeholder=\"Subject\" type=\"text\" name=\"ipSubject\" required></div>' +
                                            '<div class=\"input-control textarea\" data-role=\"input-control\"><textarea placeholder=\"Details\" name=\"ipContent\" required></textarea></div>' +
					    '<label style=\"color: #000000\">Expires On:</label>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Deadline\" type=\"date\" name=\"ipDate\" required></div>' +
					    '<label style=\"color: #000000\">Type:</label>' +
'<div class=\"input-control select\" data-role=\"input-control\">' + 
'<input type=\"radio\" name=\"ipType\" value=\"0\" required> Normal<br><input type=\"radio\" name=\"ipType\" value=\"1\" required> Highlighted<br>' +					    
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



	<script>
                        $(\"#deleteGBM\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=deleteGBM\">' +
                                            '<div class=\"input-control text\"><input placeholder=\"Reference Code\" type=\"text\" name=\"refEG\" required></div>' +
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Delete\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Modify a GBM Minute\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>

	<script>
                        $(\"#editGBM\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=editGBM\">' +
                                            '<div class=\"input-control text\"><input placeholder=\"Reference Code\" type=\"text\" name=\"refEG\" required></div>' +
					    '<label style=\"color: #000000\">New Status:</label>' +
'<div class=\"input-control select\" data-role=\"input-control\">' + 
'<input type=\"radio\" name=\"statEG\" value=\"Pending Approval by Warden\" required> Pending<br><input type=\"radio\" name=\"statEG\" value=\"Warden to Approve\" required> Warden to Approve<br><input type=\"radio\" name=\"statEG\" value=\"Ongoing\" required> Ongoing<br><input type=\"radio\" name=\"statEG\" value=\"Done\" required> Done<br>' +					    
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Modify\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Modify a GBM Minute\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>




	<script>
                        $(\"#addGBM\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=addGBM\">' +
                                            '<div class=\"input-control textarea\" data-role=\"input-control\"><textarea placeholder=\"Details\" name=\"detAG\" required></textarea></div>' +

                                            '<div class=\"input-control text\"><input placeholder=\"Expected Expense\" type=\"text\" name=\"expAG\" required></div>' +
					    '<label style=\"color: #000000\">Expected Deadline:</label>' +
                                            '<div class=\"input-control text\"><input placeholder=\"Deadline\" type=\"date\" name=\"deadAG\" required></div>' +
					    '<label style=\"color: #000000\">Current Status:</label>' +
'<div class=\"input-control select\" data-role=\"input-control\">' + 
'<input type=\"radio\" name=\"statAG\" value=\"Pending Approval by Warden\" required> Pending<br><input type=\"radio\" name=\"statAG\" value=\"Warden to Approve\" required> Warden to Approve<br><input type=\"radio\" name=\"statAG\" value=\"Ongoing\" required> Ongoing<br><input type=\"radio\" name=\"statAG\" value=\"Done\" required> Done' +					    
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Add\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Add a GBM Minute\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>


	<script>
                        $(\"#addBudget\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=addBudget\">' +
                                            '<div class=\"input-control text\"><input placeholder=\"Amount Spent\" type=\"text\" name=\"spentAB\" required></div>' +

                                            '<div class=\"input-control textarea\" data-role=\"input-control\"><textarea placeholder=\"Details\" name=\"detailsAB\" required></textarea></div>' +
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Add\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Add a new Budget Entry\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>

	<script>
                        $(\"#editBudget\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=modifyBudget\">' +
                                            '<div class=\"input-control text\"><input placeholder=\"Ref. No. (See the Table)\" type=\"text\" name=\"refMB\" required></div>' +
                                            '<div class=\"input-control text\"><input placeholder=\"New Amount\" type=\"text\" name=\"spentMB\" required></div>' +
                                            '<div class=\"input-control textarea\" data-role=\"input-control\"><textarea placeholder=\"New Details\" name=\"detMB\" required></textarea></div>' +
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Confirm\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Modify a Budget Entry\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>

	<script>
                        $(\"#deleteBudget\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=updateInfo\">' +
                                            '<center><label>Deleting is Disabled</label></center>' + 
                                            '<div class=\"form-actions\">' +
                                            '<center><button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">BACK</button></center>'+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Delete a Budget Entry\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>







";

echo '


		 <div class="tile tripleF double-vertical transparent" style="height: auto">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">Forum Questions to You</div>

';

		$forumRow = mysql_fetch_array(mysql_query("SELECT fId FROM forumInfo WHERE fSec='{$_SESSION['admin']}'"));

		if($forumRow["fId"])
		{
			$forumMatches = mysql_query("SELECT fId, fName, fDetails, fStatus, fReply FROM forumInfo WHERE fSec='{$_SESSION['admin']}'");

echo '

			    <div class="example">
				    <table class="table hovered">
				        <thead>
				        <tr>
				            <th class="text-left">Ref. Code</th>
				            <th class="text-left">Name</th>
				            <th class="text-left">Room</th>
				            <th class="text-left">Date</th>
				            <th class="text-left">Type</th>
				            <th class="text-left">Subject</th>
				            <th class="text-left">Details</th>
				            <th class="text-left">Status</th>
				            <th class="text-left">Last Reply</th>
				        </tr>
				        </thead>
					
					<tbody>
';

				while($forumEntry = mysql_fetch_assoc($forumMatches))
				{
					$fdetails = $forumEntry['fDetails'];
					$fname = $forumEntry['fName'];
					$fstatus = $forumEntry['fStatus'];	
					$freply = $forumEntry['fReply'];
					$fcode = $forumEntry['fId']; 
echo '				        
				        <tr><td>'.$fcode.'</td><td>'.$fname.'</td><td class="right">240</td><td class="right">12 March</td><td class="right">Complaint</td><td class="right">Waching Machine in B2 Wing</td><td class="right">'.$fdetails.'</td><td class="right">'.$fstatus.'</td><td class="right">'.$freply.'</td></tr>
';
				}
echo'
				        </tbody>
				    </table>
<button class="button warning place-right" id="forumReply">Reply to a Forum Post</button>
			     </div>
';
			}
			else
			{
echo' 
				<center><p style="font-size: 15px; color: #FFF410">There are no forum questions to '.$title.'.</p></center> 
';
			}

echo"
                            </div>
                        </div>
                    </div>

	<script>
                        $(\"#forumReply\").on('click', function(){
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
                                    var content = '<form class=\"user-input\" method=\"post\" action=\"?action=forumReply\">' +
                                            '<label>Reference Code</label>' +
                                            '<div class=\"input-control text\"><input type=\"text\" name=\"forumCode\"></div>' +
					    '<label>Status</label>' +
					    '<div class=\"input-control select\" data-role=\"input-control\"><select name=\"forumStatus\" required><option value=\"1\">Looked into the Issue</option><option value=\"2\">Issue has been Solved</option></select></div>' +
                                            '<label>Details</label>'+
                                            '<div class=\"input-control textarea\" data-role=\"input-control\"><textarea name=\"forumReply\" required></textarea></div>' + 
                                            '<div class=\"form-actions\">' +
                                            '<input type=\"submit\" value=\"Submit\">&nbsp;'+
                                            '<button class=\"button\" type=\"button\" onclick=\"$.Dialog.close()\">Cancel</button> '+
                                            '</div>'+
                                            '</form>';

                                    $.Dialog.title(\"Reply\");
                                    $.Dialog.content(content);
                                }
                            });
                        });
	</script>


";

		$row = mysql_fetch_array(mysql_query("SELECT mCode FROM gbmMinutes WHERE mCode='{$_SESSION['admin']}'"));
		$count = 0;

echo '	<br><br>
		<center><h1 style="color: #ffffff; font-size: 30px">GBM Minutes</h1></center>  
';
		if($row["mCode"])
		{
			$query = mysql_query("SELECT mId, mDetails, mExpense, mDeadline, mStatus FROM gbmMinutes WHERE mCode='{$_SESSION['admin']}'");
echo '
            <div class="example">
                    <table class="table hovered">
                        <thead>
                        <tr>
                            <th class="text-left">Ref. Code</th>
                            <th class="text-left">Details</th>
                            <th class="text-left">Expense</th>
                            <th class="text-left">Deadline</th>
                            <th class="text-left">Status</th>
                        </tr>
                        </thead>

                        <tbody>
';
			while($entry = mysql_fetch_assoc($query))
			{
				$id = $entry['mId'];
				$details = $entry['mDetails'];
				$expense = $entry['mExpense'];
				$deadline = $entry['mDeadline'];
				$status = $entry['mStatus'];		
echo'
                        <tr><td>'.$id.'</td><td class="right">'.$details.'</td><td class="right">'.$expense.'</td><td class="right">'.$deadline.'</td><td class="right">'.$status.'</td></tr>
';
			}
echo'
			</tbody>

                        <tfoot></tfoot>
                    </table>
	     </div>
';
		}
		else
		{
echo'
		<center><p style="font-size: 15px; color: #FFF410">GBM Minutes are not updated by the '.$title.'.</p></center>
';
		}


echo'
<br><br>
		<center><h1 style="color: #ffffff;  font-size: 30px">Budget Details</h1></center>
';
		$row2 = mysql_fetch_array(mysql_query("SELECT bCode FROM budget WHERE bCode='{$_SESSION['admin']}'"));
		$count2 = 0;
		$totalSpent = 0;

		if($row2["bCode"])
		{
			$query2 = mysql_query("SELECT bNo, bDetails, bAmount, bDate FROM budget WHERE bCode='{$_SESSION['admin']}' ORDER BY bNo");
echo '
            <div class="example">
                    <table class="table hovered">
                        <thead>
                        <tr>
                            <th class="text-left">Ref. No.</th>
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
				$date2 = $entry2['bDate'];
				$ref = $entry2['bNo']; 
				$totalSpent = $totalSpent + $amount2;		
echo'

                        <tr><td>'.$ref.'</td><td class="right">'.$date2.'</td><td class="right">'.$details2.'</td><td class="right">'.$amount2.'</td></tr>
';
			}
echo'
                        <tr class="info"><td>Total</td><td class="right"></td><td class="right"></td><td class="right">Rs. '.$totalSpent.'</td></tr>
                        </tbody>
                        <tfoot></tfoot>
                    </table>
	     </div>
';		
		}
		else
		{
echo'
		<center><p style="font-size: 15px; color: #FFF410">Budget Details are not updated by the '.$title.'.</p></center>
';
		}

?>	

<br><br>
                    
                </div>                
            </div>
        </div>
    </div>
    <script src="js/hitua.js"></script>

</body>
</html>