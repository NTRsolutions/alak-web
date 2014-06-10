<?php
session_start();
if(!isset($_SESSION['admin']))
{
	header('Location: login.php');
}
$user = $_SESSION['admin'];

if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
	$targ_h = 160;
	$targ_w = 160;
	$jpeg_quality = 90;

	$src = 'images/council/'.$user.'.jpg';
	$img_r = imagecreatefromjpeg($src);
	$dst_r = ImageCreateTrueColor( $targ_w, $targ_h );

	imagecopyresampled($dst_r,$img_r,0,0,$_POST['x'],$_POST['y'],
	$targ_w,$targ_h,$_POST['w'],$_POST['h']);

	imagejpeg($dst_r,'images/council/'.$user.'.jpg',$jpeg_quality);
	header('Location: admin.php');
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

  <script src="crop/js/jquery.min.js"></script>
  <script src="crop/js/jquery.Jcrop.js"></script>
  <link rel="stylesheet" href="crop/demos/demo_files/main.css" type="text/css" />
  <link rel="stylesheet" href="crop/demos/demo_files/demos.css" type="text/css" />
  <link rel="stylesheet" href="crop/css/jquery.Jcrop.css" type="text/css" />

<script type="text/javascript">

  $(function(){

    $('#cropbox').Jcrop({
      aspectRatio: 1,
      onSelect: updateCoords
    });

  });

  function updateCoords(c)
  {
    $('#x').val(c.x);
    $('#y').val(c.y);
    $('#w').val(c.w);
    $('#h').val(c.h);
  };

  function checkCoords()
  {
    if (parseInt($('#w').val())) return true;
    alert('Please select a crop region then click on the button below.');
    return false;
  };

</script>

    <title>Crop Tool</title>

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

   <div class="container"><br>
                    <div class="tile tripleF double-vertical transparent" style="height: auto" >
                        <div class="tile-content">
                            <div class="panel no-border">
                                <center><div class="panel-header bg-white fg-gray">Crop Profile Picture</div></center>

                            </div>
                        </div>
                    </div>
   </div>


		<br>
		<!-- This is the image we're attaching Jcrop to -->
		<?php echo '<center><img src="images/council/'.$user.'.jpg" id="cropbox"/></center>'; ?>
		<br>
		<!-- This is the form that our event handler fills -->
		<form action="crop.php" method="post" onsubmit="return checkCoords();">
			<input type="hidden" id="x" name="x" />
			<input type="hidden" id="y" name="y" />
			<input type="hidden" id="w" name="w" />
			<input type="hidden" id="h" name="h" />
			<center><input type="submit" value="Save Image" class="button warning" /></center>
		</form>




    <script src="js/hitua.js"></script>

</body>
</html>
