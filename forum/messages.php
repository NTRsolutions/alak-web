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
		<title>Messages</title>
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
                      
<?php
//User Info
	$info = mysql_fetch_array(mysql_query("SELECT mName, mRoll FROM alak_people WHERE mRoll= '{$userroll}'"));

	$username = $info['mName'];
	$userroll = strtoupper($info['mRoll']);

	//Chatter
	$friend = $_GET['friend'];

    		if($_GET['action']=='reply') 
		{
		        $toRoll 	= $_POST['to'];

			$test = mysql_query("SELECT mRoll FROM alak_people WHERE mRoll= '{$toRoll}'");
			if($testflag = mysql_fetch_assoc($test))
			{
			date_default_timezone_set('Asia/Calcutta');
			$timeStamp = date('H:i:s d M Y');
		        $content = mysql_real_escape_string($_POST['reply']);

			mysql_query("UPDATE alak_messages SET mHead = '0' WHERE (mFrom = '{$userroll}' AND mTo = '{$toRoll}') OR (mFrom = '{$toRoll}' AND mTo = '{$userroll}') AND mHead='1'");

			mysql_query("INSERT INTO alak_messages (mFrom, mTo, mTime, mContent, mHead) VALUES ('{$userroll}','{$toRoll}', '{$timeStamp}', '{$content}', '1')");
			
			echo ' <script>window.location = "messages.php?friend='.$toRoll.'";</script> ';
			}
			else
			{
			echo ' <script>window.location = "index.php";</script> ';
			}
    		}

	//Error handling
		$testname = mysql_fetch_array(mysql_query("SELECT mName FROM alak_people WHERE mRoll = '{$friend}'"));
		$friendname1 = $testname['mName']; 
		if($friendname1 == NULL)
		{echo' <script>window.location = "index.php";</script> ';}

		if($userroll == $friend)
		{echo' <script>window.location = "index.php";</script> ';}


echo '        
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
                        <a href="index.php"><img src="https://photos.iitm.ac.in/byroll.php?roll='.$userroll.'" title="'.$username.'" width="28px" height="28px" class="img-square pull-left"><strong>'.$username.'</strong></a>
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
';
                           
		$msg = mysql_query("SELECT mFrom, mTo, mTime, mContent, mHead FROM alak_messages WHERE (mTo = '{$userroll}' OR mFrom = '{$userroll}') AND mHead = '1' ORDER BY mId DESC"); //TAKE CARE OF ORDER ***********
		$noMsgFlag = 0;
echo '
                           <div class="panel panel-default">
                                 <div class="panel-heading"><h4>Messages History</h4></div>
                                  <div class="panel-body">
';

			while($message = mysql_fetch_assoc($msg))
			{

			$chatfrom = $message['mFrom'];
			$chatto = $message['mTo'];
			$chatdate = $message['mTime'];
			$chatcontent = $message['mContent'];
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

			if($chatto == $userroll) // Msg from others TO ME.
			{
				$chatnamerow = mysql_fetch_array(mysql_query("SELECT mName FROM alak_people WHERE mRoll = '{$chatfrom}'"));
				$chatname = $chatnamerow['mName'];

				echo'
		                   <a href="messages.php?friend='.$chatfrom.'">
					<img src="https://photos.iitm.ac.in/byroll.php?roll='.$chatfrom.'" title="'.$chatname.'" width="28px" height="28px" class="img-circle pull-left">
					<div class="pull-left"><strong>'.$chatname.'</strong></div>
					<div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div><br>
					<p><newchat>'.$chatshort.' ...</newchat></p>
				   </a><hr>       
				';           
			}
			else if($chatfrom == $userroll) // Msg sent TO OTHERS BY ME 
			{
				$chatnamerow = mysql_fetch_array(mysql_query("SELECT mName FROM alak_people WHERE mRoll = '{$chatto}'"));
				$chatname = $chatnamerow['mName'];

				echo'
		                   <a href="messages.php?friend='.$chatto.'">
					<img src="https://photos.iitm.ac.in/byroll.php?roll='.$chatto.'" title="'.$chatname.'" width="28px" height="28px" class="img-circle pull-left">
					<div class="pull-left"><strong>'.$chatname.'</strong></div>
					<div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div><br>
					<p><repliedchat><strong>You</strong>: '.$chatshort.' ...</repliedchat></p>
				   </a><hr>       
				';           
			}

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



?>

                           
                          </div>
                          
                          <!-- main col right -->



                          <div class="col-sm-7">

<?php
		$msg1 = mysql_query("SELECT mFrom, mTo, mTime, mContent FROM alak_messages WHERE (mTo = '{$userroll}' AND mFrom = '{$friend}') OR (mFrom = '{$userroll}' AND mTo = '{$friend}') ORDER BY mId"); //TAKE CARE OF ORDER ***********


		$chatnamerow = mysql_fetch_array(mysql_query("SELECT mName FROM alak_people WHERE mRoll = '{$friend}'"));
		$friendname = $chatnamerow['mName']; 
		
		echo'
                               <div class="panel panel-default">
                                 <div class="panel-heading" style = "background-color:#444444;"><img src="https://photos.iitm.ac.in/byroll.php?roll='.$userroll.'" title="'.$username.'" width="28px" height="28px" class="img-circle pull-left"><img src="https://photos.iitm.ac.in/byroll.php?roll='.$friend.'" title="'.$friendname.'" width="28px" height="28px" class="img-circle pull-left"><h4>You and '.$friendname.'</h4></div>
                                  <div class="panel-body">
		';

		$isEmpty = 1;
		while($messages = mysql_fetch_assoc($msg1))
		{
			$CFrom = $messages['mFrom'];
			$CTo = $messages['mTo'];
			$CDate = $messages['mTime'];
			$CCon = $messages['mContent'];

				$time = date("H:i", strtotime($CDate));
				$date = date("d M Y", strtotime($CDate));
				$printDate = date("d M", strtotime($CDate));

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

			if($CFrom == $userroll)
			{
			echo'
                                    <p><img src="https://photos.iitm.ac.in/byroll.php?roll='.$userroll.'" title="'.$username.'" width="28px" height="28px" class="img-square pull-left"><strong>'.$username.':</strong> '.$CCon.'<div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div></p><hr>
			';
			}
			else if($CFrom == $friend)
			{
			echo'
                                    <p><img src="https://photos.iitm.ac.in/byroll.php?roll='.$friend.'" title="'.$friendname.'" width="28px" height="28px" class="img-square pull-left"><strong>'.$friendname.':</strong> '.$CCon.'<div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div></p><hr>
			';
			}	
		
			$isEmpty = 0;	
		}
		if($isEmpty == 1)
		{
		echo'		    <center><p>You never had a conversation with '.$friendname.'.<br><yes>Start a new Conversation Now!</yes></p></center>
                                    <form method="post" action="messages.php?action=reply">
                                    <div class="input-group">
                                      <div class="input-group-btn">
					<button type="submit" class="btn btn-default"><yes>Start Chat!</yes></button>
                                      </div>
                                      <input type="text" name="reply" class="form-control" placeholder="...">
                                      <input type="hidden" name="to" class="form-control" value="'.$friend.'">
                                    </div>
                                    </form>
                                    
                                  </div>
                               </div>
		';
		}
		else
		{
		echo'
                                    <form method="post" action="messages.php?action=reply">
                                    <div class="input-group">
                                      <div class="input-group-btn">
					<button type="submit" class="btn btn-default">Reply</button>
                                      </div>
                                      <input type="text" name="reply" class="form-control" placeholder="...">
                                      <input type="hidden" name="to" class="form-control" value="'.$friend.'">
				      <input type="hidden" name="userroll" class="form-control" value="'.$userroll.'">
                                    </div>
                                    </form>
                                    
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