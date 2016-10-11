<?php
require 'connect.php';

//Secretaries
	echo' <li><team>Secretaries</team></li> ';
	$infos = mysql_query("SELECT sPost, sCode, sRoll FROM alak_secretaryDetails WHERE 1 ORDER BY sCode");
	while($info = mysql_fetch_array($infos))
	{
		$post = $info['sPost'];
		$code = $info['sCode'];
		$roll = $info['sRoll'];
		echo'
                    <li><a href="view.php?profile='.$roll.'"><img src="../images/council/'.$code.'.jpg" title="'.$post.'" width="25px" height="25px" class=" pull-left"><name>'.$post.'</name></a></li>
		';
	}
?>
