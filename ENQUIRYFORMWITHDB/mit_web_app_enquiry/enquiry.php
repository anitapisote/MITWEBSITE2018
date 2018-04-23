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
    
    $sql = "INSERT INTO mit_international_admission_enquiry (FullName, DOB, EmailID, MobileNo, State, City, CountryOfResidence, CountryOfCitizenShip, InstituteID, CourseID, enquiry_message, CreatedBy) VALUES ('{$name}', '{$dob}', '{$email}', '{$contact_no}', '{$state}', '{$city}', '{$residence_country}', '{$citizen}', '{$instId}', '{$courseId}', '{$message}', 'VVS')";
    $res = mysqli_query($conn, $sql);
    
    echo"<h1>Application Submitted!</h1>";
}

?>