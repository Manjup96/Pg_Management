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

// Get the updated data from the request data
$floor_no = $requestData['floor_no'];
$room_no = $requestData['room_no'];
$bed_no = $requestData['bed_no'];
$fee=  $requestData['fee'];
$no_of_persons_sharing_per_room =  $requestData['no_of_persons_sharing_per_room'];


// Initialize the response data
$Message = array();

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
    $old_floor_no = $row["floor_no"];
    $old_room_no = $row["room_no"];
    $old_bed_no = $row["bed_no"];
    $old_fee = $row["fee"];
$old_no_of_persons_sharing_per_room =$row["no_of_persons_sharing_per_room"];
    // Query to select the row with the specified values
    $stmt = $conn->prepare("SELECT * FROM `adding-bed-details1` WHERE `floor_no` = ? AND `room_no` = ? AND `bed_no` = ? AND `amount` = ?
    AND `no_of_persons_sharing_per_room` = ?");
    $stmt->bind_param("sssss", $old_floor_no, $old_room_no, $old_bed_no,$old_fee,$old_no_of_persons_sharing_per_room);
    $stmt->execute();

    // Retrieve the result
    $result = $stmt->get_result();

    // Check if any rows were returned
    if ($result->num_rows > 0) {
      $row = $result->fetch_assoc();

      
      
        $stmt = $conn->prepare("UPDATE setup_rooms_under_building SET floor_no = ?, room_no = ?, bed_no = ? , fee = ?  ,no_of_persons_sharing_per_room= ? WHERE id = ?");
        $stmt->bind_param("sssssi", $floor_no, $room_no, $bed_no,$fee, $no_of_persons_sharing_per_room,$id);
        $stmt->execute();

        $stmt = $conn->prepare("UPDATE `adding-bed-details1` SET floor_no = ?, room_no = ?, bed_no = ?, amount = ? ,
        no_of_persons_sharing_per_room = ?
        WHERE `floor_no` = ? AND `room_no` = ? AND `bed_no` = ? AND `amount` = ? AND `no_of_persons_sharing_per_room`= ? ");
        $stmt->bind_param("ssssssssss", $floor_no, $room_no, $bed_no, $fee,$no_of_persons_sharing_per_room,$old_floor_no, $old_room_no, $old_bed_no,$old_fee,$old_no_of_persons_sharing_per_room);
        $stmt->execute();

        $Message["success"] = true;
        $Message["message"] = "$floor_no, $room_no, $bed_no,$fee,$no_of_persons_sharing_per_room Bed Details updated successfully ";
      } else {
        
        $Message["success"] = false;
        $Message["message"] = "No rooms found";
      }
    
} else {
// No rows were returned, display error message
$Message["success"] = false;
$Message["message"] = "No rooms found.";
}
}

 catch (Exception $e) {
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
