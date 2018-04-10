<?php
require("database_handler.php");
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
// uploadOK is a flag used to indicate errors in file uploading.
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if the uploaded file is an Image.
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}
// Check if file already exists
if (file_exists($target_file)) {
    echo "<br>Sorry, file already exists.<br>";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["fileToUpload"]["size"] > 500000) {
    echo "<br>Sorry, your file is too large. Must be less than 500KB<br>";
    $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" ) {
    echo "<br>Sorry, only JPG files are allowed.<br>";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "<br>The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.<br>";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}

if($uploadOk == 1){
    // Tuple to be inserted in the database.
    $image_path = $target_dir.basename( $_FILES["fileToUpload"]["name"]);
    $event_title = $_POST['event_name'];
    $event_description = $_POST['event_description'];
    $event_type = $_POST['event_type'];
    $event_status = $_POST['event_status'];
    $staff_incharge = $_POST['staff'];
    $event_created_by = $_POST['event_created_by'];
    $start_date = $_POST['start_date'];
    $start_time = $_POST['start_time'];
    $end_time = $_POST['end_time'];
    $end_date = $_POST['end_date'];
    $cost = $_POST['event_cost'];
    $event_category = $_POST['event_category'];
    
    // The SQL Query
    //$sql = "INSERT INTO mit_eventmaster(event_title, event_description, image_path) VALUES ('{$event_title}', '{$event_description}', '{$image_path}')";
   $sql = "INSERT into mit_eventmaster(EventName, EventTypeID, EventCategoryID, StartDate, EndDate, StartTime, EndTime, EventDescription, Cost, StaffID, StatusID, ImagePath, CreatedBy, LastUpdatedBy) VALUES('{$event_title}', '{$event_type}', '{$event_category}', '{$start_date}', '{$end_date}','{$start_time}','{$end_time}','{$event_description}','{$cost}','{$staff_incharge}','{$event_status}','{$image_path}','{$event_created_by}','{$event_created_by}')"; 
    $result = mysqli_query($conn, $sql);
    
    if($result){
        echo "<br> Data Inserted Successfully!!";
    }else{
        echo "Cannot Insert Data !!";
    }
}

//header("location:fetch.php");
?>