<?php
session_start();

if(!isset($_SESSION['webadmin']))
{
	header('Location: access.php');
}

$username = "Web Administrator";

define('INCLUDE_CHECK', true);
require 'connect.php';

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
$forumError = 0;
echo '<a href = leave.php><button class="button place-right warning">LOGOUT</button></a>';
echo '<button class="button place-right">'.$username.'</button>';

    		if($_GET['action']=='newEntry') //************* NOTIFY WEB ADMIN FOR APPROVAL (CHECK ALL OTHER WEB ADMIN APPROVAL ALSO)
		{
			date_default_timezone_set('Asia/Calcutta');

			$date = date('d M Y');
			$title  = mysql_real_escape_string($_POST['title']);
			$content  = mysql_real_escape_string($_POST['content']);

			$allowedExts = array("jpg", "png");
			$temp = explode(".", $_FILES["file"]["name"]);
			$extension = end($temp);
			$errorMsg = "";

			if($_FILES["file"]["name"] == NULL)
			{
				mysql_query("INSERT INTO pageGallery (pgDate, pgTitle, pgContent, pgFlag) VALUES ('{$date}','{$title}', '{$content}', '0')");
				header('Location: editgallery.php');
			}
			else
			{
				if ((($_FILES["file"]["type"] == "image/gif")
				|| ($_FILES["file"]["type"] == "image/jpeg")
				|| ($_FILES["file"]["type"] == "image/jpg")
				|| ($_FILES["file"]["type"] == "image/pjpeg")
				|| ($_FILES["file"]["type"] == "image/x-png")
				|| ($_FILES["file"]["type"] == "image/png"))
				&& ($_FILES["file"]["size"] < 200000000)
				&& in_array($extension, $allowedExts)) 
				{
				  	if ($_FILES["file"]["error"] > 0) 
					{
				    		echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
					} 
					else 
					{
						move_uploaded_file($_FILES["file"]["tmp_name"], "../images/gallery/".$title.'.jpg');
						mysql_query("INSERT INTO pageGallery (pgDate, pgTitle, pgContent, pgFlag) VALUES ('{$date}','{$title}', '{$content}', '1')");
						header('Location: editgallery.php');
				  	}
				} 
				else 
				{
				  	$errorMsg = "Invalid File. Upload only .JPG or .PNG files size less than 2MB.";
				}

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

        </header>

                    <div class="tile tripleF double-vertical transparent" style="height: auto">
                        <div class="tile-content">
                            <div class="panel no-border fg-white">

                                <div class="panel-header bg-gray fg-white">New Entry for GALLERY Page</strong></div>
                                <div class="panel-content transparent fg-white">


                            <div class="panel no-border">                           
					<div class="panel no-border">
						    <div class="panel-content">			        

							<form action="?action=newEntry" method="post" enctype="multipart/form-data">
						            <fieldset>
						                <label>Title</label>
								    <div class="input-control text size6" data-role="input-control">
								        <input type="text" name="title" required>
								    </div>
								<label>Story</label>
								    <div class="input-control textarea" data-role="input-control">
								        <textarea name="content" required> </textarea>
								    </div>
								<label>Upload a Photo (Optional)</label>
								<div class=input-control text><input type=file name=file id=file></div> 
								<br>
								<?php echo $errorMsg; ?>
								<br>
						            </fieldset>

						        
						    </div>
						</div>	
                                        </div>
				</div>	
                              </div>
                </div>

            </div>
<center><input type="submit" value="Proceed" class="success" style="margin-right: 10px"> 
					</form>

<a href="editgallery.php"><button class="button" style="margin-right: 10px">Back</button></a></center>    
						
        </div>
    </div>

    <script src="js/hitua.js"></script>

</body>
</html>
