        <?php

error_reporting(0);
if(isset($_POST['send']))
{
	$to=$_POST['to'];
	$subject=$_POST['subject'];
	$body=$_POST['body'];
	
include 'classes/class.phpmailer.php';
   $mail= new PHPMailer();
   $mail->isSMTP();
   $mail->SMTPDebug=0;
   $mail->SMTPAuth=true;
   $mail->SMTPSecure='ssl';
   $mail->Host="smtp.gmail.com";
   $mail->Port=465;
   $mail->isHTML(true);
   $mail->Username="anitapisote@gmail.com";   // Add your Gmail Address.
   $mail->Password="sunil1811";           // Add your Gmail Password
   $mail->setFrom("anitapisote@gmail.com");  // Add your Gmail Address.
   $mail->Subject=$subject;
   $mail->Body=$body;
   $mail->addAddress($to);
   if(!$mail->send())
   {
   	 echo "Mailer Error.".$mail->ErrorInfo;
   }
   else
   {
   	  echo "Message has been send Successfully!";
   }
}

?>


