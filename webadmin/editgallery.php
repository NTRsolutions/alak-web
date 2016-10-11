<?php
session_start();
if(!isset($_SESSION['webadmin']))
{
	header('Location: access.php');
}
else
{
	$logged = 1;
	$username = "Web Administrator";
}


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

    <title>EDIT: Gallery</title>

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




    		if($_GET['action']=='delete') 
		{
			if(isset($_POST['code']))
			{
				$code = $_POST['code'];
			}
			unlink("../images/gallery/".$code.".jpg");
			mysql_query("DELETE FROM pageGallery WHERE pgTitle='{$code}'");

			echo ' <script>window.location = "editgallery.php";</script> ';
    		}

?>
    <div class="container">
        <header class="margin20 nrm nlm">
            <div class="clearfix">
		<a href="#">
			<center><br><br><img src="images/head_logo.png" height=100 /></center>
		</a>
            </div>	

        </header>




<center><a href="newgallery.php"><button class="button success place-right">Add New</button></a><a href="index.php"><button class="button place-right" style="margin-right: 10px">Back</button></a><br><br></center>

<?php
$query = mysql_query("SELECT pgTitle, pgContent, pgDate, pgFlag FROM pageGallery WHERE 1");
$count = 0;
while ($data = mysql_fetch_array($query))
{
	$title = $data['pgTitle'];
	$date = $data['pgDate'];
	$content = $data['pgContent'];
	$flag = $data['pgFlag'];

echo'
        <div class="main-content clearfix">
            <div class="tile-area no-padding clearfix">
                <div class="tile-group no-margin no-padding clearfix" style="width: 100%;" >
                 
                    <div class="tile tripleF double-vertical transparent" style="height: auto;">
                        <div class="tile-content">
                            <div class="panel no-border">
                                <div class="panel-header bg-gray fg-white">'.$title.'</div>
                                <div class="panel-content fg-white"><br>
';
				if($flag == 1)
				{					
                                    echo' <img src="../images/gallery/'.$title.'.jpg" width = "50%" class="place-left margin10 nlm ntm"> ';
				}
echo'
                                    '.$content.'
				    <div class="fg-yellow" style="padding-bottom: 10px"><br>Added on : '.$date.'    
			            <form method="POST" action="?action=delete">
					<input type="hidden" name="code" value="'.$title.'"/>
				        <input type="submit" class="danger place-right" name="delete" value="Delete"/>
				    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
         </div>
';
$count++;
}
if($count == 0)
{
echo '<center><p style = "color: #ffffff; font-size: 30px; padding-top: 100px">Oops!</p></center>';
}
?>



    </div>

    <script src="js/hitua.js"></script>

</body>
</html>



