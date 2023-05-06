<?php

// Enable CORS
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
//header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE');
header('Content-Type: application/json');



header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");

// Check if this is a preflight request
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    // Return a 200 OK status
    http_response_code(200);
    exit;
}

// include config file
include_once("config.php");

// Get the request data
$data = json_decode(file_get_contents('php://input'), true);


// Assign variables from $data array
// $floor_no = $data['floor_no'];
// $room_no = $data['room_no'];
// $bed_no = $data['bed_no'];
// $no_of_persons_sharing_per_room = $data['no_of_persons_sharing_per_room'];


$fee = $data['fee'];

$amount=$data['fee'];



$building_name=$data['building_name'];
$manager_email=$data['manager_email'];
$manager_mobile=$data['manager_mobile'];

$tenant_email=$data['tenant_email'];
$tenant_mobile=$data['tenant_mobile'];    
    $tenant_name=$data['tenant_name'];
    
$floor_no=$data['floor_no'];
$room_no=$data['room_no'];
$no_of_persons_sharing_per_room=$data['no_of_persons_sharing_per_room'];
$bed_no=$data['bed_no'];


$Available=$data['Available'];

$paid_amount=$data['paid_amount'];
$due=$data['due'];



date_default_timezone_set('Asia/Kolkata');
$date1 =  date("Y-m-d");
$time1 = date("h:i:sa");

    
$id="";
$joining_date="";
    

// Check if the required fields are present
if (!isset($data['floor_no'], $data['room_no'], $data['bed_no'], $data['no_of_persons_sharing_per_room'], $data['fee'], $data['building_name'], $data['manager_email'])) {
    http_response_code(400); // Bad Request
    exit('Missing required fields');
}
// $sql = "SELECT * FROM `adding-bed-details1` WHERE building_name='$building_name' AND manager_email='$manager_email' AND floor_no='$floor_no' AND room_no='$room_no' AND no_of_persons_sharing_per_room='$no_of_persons_sharing_per_room' AND bed_no='$bed_no'";

$sql = "SELECT * FROM `adding-bed-details1` WHERE building_name='$building_name' AND manager_email='$manager_email' AND floor_no='$floor_no' AND room_no='$room_no' AND bed_no='$bed_no'";


$result = mysqli_query($conn, $sql);

$count=0;
if (!$result) {
    // There was an error with the query execution
    $error = mysqli_error($conn);
    echo "Error: " . $error;
} else {
    // The query executed successfully
    $count = mysqli_num_rows($result);
    //echo $count;
}


// If data exists, update the amount field
if ($count > 0) {      
    //echo "row existed";
         $update_sql = "UPDATE `adding-bed-details1` SET `amount` = '$fee' , `no_of_persons_sharing_per_room` = '$no_of_persons_sharing_per_room'  WHERE `floor_no` = '$floor_no' AND `room_no` = '$room_no'   AND `building_name` = '$building_name' AND `manager_email` = '$manager_email' AND `bed_no` = '$bed_no'";
    //echo $update_sql;
  $update_result = mysqli_query($conn, $update_sql);
  
  if ($update_result) {
    // If record updated successfully, return success message
    $response = array("status" => "success", "message" => "Record updated successfully.");
  } else {
    // If record update failed, return error message
    $response = array("status" => "error", "message" => "Record update failed.");
  }
        // A matching row already exists in `adding-bed-details1`
        // Do something here, such as updating the existing row
    } else {
           // echo "row not  existed";
        // No matching row found in `adding-bed-details1`
        // Insert the data into the `adding-bed-details1` table
    
        

// $insert_sql = "INSERT INTO `adding-bed-details1`(`building_name`, `manager_email`, `manager_mobile`, `tenant_name`, `tenant_email`, `tenant_mobile`, `joining_date`, `floor_no`, `room_no`, `no_of_persons_sharing_per_room`, `bed_no`, `amount`, `paid_amount`, `due`, `Available`) VALUES ('$building_name', '$manager_email', '', '', '', '', '', '$floor_no', '$room_no', '$no_of_persons_sharing_per_room', '$bed_no', '$fee', '', '', 'Yes')";

$insert_sql= "insert into `adding-bed-details1`  (id,building_name, manager_email, manager_mobile, tenant_name, tenant_email, tenant_mobile, joining_date, floor_no, room_no, no_of_persons_sharing_per_room, bed_no, amount, paid_amount, due, Available) 
VALUES ('','$building_name', '$manager_email', '$manager_mobile', '$tenant_name', '$tenant_email', '$tenant_mobile', '$joining_date', '$floor_no', '$room_no', '$no_of_persons_sharing_per_room', '$bed_no', '$amount', '$paid_amount', '$due', '$Available')";
  $insert_result = mysqli_query($conn, $insert_sql);
  
  if ($insert_result) {
    // If record inserted successfully, return success message
    $response = array("status" => "success", "message" => "Record inserted successfully.");
  } else {
    // If record insertion failed, return error message
    $response = array("status" => "error", "message" => "Record insertion failed.");
  }

    }


// Close database connection
mysqli_close($conn);

// Return response as JSON
echo json_encode($response);
    
?>