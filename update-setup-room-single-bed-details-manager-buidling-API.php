<?php

            
    header('Access-Control-Allow-Origin:*');  
    header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
     header('Content-Type: application/json');



include("config.php");




$EncodedData = file_get_contents('php://input');
$DecodedData = json_decode($EncodedData, true);

$id = $DecodedData['id'];

// Check if all fields are not empty
if (empty($DecodedData['floor_no']) || empty($DecodedData['room_no']) || empty($DecodedData['bed_no']) || empty($DecodedData['no_of_persons_sharing_per_room']) || empty($DecodedData['fee'])) {
    $response = array("status" => 0, "message" => "All fields are required");
} else {
    // All fields have values, execute SQL update query
    $sql = "UPDATE `setup_rooms_under_building` SET `floor_no`=?, `room_no`=?, `bed_no`=?, `no_of_persons_sharing_per_room`=?, `fee`=? WHERE `id`=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('iiiiii', $DecodedData['floor_no'], $DecodedData['room_no'], $DecodedData['bed_no'], $DecodedData['no_of_persons_sharing_per_room'], $DecodedData['fee'], $id);

    if ($stmt->execute()) {
        $response = array("status" => 1, "message" => "Room updated successfully");
    } else {
        $response = array("status" => 0, "message" => "Failed to update room");
    }
}

echo json_encode($response);

?>
