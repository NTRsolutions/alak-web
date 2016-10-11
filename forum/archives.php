side<?php
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
		<title>Forum Archives</title>
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
		         
		<div class="scrollbar" id="style-1">              

                <ul class="nav hidden-xs" id="lg-menu">
';
		//Add the List
		require 'list.php';
echo'
                </ul>
	</div>


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
                    	      <div class="panel panel-default">
                                 <div class="panel-heading"><h4>Archived Posts</h4></div>
			      </div>
';

$posts = mysql_query("SELECT  pId, pRoll, pName, pSubject, pContent, pDate, pReplyFlag FROM alak_posts WHERE pReplyFlag = '0' AND pArchive= '1' ORDER BY pId DESC");

			$postCount = 0;
			while($post = mysql_fetch_assoc($posts))
			{
				$postCount++;
			
				$postedRoll = $post['pRoll'];
				$postedName = $post['pName'];
				$postedSubject = $post['pSubject'];
				$postedContent = $post['pContent'];
				$postedDate = $post['pDate'];
				
				$uid = $post['pId'];

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
                                 <div class="panel-heading" style = "background-color:#444444;"><img src="https://photos.iitm.ac.in/byroll.php?roll='.$postedRoll.'" title="'.$postedName.'" width="28px" height="28px" class="img-circle pull-left">
				';
			if($golden == 1 | $postedRoll == $userroll)
			{
			echo'
				<form method="post" action="deletepost.php">
				<button class="pull-right btn btn-red" style="margin-left: 10px" name="delpostbutton" value="delete" title="Delete Forever!" type="submit">X</button>
				<button name="respostbutton" value="restore" class="pull-right btn btn-default" title="Restore" type="submit">Restore</button>
				<input type="hidden" name="uid" class="form-control" value="'.$uid.'">
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

			
			echo'
				<h4>'.$postedSubject.'</h4></div>
                                  <div class="panel-body"><div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div>
                                     <strong>'.$postedContent.'</strong><br><br>
                            ';	
                                     

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
					{ echo 'Only <newchat>You</newchat> had acknowledged it.'; }
					elseif($break_count <= 6)
					{ echo '<newchat>You, '.$nameprint.'</newchat> had acknowledged it.'; }
					elseif($break_count >= 7)
					{ $count = $break_count - 6; echo '<newchat>You, '.$nameprint.' and <underline title="'.$namelist.'">'.$count.' others</underline></newchat> had acknowledged it.'; }
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
					{ echo '<no>No one</no> had acknowledged it.'; }
					elseif($break_count <= 6)
					{ echo '<newchat>'.$nameprint.'</newchat> had acknowledged it.'; }
					elseif($break_count >= 7)
					{ $count = $break_count - 6; echo '<newchat>'.$nameprint.' and <underline title="'.$namelist.'">'.$count.' others</underline></newchat> had acknowledged it.'; }
				}

				echo' <hr> ';     
				                                		
			  
			//Replies to a post
				$replies = mysql_query("SELECT pRoll, pName, pSubject, pContent, pDate, pReplyFlag FROM alak_posts WHERE pReplyFlag = '1' AND pSubject ='{$postedSubject}' AND pArchive = '1' ORDER BY pId");

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
                                    <p><img src="https://photos.iitm.ac.in/byroll.php?roll='.$replyRoll.'" title="'.$replyName.'" width="28px" height="28px" class="img-square pull-left"><div class="pull-right" title="at '.$time.' on '.$date.'">'; if($showTime == 1){echo $time;} else {echo $printDate;} echo'</div><strong>'.$replyName.' :</strong> '.$replyContent.'</p>                                    
                                    <hr>
				  ';
				}
                          echo '</div>                                  </div> ';
							  

			} //While

			if($postCount == 0)
			{
				echo'
		                       <div class="panel panel-default">
		                          <div class="panel-body">
						<br><center><newchat>There are no posts in the Archives!</newchat></center><br>
		                          </div>
		                       </div>
				';
			}

	echo'
                          </div>
	';
?>
                          
                          <!-- main col right -->


                          <div class="col-sm-7">
<?php          
if(1) //Show Events for All
{
		$getTask = mysql_query("SELECT tPost, tDate, tTime, tVenue, tContent FROM alak_tasks WHERE tArchive = '1' ORDER BY tId DESC");

		echo'
                    	      <div class="panel panel-default">
                                 <div class="panel-heading"><h4>Archived Events</h4></div>
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
			$del_prev = $getTasks['tPost'];

			echo ' <li class="list-group-item"><div class="input-group"><div class="input-group-btn">'; if($del_prev == $userrole || $golden == 1){echo' <form method="post" action="deleteevent.php">'; if(1){echo' <button class="pull-right btn btn-red" style="margin-left: 10px" name="deleventbutton" value="delete" title="Delete Forever!" type="submit">Delete</button>';} echo' <button name="reseventbutton" value="restore" class="pull-right btn btn-default" title="Restore" type="submit">Restore</button><input type="hidden" name="hid_con" class="form-control" value="'.$temp_content.'"><input type="hidden" name="hid_dat" class="form-control" value="'.$temp_date.'"></form>';} echo'</div></div><newchat>'.$temp_content.'</newchat><br>Date : <strong>'.$temp_date.'</strong> | Time : <strong>'.$temp_time.'</strong> | Venue : <strong>'.$temp_venue.'</strong><p style="font-size: 10px">Posted by '.$userrole.'</p></li><br>';
		}
		if($eventCount == 0)
		{
			echo'
				<center><newchat>No Events in the Archive!</center></newchat>
			';
		}
			echo'
					</ul>
                                  </div>
                               </div>
			';
}
?>

<?php
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

	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
	</body>
</html>
';
?>