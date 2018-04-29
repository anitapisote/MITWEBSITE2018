<?php
include("database_handler.php");
if(isset($_POST['submit'])){
    $citizen = $_POST['country_from'];
    $residence_country = $_POST['country_residence'];
    $city = $_POST['enquiry_city'];
    $state = $_POST['enquiry_state'];
    $contact_no = $_POST['contact_no'];
    $email = $_POST['email'];
    $dob = $_POST['dob'];
    $name = $_POST['fullname'];
    $message = $_POST['message'];
    $courseId = $_POST['course_id'];
    $instId = $_POST['institute_id'];
    $str="Respected Sir/Madam,<br>Following are the details of International student who filled enquiry form just now<br>"."Name:".$name."<br>Email ID:".$email;
    $sql = "INSERT INTO mit_international_admission_enquiry (FullName, DOB, EmailID, MobileNo, State, City, CountryOfResidence, CountryOfCitizenShip, InstituteID, CourseID, enquiry_message, CreatedBy) VALUES ('{$name}', '{$dob}', '{$email}', '{$contact_no}', '{$state}', '{$city}', '{$residence_country}', '{$citizen}', '{$instId}', '{$courseId}', '{$message}', 'VVS')";
    $res = mysqli_query($conn, $sql);
	$to="anita.pisote@mit.asia";
	$to1="anitapisote@gmail.com";
	$subject="Regarding Student enquiry";
	$body=$str;
	
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
      $mail->addAddress($to1);

   if(!$mail->send())
   {
   	 echo "Mailer Error.".$mail->ErrorInfo;
   }
   else
   {
   	  echo "Message has been send Successfully!";
   }



    if($res)
	{
    echo"<h1>Application Submitted!</h1>";
}
else
{
	echo "problem";
	
}

}

?>