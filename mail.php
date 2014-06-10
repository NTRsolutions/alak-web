<?php
require 'mailer/PHPMailerAutoload.php'; 
function mailer($name, $to, $subject, $body)
{
//Create a new PHPMailer instance
$mail = new PHPMailer();
//Tell PHPMailer to use SMTP
//$mail->isSMTP();
//Enable SMTP debugging
// 0 = off (for production use)
// 1 = client messages
// 2 = client and server messages
$mail->SMTPDebug = 2;
//Ask for HTML-friendly debug output
$mail->Debugoutput = 'html';
//Set the hostname of the mail server
$mail->Host = 'smtp.gmail.com';
//Set the SMTP port number - 587 for authenticated TLS, a.k.a. RFC4409 SMTP submission
$mail->Port = 587;
//Set the encryption system to use - ssl (deprecated) or tls
$mail->SMTPSecure = 'tls';
//Whether to use SMTP authentication
$mail->SMTPAuth = true;
//Username to use for SMTP authentication - use full email address for gmail
$mail->Username = "hostelalakananda@gmail.com";
//Password to use for SMTP authentication
$mail->Password = "goAlak2014";
//Set who the message is to be sent from
$mail->setFrom('hostelalakananda@gmail.com', 'Alakananda Hostel');
//Set an alternative reply-to address
$mail->addReplyTo('abhijithcs1993@gmail.com', 'Abhijith C S');
//Set who the message is to be sent to
$mail->addAddress($to, $name);

//Set the subject line
$mail->Subject = $subject;
//Read an HTML message body from an external file, convert referenced images to embedded,
//convert HTML into a basic plain-text alternative body
//$mail->msgHTML(file_get_contents('contents.html'), dirname(__FILE__));
//Replace the plain text body with one created manually
//$mail->AltBody = 'This is a plain-text message body';
$mail->Body     = "Hi ".$name.",\n".$body."\n\nSent from http://www.alakananda.in\nNote: Kindly DO NOT mark it as spam. Create a filter if you don't want to receive further mails from us.";
//Attach an image file
//$mail->addAttachment('images/council/GEN.jpg');

//send the message, check for errors
if (!$mail->send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
    echo "Message sent!";
}

}
//FORMAT: mailer('Abhijith','cs11b003@smail.iitm.ac.in','When are you leaving?','Thanks');
?>
