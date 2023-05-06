<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE');
header('Content-Type: application/json');

// include config file
include_once("config.php");

// Get the request data
$requestData = json_decode(file_get_contents('php://input'), true);

// Get the ID from the request data
$id = $requestData['id'];

// Initialize the response data
$Message = array();
$count=0;
try {
  // Query to select the row with the specified ID
  $stmt = $conn->prepare("SELECT * FROM setup_rooms_under_building WHERE id = ?");
  $stmt->bind_param("i", $id);
  $stmt->execute();

  // Retrieve the result
  $result = $stmt->get_result();

  // Check if any rows were returned
  if ($result->num_rows > 0) {
    // Retrieve the row data and display it
    $row = $result->fetch_assoc();
    $floor_no = $row["floor_no"];
    $room_no = $row["room_no"];
    $bed_no = $row["bed_no"];
    //$fee = $row["fee"];
    $building_name = $row["building_name"];
    $manager_email = $row["manager_email"];
    
    //echo $manager_email,$building_name;

    // Query to select the row with the specified values
    $stmt = $conn->prepare("SELECT * FROM `adding-bed-details1` WHERE `floor_no` = ? AND `room_no` = ? AND `bed_no` = ? AND `building_name` = ? AND `manager_email` = ?");
    $stmt->bind_param("sssss", $floor_no, $room_no, $bed_no, $building_name, $manager_email);
    $stmt->execute();
    
    // Retrieve the result
    $result = $stmt->get_result();
    $count=$result->num_rows;
    //echo $count;
    // Check if any rows were returned
    if ($result->num_rows > 0) {
      $row = $result->fetch_assoc();

      if ($row["Available"] == "Yes") {
        // Available is Yes, so delete the row
        $stmt = $conn->prepare("DELETE FROM `setup_rooms_under_building` WHERE id = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();

        $stmt = $conn->prepare("DELETE FROM `adding-bed-details1` WHERE `floor_no` = ? AND `room_no` = ? AND `bed_no` = ? AND `building_name` = ? AND `manager_email` = ?");
        $stmt->bind_param("sssss", $floor_no, $room_no, $bed_no, $building_name, $manager_email);
        $stmt->execute();

        $Message["success"] = true;
        $Message["message"] = "Record deleted successfully";
      } else {
        // Available is No, so display error message
        $tenant_name = $row["tenant_name"];
        $tenant_mobile = $row["tenant_mobile"];
        $Message["success"] = false;
        $Message["message"] = "In PG - $building_name, Bed is allocated to Tenant $tenant_name with mobile number $tenant_mobile and cannot be deleted.";
      }
    } 
    
else {
      // No rows were returned, display error message
      $Message["success"] = false;
      $Message["message"] = "No rows found in SETUP ROOMS table with such $id.";
    }
  }
  else {
    // No rows were returned, display error message
    $Message["success"] = false;
    $Message["message"] = "No rooms by row count selct with fllor found.";
    
  }
} catch (Exception $e) {
  // Error occurred, display error message
  $Message["success"] = false;
  $Message["message"] = "Error: " . $e->getMessage();
}

// Convert the response data to JSON format
$jsonResponse = json_encode($Message);

// Output the JSON response
echo $jsonResponse;

// Close the database connection
mysqli_close($conn);
?>




