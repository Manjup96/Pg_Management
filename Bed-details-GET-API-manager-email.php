<?php
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:*');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
header('Content-Type: application/json');

// include config file
include_once("config.php");

$EncodedData = file_get_contents('php://input');
$DecodedData = json_decode($EncodedData, true);

$manager_email = $DecodedData['manager_email'];
$building_name = $DecodedData['building_name'];

//$bed_detailsGETQuery = "SELECT * FROM `adding-bed-details1` WHERE manager_email='$manager_email' 
//AND building_name='$building_name' ORDER BY id DESC";


 $bed_detailsGETQuery = " SELECT * FROM `adding-bed-details1`
WHERE manager_email='$manager_email' AND building_name='$building_name' 
ORDER BY floor_no, room_no, bed_no ASC";



$run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);

$result = mysqli_fetch_all($run_bedsDetailsGETQuery, MYSQLI_ASSOC);

if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0) {
    echo json_encode($result);
} else {
    $Message = array("response" => "error", "status" => 0, "message" => "No Data Found");
    echo json_encode($Message);
}
?>
