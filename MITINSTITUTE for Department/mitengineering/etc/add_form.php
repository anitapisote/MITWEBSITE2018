
<!-event_master Event id, Image path, article_title, image description>

<?php
require("database_handler.php");
//Page1 upload an image and its description.
//Page2 Retrieve the image and its description from the database
// Use encryption, escaping and other stuff
// Make everything standard from the variable names to design.
?>

<html>
<body align="center">

<form action="upload.php" method="post" enctype="multipart/form-data">
    <h2>Add Event </h2>
    <table width="400" align="center" border="1">
        <tr><th>Title:</th>
            <th><input width="100%"type="text" name="event_name"></th></tr>
        
        <tr><th>Select image:</th>
            <th> <input type="file" name="fileToUpload" id="fileToUpload"></th></tr>
         
        <tr><th>Event Category</th><th><select name="event_category">
             <option disabled selected value> -- select an option -- </option>
             <?php // Code for fetching category ids
             $sql_categories = "SELECT EventCategoryID, EventCategory FROM mit_eventcategory";
             $category_result = mysqli_query($conn, $sql_categories);
             
             if($category_result){
                 while($row_categories = mysqli_fetch_assoc($category_result)){
                     echo "<option value='{$row_categories['EventCategoryID']}'>{$row_categories['EventCategory']}</option>";
                 }
             }
             ?>
             </select></th></tr>  
        
        
        <tr><th>Event Type</th><th><select name="event_type">
             <option disabled selected value> -- select an option -- </option>
             <?php // Code for fetching event type ids
             $sql_types = "SELECT EventTypeID, EventType FROM mit_eventtypes";
             $types_result = mysqli_query($conn, $sql_types);
             
             if($types_result){
                 while($row_types = mysqli_fetch_assoc($types_result)){
                     echo "<option value='{$row_types['EventTypeID']}'>{$row_types['EventType']}</option>";
                 }
             }
             ?>
             
             </select></th></tr> 
        
         <tr><th>Event Status</th><th><select name="event_status">
             <option disabled selected value> -- select an option -- </option>
             <?php // Code for fetching category ids
             $sql_status = "SELECT StatusValue, StatusID FROM mit_statusmaster";
             $status_result = mysqli_query($conn, $sql_status);
             if($status_result){
                 while($row_status = mysqli_fetch_assoc($status_result)){
                     echo "<option value='{$row_status['StatusID']}'>{$row_status['StatusValue']}</option>";
                 }
             }
             ?>
             
             </select></th></tr>
        
        
        
        <tr><th>Staff-Incharge</th><th><select name="staff">
             <option disabled selected value> -- select an option -- </option>
             <?php // Code for fetching Staff ids
             $sql_staff = "SELECT StaffID, FirstName,LastName FROM mit_employeemaster";
             $staff_result = mysqli_query($conn, $sql_staff);
             
             if($staff_result){
                 while($row_staff = mysqli_fetch_assoc($staff_result)){
                     echo "<option value='{$row_staff['StaffID']}'>{$row_staff['FirstName']} ".$row_staff['LastName']."</option>";
                 }
             }
             ?>
             
             </select></th></tr> 
        
        <tr><th>Event Created & Updated by<br>(Change with Login and session)</th><th><select name="event_created_by">
             <option disabled selected value> -- select an option -- </option>
             <?php // Code for fetching Created and Updated by
             $sql_staff = "SELECT StaffID, FirstName,LastName,MiddleName FROM mit_employeemaster";
             $staff_result = mysqli_query($conn, $sql_staff);
             
             if($staff_result){
                 while($row_staff = mysqli_fetch_assoc($staff_result)){
                     echo "<option value='{$row_staff['FirstName'][0]}{$row_staff['MiddleName'][0]}{$row_staff['LastName'][0]}'>{$row_staff['FirstName'][0]}{$row_staff['MiddleName'][0]}{$row_staff['LastName'][0]}</option>";
                 }
             }
             ?>
             
             </select></th></tr> 
    
        
        <tr><th>Description:</th> <th><textarea name="event_description"></textarea></th></tr>
        
        <tr><th>Start Date</th><th><input type="date" name="start_date"></th></tr>
        <tr><th>End Date</th><th><input type="date" name="end_date"></th></tr>
        <tr><th>Start Time</th><th><input type="time" name="start_time"></th></tr>
        <tr><th>End Time</th><th><input type="time" name="end_time"></th></tr>
        <tr><th>Event Cost</th><th><input type="text" name="event_cost"></th></tr>
        <tr><th></th><th><input type="submit" name="submit" value="upload"></th></tr>
        
    </table>
</form>

</body>
</html>