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

	$profile = $_GET['profile'];

	//Error handling
		$chatnamerow = mysql_fetch_array(mysql_query("SELECT sName FROM alak_secretaryDetails WHERE sRoll = '{$profile}'"));
		$friendname = $chatnamerow['sName']; 
		if($friendname == NULL)
		{echo' <script>window.location = "index.php";</script> ';}

		if($userroll == $profile)
		{echo' <script>window.location = "index.php";</script> ';}

	$info = mysql_fetch_array(mysql_query("SELECT sCode, sName, sRoom, sRoll, sPost, sEmail, sMobile, sUpdate FROM alak_secretaryDetails WHERE sRoll = '{$profile}'"));

	$pname = $info['sName'];
	$seccode = $info['sCode'];
	$ppost = $info['sPost'];
	$proom = $info['sRoom'];
	$pemail = $info['sEmail'];
	$pmobile = $info['sMobile'];
	$phostel = $info['sHostel'];
	$lastlogin = $info['sUpdate'];
	$proll = strtoupper($info['sRoll']);

echo'

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>'.$pname.'</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
	</head>
	<body>

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

              	<!-- tiny only nav-->
                <ul class="nav visible-xs" id="xs-menu">
                  	<li><a href="#featured" class="text-center"><i class="glyphicon glyphicon-list-alt"></i></a></li>
                    <li><a href="#stories" class="text-center"><i class="glyphicon glyphicon-list"></i></a></li>
                  	<li><a href="#" class="text-center"><i class="glyphicon glyphicon-paperclip"></i></a></li>
                    <li><a href="#" class="text-center"><i class="glyphicon glyphicon-refresh"></i></a></li>
                </ul>
              
            </div>
            <!-- /sidebar -->
          
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                
                <!-- top nav -->
              	<div class="navbar navbar-blue navbar-static-top">  

                    <ul class="nav navbar-nav">
                      <li>
                        <a href="index.php"><img src="https://photos.iitm.ac.in/byroll.php?roll='.$userroll.'" title="'.$userroll.'" width="28px" height="28px" class="img-square pull-left"><strong>You are now viewing Public Profile of '.$ppost.'</strong></a>
                      </li>
                    </ul>

                    <ul class="nav navbar-nav pull-right">
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
                           
                              <div class="panel panel-default">
                                <div class="panel-thumbnail"><img src="../images/council/'.$seccode.'.jpg" style="padding: 15px;" class="img-responsive"></div>
                                <div class="panel-body">
                                  <p class="lead">'.$pname.'</p>
                                  <newchat>'.$ppost.'</newchat>
                                  <p>Room No. '.$proom.', '.$phostel.' Hostel</p>
                                  <p><strong>'.$pmobile.'</strong> | '.$pemail.'</p>
				  <p>Last Online : <yes>'.$lastlogin.'</yes></p>
                                </div>
                              </div>


                               <div class="panel panel-default">
                                 <div class="panel-heading"><h4>Send a message to '.$ppost.'</h4></div>
                                  <div class="panel-body">
					
                                   <form class="form" method="post" action="messages.php?action=reply">
                                    <div class="input-group text-center">
                                    <input type="text" name="reply" class="form-control input-lg" placeholder="Enter Message" required>
                                      <input type="hidden" name="to" class="form-control" value="'.$profile.'">
                                      <span class="input-group-btn"><button class="btn btn-lg btn-primary" type="submit">Send</button></span>
                                    </div>
                                  </form>
                                  <br>
                                  <center><a href="messages.php?friend='.$profile.'"><button class="btn  btn-green" type="submit">Open Mailbox</button></a></center>
                                  </div>
                               </div>

';

if(1) //Show File Uploads
{
	$uploads = mysql_query("SELECT rDate, rTitle FROM alak_reports WHERE rCode='{$seccode}' ORDER BY rDate");
	
	echo'
                              <div class="panel panel-default">
                                <div class="panel-heading"><h4>Files Uploaded</h4></div>
                                  <div class="panel-body">
                                    <div class="list-group">
	';
	$uploadflag = 0;
	while($upload = mysql_fetch_assoc($uploads))
	{
		$title = $upload['rTitle'];
		$date = $upload['rDate'];

		echo'
                                      <a href="reports/'.$seccode.'/'.$title.'_'.$date.'.pdf" title="Uploaded : '.$date.'" class="list-group-item">'.$title.'</a>
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
}


echo'
                          </div>
                          
                          <!-- main col right -->



                          <div class="col-sm-7">

';
?>
<?php
if(1) //Show Budget Table
{
		// $crdt = mysql_query("SELECT cReason, cNumber, cDate FROM alak_credits WHERE cRoll = '{$profile}' ORDER BY cDate");
		$crdt = mysql_query("SELECT bDetails, bAmount, bDate FROM alak_budget WHERE bCode = '{$seccode}' ORDER BY bDate");

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
                                  </div>
                               </div>
';
}


$role = $_SESSION['role'];
$posts = mysql_query("SELECT pRoll, pName, pSubject, pContent, pDate, pReplyFlag FROM alak_posts WHERE pArchive='0' AND pReplyFlag = '0' AND pRoll = '{$profile}' ORDER BY pDate");
			$postCount = 0;
			while($post = mysql_fetch_assoc($posts))
			{
				$postCount++;

				$postedRoll = $post['pRoll'];
				$postedName = $post['pName'];
				$postedSubject = $post['pSubject'];
				$postedContent = $post['pContent'];
				$postedDate = $post['pDate'];

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
			if($postedRoll == $userroll)
			{
			echo'
				<form method="post" action="archive.php">
				<button class="pull-right btn  btn-default" type="submit" title="Archive this Post">X</button>
				<input type="hidden" name="hid_sub" class="form-control" value="'.$postedSubject.'">
				</form>
			';
			}
			echo'
				<h4>'.$postedSubject.'</h4></div>
                                  <div class="panel-body"><div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div>
                                     <strong>'.$postedContent.'</strong>
                                    <div class="clearfix"></div>
                                    <hr>
			
			  ';

			//Replies to a post
				$replies = mysql_query("SELECT pArchive, pRoll, pName, pSubject, pContent, pDate, pReplyFlag FROM alak_posts WHERE pReplyFlag = '1' AND pSubject ='{$postedSubject}' ORDER BY pId");
				$archiveFlag = 0;

//****ADD SCROLL				echo' <div class="scrollbar1" id="style-11"> ';

				while($reply = mysql_fetch_assoc($replies))
				{
				$replyRoll = $reply['pRoll'];
				$replyName = $reply['pName'];
				$replySubject = $reply['pSubject'];
				$replyContent = $reply['pContent'];
				$replyDate = $reply['pDate'];

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
                                    <p><img src="https://photos.iitm.ac.in/byroll.php?roll='.$replyRoll.'.jpg" title="'.$replyName.'" width="28px" height="28px" class="img-square pull-left"><div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div><strong>'.$replyName.' :</strong> '.$replyContent.'</p>                                    
                                    <hr>
				  ';
				}

//				echo ' </div><br> ';

			
			//Controls
			echo'
<!--                                    <form method="post" action="comment.php">
                                    <div class="input-group">
                                      <div class="input-group-btn">
                                      <button type="submit" class="btn btn-default">Comment</button>
                                      </div>
                                      <input type="text" name="repCon" class="form-control" placeholder="Add a comment..">
				      <input type="hidden" name="repSub" class="form-control" value="'.$postedSubject.'">
				      <input type="hidden" name="hid_roll" class="form-control" value="'.$userroll.'">
				      <input type="hidden" name="hid_name" class="form-control" value="view_users">
				      <input type="hidden" name="hid_dir" class="form-control" value="'.$profile.'">
                                    </div>
                                    </form>
                                    -->
                                    
                                  </div>
                               </div>

			  ';
			} //While
			
	
			if($postCount == 0)
			{
				echo'
		                       <div class="panel panel-default">
		                          <div class="panel-body">
						<br><center><newchat>There are no posts by '.$pname.'.</newchat></center><br>
		                          </div>
		                       </div>
				';
			}

?>
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
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			Add a new Post
      </div>
      <div class="modal-body">
          <form class="form center-block">
            <div class="form-group">
              <input class="form-control input-lg" autofocus="" placeholder="Subject"></input>
              <textarea class="form-control input-lg" autofocus="" placeholder="What do you want to share?"></textarea>
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div>
          <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Post</button>
	  </div>	
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