<?php
session_start();

if(!isset($_SESSION['user']))
{
	header('Location: login.php');
}
else
{
	$userroll = $_SESSION['user'];
}

define('INCLUDE_CHECK', true);
require 'connect.php';

?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Inmates Forum</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/styles.css" rel="stylesheet">
	</head>
	<body>

<?php

//Add the Users Details
require 'users.php';

echo'
<div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
                      
          
            <!-- sidebar -->
            <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">
                <ul class="nav hidden-xs" id="lg-menu">
';
		//Add the List
		require 'list.php';
echo'
                </ul>
                <ul class="list-unstyled hidden-xs" id="sidebar-footer">
                    <li>
		      <a href="../index.php"><img src="images/logo.png" style="padding-right: 5px" width="100%"></a>
                    </li>
                </ul>
             
            </div>
            <!-- /sidebar -->


            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11 pull-right" id="main">
                
                <!-- top nav -->
              	<div class="navbar navbar-blue navbar-static-top">  

                    <ul class="nav navbar-nav">
                      <li>
                        <a href="index.php">'; if($userrole != "USER"){echo '<img src="../images/council/'.$usercode.'.jpg" title="'.$username.'" width="28px" height="28px" class="img-square pull-left">';} else{echo'<img src="https://photos.iitm.ac.in/byroll.php?roll='.$userroll.'" title="'.$username.'" width="28px" height="28px" class="img-square pull-left">';}echo'<strong>'.$username.'</strong></a>
                      </li>
                    </ul>

                    <ul class="nav navbar-nav pull-right">
                    ';if($userrole != "SA"){echo'
                      <li>
                        <a href="#postModal" role="button" data-toggle="modal"><span class="badge">New Post</span></a>
                      </li>
                      ';}

if($role != "USER") //Option to create event & Upload Report if user is Secretary
{
echo'
                      <li>
                        <a href="#createEvent" role="button" data-toggle="modal"><span class="badge">Create Event</span></a>
                      </li>
                      <li>
                        <a href="#uploadReport" role="button" data-toggle="modal"><span class="badge">Upload File</span></a>
                      </li>
';
}
if($role == "LIT") //Lit-Soc Table
{
echo'
                      <li>
                        <a href="#litTable" role="button" data-toggle="modal"><span class="badge">Lit-Soc Points</span></a>
                      </li>
';
}
if($role == "TEC") //Tech-Soc Table
{
echo'
                      <li>
                        <a href="#tecTable" role="button" data-toggle="modal"><span class="badge">Tech-Soc Points</span></a>
                      </li>
';
}
if($role == "SPO") //Schroeter Table
{
echo'
                      <li>
                        <a href="#schroTable" role="button" data-toggle="modal"><span class="badge">Schroeter Points</span></a>
                      </li>
';
}

echo'
                      <li>
                        <a href="archives.php"><strong><credits>Archives</credits></strong></a>
                      </li>
                      <li>
                        <a href="index.php">Home</a>
                      </li>

                      <li>
                        <a href="logout.php">Logout</a>
                      </li>

                    </ul>
                  	</nav>
                </div>

                <!-- /top nav -->
              
                <div class="padding">
                    <div class="full col-sm-9">
                      
                        <!-- content -->                      
                      	<div class="row">
                          
                         <!-- main col left --> 
                         <div class="col-sm-5">

                              <div class="panel panel-default" style="padding: 10px;">
                                <div class="panel-thumbnail">'; if($userrole != "USER"){echo'<img src="../images/council/'.$usercode.'.jpg" class="img-responsive" style="padding: 15px;">';} else{echo'<img src="https://photos.iitm.ac.in/byroll.php?roll='.$userroll.'" class="img-responsive" style="padding: 15px;">';} echo'</div>
                                <div class="panel-body">
                                  <p class="lead">'.$username.'</p>
                                  <p><newchat>'.$rolename.'</newchat></p>
                                  <p>Room No. '.$userroom.'</p>
                                  ';
                                  if($userrole != "USER"){
                                  echo'
                                  <a href="#newPhoto" role="button" data-toggle="modal"><credits><underline>Change Photo</underline></credits></a> | <a href="#updateDetails" role="button" data-toggle="modal"><credits><underline>Update Details</underline></credits></a> |'; } echo'
                        	  <a href="#changePassword" role="button" data-toggle="modal"><credits><underline>Reset Password</underline></credits></a>
                        	                 
               

                                </div>
                              </div>
';

		$msg = mysql_query("SELECT mFrom, mTo, mTime, mContent FROM alak_messages WHERE mTo = '{$userroll}' AND mHead = '1'  ORDER BY mId DESC");
		$noMsgFlag = 0;
echo '
                           <div class="panel panel-default">
                                 <div class="panel-heading"><h4>Messages pending a reply</h4></div>
                                  <div class="panel-body">
';

			while($message = mysql_fetch_assoc($msg))
			{

			$chatfrom = $message['mFrom'];
			$chatdate = $message['mTime'];
			$chatcontent = $message['mContent'];
			$chatnamerow = mysql_fetch_array(mysql_query("SELECT mName FROM alak_people WHERE mRoll = '{$chatfrom}'"));
			$chatname = $chatnamerow['mName'];
			$chatshort = substr($chatcontent,0,30);


				$time = date("H:i", strtotime($chatdate));
				$date = date("d M Y", strtotime($chatdate));
				$printDate = date("d M", strtotime($chatdate));

				date_default_timezone_set('Asia/Calcutta');
				$timeStamp = date('d M Y');
				if($timeStamp == $date)
				{
					$showTime = 1;
				}
				else
				{
					$showTime = 0;
				}


			echo'
                           <a href="messages.php?friend='.$chatfrom.'">
				<img src="https://photos.iitm.ac.in/byroll.php?roll='.$chatfrom.'" title="'.$chatname.'" width="28px" height="28px" class="img-circle pull-left">
				<div class="pull-left"><strong>'.$chatname.'</strong></div>
				<div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div><br>
				<p><newchat>'.$chatshort.' ...</newchat></p>
			   </a><hr>       
			';             
			$noMsgFlag = 1;                
			}

			if($noMsgFlag == 0)
			{
				echo 'No Messages.';
			}
                                    
echo '
                                      </div>
                               </div>

';	


if($role == "vol") //Show Credit Table if Volunteer
{
		$crdt = mysql_query("SELECT cReason, cNumber, cDate FROM alak_credits WHERE cRoll = '{$userroll}' ORDER BY cDate");

echo'
                    	      <div class="panel panel-default">
                                 <div class="panel-heading"><h4>Credit Table</h4></div>
                                  <div class="panel-body">
                                    <ul class="list-group">
';
			$totCredits = 0;
			$cflag = 0;
			while($credits = mysql_fetch_assoc($crdt))
			{
				$count = $credits['cNumber'];
				$reason = $credits['cReason'];
				$date = $credits['cDate'];
				echo'
                                    <li class="list-group-item"><strong>'.$count.' Credits - </strong> '.$reason.'<br><credits>Awarded on '.$date.'</credits></li>
				';
				$totCredits = $totCredits + $count;
				$cflag = 1;
			}

			if($cflag == 1)
			{
			echo'
				<li class="list-group-item"><yes>Total Earned Credits = '.$totCredits.'</yes></li>
			';
			}
			else
			{
			echo'
				<li class="list-group-item"><strong>No credits awarded yet.</strong></li>
			';
			}
echo'
                                    </ul>
                                  </div>
                               </div>
';
}

if($userrole != "USER"){
	$uploads = mysql_query("SELECT rId, rDate, rTitle FROM alak_reports WHERE rCode='{$usercode}' ORDER BY rDate");
	
	echo'
                              <div class="panel panel-default">
                                <div class="panel-heading"><h4>Uploads</h4></div>
                                  <div class="panel-body">
                                    <div class="list-group">
	';
	$uploadflag = 0;
	while($upload = mysql_fetch_assoc($uploads))
	{
		$title = $upload['rTitle'];
		$date = $upload['rDate'];
		$uid = $upload['rId'];

		echo'
                    <form method="post" action="deletefile.php"><a href="reports/'.$usercode.'/'.$title.'_'.$date.'.pdf" title="Uploaded : '.$date.'" class="list-group-item"><button class="pull-left btn  btn-danger" style="border:none; padding:0px 2px 0px 2px; margin-right: 5px;" type="submit" title="Remove">X</button>'.$title.'</a><input type="hidden" name="uid" class="form-control" value="'.$uid.'"><input type="hidden" name="code" class="form-control" value="'.$usercode.'"></form>
		';
		$uploadflag = 1;
	}
	if($uploadflag == 0)
	{
		echo ' <strong><div class="list-group-item">No Uploads to Display!</div></strong>';
	}
	echo'
                                    </div>
                                  </div>
                              </div>                           

        ';
if($golden == 3) //Change this to 1 later. Add provision for 'Site Admin to revoke any active IPs'
{
        echo'
                          <div class="panel panel-default">
                                <div class="panel-heading" style="background-color: #30421D"><h4>Active IPs on Website</h4></div>
                                  <div class="panel-body">
                                    <div class="list-group">
                                    <a target="new" style="background-color: #EEFFDA" href="https://www.youtube.com/channel/UCwMqpd8s9b7zcf9Bq3gmP7A" class="list-group-item">Show  IP - 1</a> 
                                    <a target="new" style="background-color: #ffffff" href="https://computerlearningkit.wordpress.com/" class="list-group-item">Show  IP - 2</a> 
                                    <a target="new" style="background-color: #EEFFDA" href="https://plus.google.com/113231787827621340535" class="list-group-item">Show  IP - 3</a> 
                                                               
                                    </div>
                                  </div>
                              </div>                           
        ';
}
        }
        echo'                          
                          </div>                                    
	';

?>
                          
                          <!-- main col right -->



                          <div class="col-sm-7">


<?php          

if($userrole != "USER") //Show Budget Table if Secretary
{
		// $crdt = mysql_query("SELECT cReason, cNumber, cDate FROM alak_credits WHERE cRoll = '{$profile}' ORDER BY cDate");
		$crdt = mysql_query("SELECT bDetails, bAmount, bDate FROM alak_budget WHERE bCode = '{$userroll}' ORDER BY bDate");

echo'
                    	      <div class="panel panel-default">
                                 <div class="panel-heading"><h4>Transactions Done</h4></div>
                                  <div class="panel-body">
                                    <ul class="list-group">
';
			$totCredits = 0;
			$cflag = 0;
			while($credits = mysql_fetch_assoc($crdt))
			{
				$count = $credits['bAmount'];
				$reason = $credits['bDetails'];
				$date = $credits['bDate'];
				echo'
                                    <li class="list-group-item"><strong>Rs. '.$count.'</strong> : '.$reason.'<br><p style="font-size: 10px;">Posted on '.$date.'<p></li>
				';
				$totCredits = $totCredits + $count;
				$cflag = 1;
			}

			if($cflag == 1)
			{
			echo'
				<li class="list-group-item"><yes>Total Amount Spent = Rs. '.$totCredits.'</yes></li>
			';
			}
			else
			{
			echo'
				<li class="list-group-item"><strong>There are no  recorded transactions!</strong></li>
			';
			}
echo'
                                    </ul>
		                  <a href="#newBudget" role="button" data-toggle="modal"><button class="btn  btn-default">New Budget Entry</button></a>
                                  </div>
                               </div>
';
}


if(1) //Show Events Scheduled if Secretary or User
{

		$getTask = mysql_query("SELECT tId, tDate, tTime, tVenue, tContent, tPost FROM alak_tasks WHERE tArchive = '0' ORDER BY tDate");

		echo'
                    	      <div class="panel panel-default">
                                 <div class="panel-heading"><h4>Upcoming Events</h4></div>
                                  <div class="panel-body">

					<ul class="list-group">
		';
		$eventCount = 0;
		while($getTasks = mysql_fetch_assoc($getTask))
		{
			$eventCount++;

			$temp_content = $getTasks['tContent'];
			$temp_time = $getTasks['tTime'];
			$temp_venue = $getTasks['tVenue'];
			$temp_date = $getTasks['tDate'];
			$task_uid = $getTasks['tId'];			
			$task_user = $getTasks['tPost'];

			echo '<li class="list-group-item">'; if($golden == 1 || $userrole != "USER") {echo '<form method="post" action="archiveevent.php"><button class="pull-right btn  btn-default" title="Move to Archives" type="submit">X</button>';} echo' <newchat>'.$temp_content.'</newchat><br>Date : <strong>'.$temp_date.'</strong> | Time : <strong>'.$temp_time.'</strong> | Venue : <strong>'.$temp_venue.'</strong><br><p style="font-size: 10px">Posted by '.$task_user.'</p>
				<input type="hidden" name="hid_uid" class="form-control" value="'.$task_uid.'">
				</form>
				
			';
			echo'</li><br>';
		}
		if($eventCount == 0)
		{
			echo'
				<center><newchat>There are No Events to Display.</center></newchat>
			';
		}

			echo'
					</ul>
                                  </div>
                               </div>
			';
}

$posts = mysql_query("SELECT pTag, pDisplay, pId, pRoll, pName, pSubject, pContent, pDate, pReplyFlag FROM alak_posts WHERE pReplyFlag = '0' AND pArchive= '0' ORDER BY pId DESC");

			$postCount = 0;

			while($post = mysql_fetch_assoc($posts))
			{
				$postCount++;

				$displayCheck = $post['pDisplay'];
	
				$postedRoll = $post['pRoll'];
				$postedName = $post['pName'];
				$postedSubject = $post['pSubject'];
				$postedContent = $post['pContent'];
				$postedDate = $post['pDate'];
				$uid = $post['pId'];

				$taggedsec = $post['pTag'];
				$tag_flag = 0;
				if($taggedsec != "NIL")
				{
					$info = mysql_fetch_array(mysql_query("SELECT sPost FROM alak_secretaryDetails WHERE sCode= '{$taggedsec}'"));
					$taggedname = $info['sPost'];
					$tag_flag = 1;
				}

				$time = date("H:i", strtotime($postedDate));
				$date = date("d M Y", strtotime($postedDate));
				$printDate = date("d M", strtotime($postedDate));

				date_default_timezone_set('Asia/Calcutta');
				$timeStamp = date('d M Y');
				if($timeStamp == $date)
				{
					$showTime = 1;
				}
				else
				{
					$showTime = 0;
				}


			  echo '                            
                               <div class="panel panel-default">
                                 <div class="panel-heading" style = "background:#444444;"><img src="https://photos.iitm.ac.in/byroll.php?roll='.$postedRoll.'" title="'.$postedName.'" width="28px" height="28px" class="img-circle pull-left">
				';
			if($postedRoll == $userroll || $golden == "1")
			{
			echo'
				<form method="post" action="archive.php">
				<button class="pull-right btn  btn-default" type="submit" title="Move to Archives">X</button>
				<input type="hidden" name="hid_sub" class="form-control" value="'.$postedSubject.'">
				</form>
			';
			}
			$likecheck = mysql_fetch_array(mysql_query("SELECT pRoll FROM alak_likes WHERE pId = '{$uid}' and pRoll = '{$userroll}'"));
			if($likecheck['pRoll'] == NULL)
			{
				$likeFlag = 0;
			}
			else
			{
				$likeFlag = 1;
			}

			if($likeFlag == 0)
			{
			echo'
				<form method="post" action="likepost.php">
				';if($userrole != "SA"){echo'<button class="pull-right btn  btn-red" style="margin-right:10px" type="submit" title="Acknowledge">Acknowledge</button>';}echo'
				<input type="hidden" name="likeid" class="form-control" value="'.$uid.'">
				<input type="hidden" name="hid_roll" class="form-control" value="'.$userroll.'">
				<input type="hidden" name="hid_name" class="form-control" value="'.$username.'">
				</form>
			';
			}
			else
			{
			echo'
				<form method="post" action="likepost.php">
				<button class="pull-right btn  btn-green" style="margin-right:10px" type="submit" title="Click to Deny">Acknowledged</button>
				<input type="hidden" name="unlikeid" class="form-control" value="'.$uid.'">
				<input type="hidden" name="hid_roll" class="form-control" value="'.$userroll.'">
				<input type="hidden" name="hid_name" class="form-control" value="'.$username.'">
				</form>
			';
			}

			
			echo'
				<h4>'.$postedSubject.'</h4></div>
                                  <div class="panel-body"><div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div>
                                     <strong>'.$postedContent.'</strong><br><br>';

				//Acknowledges
				if($likeFlag == 1)
				{
					$likes = mysql_query("SELECT pName FROM alak_likes WHERE pId = '{$uid}' AND pRoll != '{$userroll}'");
					$break_count = 0;
					$namelist = NULL;
					$nameprint = NULL;
					while($like = mysql_fetch_assoc($likes))
					{
						$name = $like['pName'];

						if($break_count<=5)
						{
							if($nameprint == NULL)
							{
								$nameprint = $name;
							}
							else
							{
								$nameprint = $nameprint.', '.$name;
							}
						}
						else
						{
							if($namelist == NULL)
							{
								$namelist = $name;
							}
							else
							{
								$namelist = $namelist.', '.$name;
							}
						}

						$break_count++;
					}
					if($break_count == 0)
					{ echo 'Only <newchat>You</newchat> have acknowledged it.'; }
					elseif($break_count <= 6)
					{ echo '<newchat>You, '.$nameprint.'</newchat> acknowledged it.'; }
					elseif($break_count >= 7)
					{ $count = $break_count - 6; echo '<newchat>You, '.$nameprint.' and <underline title="'.$namelist.'">'.$count.' others</underline></newchat> acknowledged it.'; }
				}
				elseif($likeFlag == 0)
				{
					$likes = mysql_query("SELECT pName FROM alak_likes WHERE pId = '{$uid}' AND pRoll != '{$userroll}'");
					$break_count = 0;
					$namelist = NULL;
					$nameprint = NULL;
					while($like = mysql_fetch_assoc($likes))
					{
						$name = $like['pName'];

						if($break_count<=5)
						{
							if($nameprint == NULL)
							{
								$nameprint = $name;
							}
							else
							{
								$nameprint = $nameprint.', '.$name;
							}
						}
						else
						{
							if($namelist == NULL)
							{
								$namelist = $name;
							}
							else
							{
								$namelist = $namelist.', '.$name;
							}
						}


						$break_count++;
					}
					if($break_count == 0)
					{ echo '<no>No one</no> acknowledged it.'; }
					elseif($break_count <= 6)
					{ echo '<newchat>'.$nameprint.'</newchat> acknowledged it.'; }
					elseif($break_count >= 7)
					{ $count = $break_count - 6; echo '<newchat>'.$nameprint.' and <underline title="'.$namelist.'">'.$count.' others</underline></newchat> acknowledged it.'; }
				}

				if($displayCheck == 1 && $postedRoll == $userroll){echo'<br><star>*This post is public and displayed in Alakananda.in Home Page.</star>';}if($tag_flag == 1){echo'<br><yes>'.$taggedname.'</yes> is tagged in this post.';}echo' <hr> ';

			//Replies to a post
				$replies = mysql_query("SELECT pId, pRoll, pName, pSubject, pContent, pDate, pReplyFlag FROM alak_posts WHERE pReplyFlag = '1' AND pSubject ='{$postedSubject}' AND pArchive = '0' ORDER BY pId");

//****ADD SCROLL				echo' <div class="scrollbar1" id="style-11"> ';
				//Form APPLE begins here.
				echo '                                     
					<form method="post" action="comment.php">
				';
				while($reply = mysql_fetch_assoc($replies))
				{
				$replyRoll = $reply['pRoll'];
				$replyName = $reply['pName'];
				$replySubject = $reply['pSubject'];
				$replyContent = $reply['pContent'];
				$replyDate = $reply['pDate'];
				$selectID = $reply['pId'];

				$time = date("H:i", strtotime($replyDate));
				$date = date("d M Y", strtotime($replyDate));
				$printDate = date("d M", strtotime($replyDate));

				date_default_timezone_set('Asia/Calcutta');
				$timeStamp = date('d M Y');
				if($timeStamp == $date)
				{
					$showTime = 1;
				}
				else
				{
					$showTime = 0;
				}

				  echo'
                                    <p><img src="https://photos.iitm.ac.in/byroll.php?roll='.$replyRoll.'" title="'.$replyName.'" width="28px" height="28px" class="img-square pull-left"><div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div>'; if($userroll == $replyRoll || $userroll == $postedRoll) echo'<input type="checkbox" name="delete_comments[]" value="'.$selectID.'">'; echo' <strong>'.$replyName.' :</strong> '.$replyContent.'</p>                                    
                                    <hr>
				  ';
				}

//				echo ' </div><br> ';

			
			//Controls - Form APPLE
			echo'
                                    <div class="input-group">
                                      <div class="input-group-btn">
   				      ';if($userrole != "SA"){echo'<button type="submit" name="addbutton" value ="add" class="btn btn-default">Add Comment</button>
		                      </div>
		                      <input type="text" name="repCon" class="form-control" placeholder="Enter the comment here...">
                                      <div class="input-group-btn">
                                      <button type="submit" name="deletebutton" class="btn btn-default" value ="delete" title="Delete Selected Comments">X</button>';}echo'
		                      </div>
				      <input type="hidden" name="repSub" class="form-control" value="'.$postedSubject.'">
				      <input type="hidden" name="hid_roll" class="form-control" value="'.$userroll.'">
				      <input type="hidden" name="hid_name" class="form-control" value="'.$username.'">
				      <input type="hidden" name="hid_dir" class="form-control" value="redirect">
				      <input type="hidden" name="secret" class="form-control" value="passmein">
		                    </div>
                                   </form>
                                    
                                  </div>
                               </div>

			  ';
			} //While

			if($postCount == 0)
			{
				echo'
		                       <div class="panel panel-default">
		                          <div class="panel-body">
						<br><center><newchat>Oops! There are no posts to display.</newchat></center><br>
		                          </div>
		                       </div>
				';
			}


echo'

                          </div>
                       </div><!--/row-->
                      
                        <div class="row" id="footer">    
                          <div class="col-sm-6">                          
                          </div>
                          <div class="col-sm-6">
                            <p>
                            <a href="https://www.facebook.com/abhijithcs1993" target="new" class="pull-right">© Abhijith C S</a>
                            </p>  
                          </div>
                        </div>
                      
                      

                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->
          
        </div>
    </div>
</div>


<!--post modal-->
<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Add a new Post
      </div>
      <div class="modal-body">
          <form class="form center-block" method="post" action="newpost.php">

';
if($userrole != "USER"){
echo'
                   <ul class="list-group">
                   <li class="list-group-item"><input name="tag" value="yes" type="checkbox"><newchat>  Make it visible in Website</newchat></li>
                   </ul>
';}
echo'
	      <label for="file"><newchat>Tag a Secretary</newchat></label>
		<select name="tag_sec" class="form-control input-lg">
		  <option name="mod" value="NIL">Do not any anyone.</option>
		  <option name="mod" value="GEN">General Secretary</option>
		  <option name="mod" value="HEL">Health and Hygiene Secretary</option>
		  <option name="mod" value="SPO">Sports Secretary</option>
		  <option name="mod" value="LIT">Literary Secretary</option>
		  <option name="mod" value="SOC">Social Affairs Secretary</option>
		  <option name="mod" value="ALU">Alumni Affairs Secretary</option>
		  <option name="mod" value="TEC">Technical Affairs Secretary</option>
		</select>
	    <hr>
            <div class="form-group">
              <input class="form-control input-lg" name="post_sub" autofocus="" placeholder="Subject" required></input><br>
              <input class="form-control input-lg" type="hidden" name="post_name" value="'.$username.'" autofocus=""></input><br>
              <input class="form-control input-lg" type="hidden" name="post_roll" value="'.$userroll.'" autofocus=""></input><br>
              <textarea class="form-control input-lg" name="post_con" autofocus="" placeholder="What do you want to share/ask?"></textarea>
              <input class="form-control input-lg" name="reply_email" autofocus="" value="Enter E-Mail if you want to get notified. (Optional)"></input><br>
            </div>

      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Post</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>

<!--create event-->
<div id="createEvent" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Create a new Event
      </div>
      <div class="modal-body">
	<form class="form" method="post" action="createevent.php">
';
if($userrole != "USER"){
echo'

                   <ul class="list-group">
                   <li class="list-group-item"><input name="tag" value="yes" type="checkbox"><newchat>  Make it visible in Website</newchat></li>
                    </ul>
';}
echo'	   <div class="form-group">
	      <input name="date" class="form-control input-lg" autofocus="" placeholder="Date" type="date"></input><br>
	      <input name="time" class="form-control input-lg" autofocus="" placeholder="Time" type="time"></input><br>
	      <input name="venue" class="form-control input-lg" autofocus="" placeholder="Venue"></input><br>
	      <input name="secret" type="hidden" class="form-control input-lg" autofocus="" value="passmein"></input><br>
	      <input name="postedby" type="hidden" class="form-control input-lg" autofocus="" value="'.$userrole.'"></input><br>
	      <textarea name="content" class="form-control input-lg" autofocus="" placeholder="Content"></textarea>
	    </div>
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Create</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>

<!--new photo-->
<div id="newPhoto" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Change Profile Picture
      </div>
      <div class="modal-body">
         <form action="temp_upload_file.php" method="post" enctype="multipart/form-data">
	    <div class="form-group">
					<label for="file">Upload Only Picture Files. Size less than 1MB.</label>
					<input type="file" name="file" id="file"><br>
					<input type="hidden" name="code" value="'.$usercode.'">
	    </div>
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Change</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>

<!--update schroeter points-->
<div id="schroTable" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Update Schroeter Table
      </div>
      <div class="modal-body">
	<form class="form" method="post" action="updatepoints.php">
	    <div class="form-group">
';
$points = mysql_fetch_array(mysql_query("SELECT h1, h2, h3, p1, p2, p3, posA, pA, date FROM alak_pointsTable WHERE type = '1'"));
$h1 = $points['h1'];
$h2 = $points['h2'];
$h3 = $points['h3'];
$p1 = $points['p1'];
$p2 = $points['p2'];
$p3 = $points['p3'];
$posA = $points['posA'];
$pA = $points['pA'];
$date = $points['date'];

echo'
	      <label>First Hostel</label>
	      <input name="h1" class="form-control input-lg" value="'.$h1.'" type="text"></input><br>
	      <label>Points of First Hostel</label>
	      <input name="p1" class="form-control input-lg" value="'.$p1.'" type="text"></input><br>
	      <label>Second Hostel</label>
	      <input name="h2" class="form-control input-lg" value="'.$h2.'" type="text"></input><br>
	      <label>Points of Second Hostel</label>
	      <input name="p2" class="form-control input-lg" value="'.$p2.'" type="text"></input><br>
	      <label>Third Hostel</label>
	      <input name="h3" class="form-control input-lg" value="'.$h3.'" type="text"></input><br>
	      <label>Points of Third Hostel</label>
	      <input name="p3" class="form-control input-lg" value="'.$p3.'" type="text"></input><br>
	      <label>POSITION of Alakananda Hostel</label>
	      <input name="posA" class="form-control input-lg" value="'.$posA.'" type="text"></input><br>
	      <label>Points of Alakananda Hostel</label>
	      <input name="pA" class="form-control input-lg" value="'.$pA.'" type="text"></input><br>
';
echo'
	      <input name="code" class="form-control input-lg" value="'.$usercode.'" type="hidden"></input>
	    </div>
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Update</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>

<!--update tech-soc points-->
<div id="tecTable" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Update Tech-Soc Table
      </div>
      <div class="modal-body">
	<form class="form" method="post" action="updatepoints.php">
	    <div class="form-group">
';
$points = mysql_fetch_array(mysql_query("SELECT h1, h2, h3, p1, p2, p3, posA, pA, date FROM alak_pointsTable WHERE type = '2'"));
$h1 = $points['h1'];
$h2 = $points['h2'];
$h3 = $points['h3'];
$p1 = $points['p1'];
$p2 = $points['p2'];
$p3 = $points['p3'];
$posA = $points['posA'];
$pA = $points['pA'];
$date = $points['date'];

echo'
	      <label>First Hostel</label>
	      <input name="h1" class="form-control input-lg" value="'.$h1.'" type="text"></input><br>
	      <label>Points of First Hostel</label>
	      <input name="p1" class="form-control input-lg" value="'.$p1.'" type="text"></input><br>
	      <label>Second Hostel</label>
	      <input name="h2" class="form-control input-lg" value="'.$h2.'" type="text"></input><br>
	      <label>Points of Second Hostel</label>
	      <input name="p2" class="form-control input-lg" value="'.$p2.'" type="text"></input><br>
	      <label>Third Hostel</label>
	      <input name="h3" class="form-control input-lg" value="'.$h3.'" type="text"></input><br>
	      <label>Points of Third Hostel</label>
	      <input name="p3" class="form-control input-lg" value="'.$p3.'" type="text"></input><br>
	      <label>POSITION of Alakananda Hostel</label>
	      <input name="posA" class="form-control input-lg" value="'.$posA.'" type="text"></input><br>
	      <label>Points of Alakananda Hostel</label>
	      <input name="pA" class="form-control input-lg" value="'.$pA.'" type="text"></input><br>';
echo'
	      <input name="code" class="form-control input-lg" value="'.$usercode.'" type="hidden"></input>
	    </div>
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Update</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>

<!--update lit-soc points-->
<div id="litTable" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Update Lit-Soc Table
      </div>
      <div class="modal-body">
	<form class="form" method="post" action="updatepoints.php">
	    <div class="form-group">
';
$points = mysql_fetch_array(mysql_query("SELECT h1, h2, h3, p1, p2, p3, posA, pA, date FROM alak_pointsTable WHERE type = '0'"));
$h1 = $points['h1'];
$h2 = $points['h2'];
$h3 = $points['h3'];
$p1 = $points['p1'];
$p2 = $points['p2'];
$p3 = $points['p3'];
$posA = $points['posA'];
$pA = $points['pA'];
$date = $points['date'];

echo'
	      <label>First Hostel</label>
	      <input name="h1" class="form-control input-lg" value="'.$h1.'" type="text"></input><br>
	      <label>Points of First Hostel</label>
	      <input name="p1" class="form-control input-lg" value="'.$p1.'" type="text"></input><br>
	      <label>Second Hostel</label>
	      <input name="h2" class="form-control input-lg" value="'.$h2.'" type="text"></input><br>
	      <label>Points of Second Hostel</label>
	      <input name="p2" class="form-control input-lg" value="'.$p2.'" type="text"></input><br>
	      <label>Third Hostel</label>
	      <input name="h3" class="form-control input-lg" value="'.$h3.'" type="text"></input><br>
	      <label>Points of Third Hostel</label>
	      <input name="p3" class="form-control input-lg" value="'.$p3.'" type="text"></input><br>
	      <label>POSITION of Alakananda Hostel</label>
	      <input name="posA" class="form-control input-lg" value="'.$posA.'" type="text"></input><br>
	      <label>Points of Alakananda Hostel</label>
	      <input name="pA" class="form-control input-lg" value="'.$pA.'" type="text"></input><br>';
echo'
	      <input name="code" class="form-control input-lg" value="'.$usercode.'" type="hidden"></input>
	    </div>
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Update</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>


<!--update sec details-->
<div id="updateDetails" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Update Secretary Details
      </div>
      <div class="modal-body">
	<form class="form" method="post" action="updateuser.php">
	    <div class="form-group">
	      <label>Name</label>
	      <input name="name" class="form-control input-lg" value="'.$username.'" type="text"></input><br>
	      <label>Roll Number</label>
	      <input name="roll" class="form-control input-lg" value="'.$userroll.'" type="text"></input><br>
	      <label>Room</label>
	      <input name="room" class="form-control input-lg" value="'.$userroom.'" type="text"></input><br>
	      <label>Mobile</label>
	      <input name="mobile" class="form-control input-lg" value="'.$usermobile.'" type="text"></input><br>
	      <label>E-Mail</label>
	      <input name="email" class="form-control input-lg" value="'.$useremail.'" type="text"></input><br>
	      <input name="code" class="form-control input-lg" value="'.$usercode.'" type="hidden"></input>
	    </div>
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Update</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>


<!--change password-->
<div id="changePassword" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Change Password
      </div>
      <div class="modal-body">
	<form class="form" method="post" action="changepassword.php">
	    <div class="form-group">
	      <p>  No special characters. Use only Alphabets and Numbers combination.</p>
	      <input name="pass1" class="form-control input-lg" autofocus="" placeholder="New Password" type="password"></input><br>
	      <input name="pass2" class="form-control input-lg" autofocus="" placeholder="Confirm Password" type="password"></input><br>
		<input name="user" class="form-control input-lg" autofocus="" value="'.$userroll.'" type="hidden"></input>
	    </div>
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Change</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>

<!--set status-->
<div id="setStatus" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Set Status
      </div>
      <div class="modal-body">
	<form class="form" method="post" action="setstatus.php">
		Select Module : 
		<select name="mod" class="form-control input-lg">
		  <option name="mod" value="1">Module 1 - Roshan M S</option>
		  <option name="mod" value="2">Module 2 - Ahammaed Rohan</option>
		  <option name="mod" value="3">Module 3 - Zach Zajo</option>
		  <option name="mod" value="4">Module 4 - Aslamah Rahiman</option>
		  <option name="mod" value="5">Module 5 - Amal Sanjay</option>
		  <option name="mod" value="6">Module 6 - Aleef</option>
		  <option name="mod" value="7">Module 7 - Sahid</option>
		  <option name="mod" value="8">Module 8 - Joel Jose</option>
		  <option name="mod" value="9">Module 9 - Aboobacker</option>
		</select>
		<hr>
		Set Status : 
		<select name="stat" class="form-control input-lg">
		  <option name="stat" value="0">Not Yet Started.</option>
		  <option name="stat" value="1">Slides Not Received.</option>
		  <option name="stat" value="2">Slides Received. Editing Left.</option>
		  <option name="stat" value="3">Completed. Ready to Publish.</option>
		</select>		
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Set</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>

<!--add new budget entry-->
<div id="newBudget" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Add a new Budget Entry
      </div>
      <div class="modal-body">
	<form class="form" method="post" action="newbudget.php">
	    <div class="form-group">
	      <input name="user_id" type="hidden" class="form-control input-lg" autofocus="" value="'.$usercode.'"></input><br>
	      <input name="spentAB" class="form-control input-lg" autofocus="" placeholder="Spent Amount" type="text"></input><br>
	      <textarea name="detailsAB" class="form-control input-lg" autofocus="" placeholder="Details"></textarea>
	    </div>
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Save</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>


<!--upload report-->
<div id="uploadReport" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
			Upload a New File
      </div>
      <div class="modal-body">
	  <form method="post" enctype="multipart/form-data" action="uploadreport.php">
	    <div class="form-group">
	      <input class="form-control input-lg" name="title" autofocus="" placeholder="Title"></input><br>
	      <input name="sec_id" type="hidden" class="form-control input-lg" autofocus="" value="'.$usercode.'"></input><br>
	      <input type= "file" name="file" class="form-control input-lg" autofocus="" placeholder="Title"></input><br>
        </div>
      </div>
      <div class="modal-footer">
          <div>
          <button type="submit" class="btn btn-primary btn-sm" aria-hidden="true">Upload</button>
	  </div>
          </form>	
      </div>
  </div>
  </div>
</div>

	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
	</body>
</html>
';
?>
