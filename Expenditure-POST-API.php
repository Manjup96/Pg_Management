<?php

include("config.php");

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE');
header('Content-Type: application/json');

$EncodedData = file_get_contents('php://input');
$DecodedData = json_decode($EncodedData, true);
//  'razorpay_signature', 'razorpay_order_id',
$requiredParams = array( 'building_name', 'manager_email',  'date', 'type', 'expenditure_amount');

$Message="";
$missingParams = array();

foreach ($requiredParams as $param) {
    if (!isset($DecodedData[$param])) {
        array_push($missingParams, $param);
    }
}

if (!empty($missingParams)) {
    $Message = array("response" => "error", "status" => 0, "message" => "Required parameters are missing: " . implode(', ', $missingParams));
    $Response = array("Message" => $Message);
    echo json_encode($Response);
} else {

   
    $building_name = $DecodedData['building_name'];
    $manager_email = $DecodedData['manager_email'];
    
    $date = $DecodedData['date'];
    $type = $DecodedData['type'];
   
    $expenditure_amount = $DecodedData['expenditure_amount'];
    //$comments = $DecodedData['comments'];
    $comments = "";
    $sql = "INSERT INTO `accounts` (`building_name`, `manager_email`, `date`, `type`, `expenditure_amount`, `balance`, `comments`) VALUES ('$building_name', '$manager_email', '$date', '$type',  '$expenditure_amount', '', '$comments')";

    if ($conn->query($sql) === TRUE) {
        $Message = array("response" => "success", "status" => 1, "message" => "Expenditure Added successfully");
    } else {
        $Message = array("response" => "error", "status" => 0, "message" => "Expenditure NOT Added ");
    }

    $Response = array("Message" => $Message);
    echo json_encode($Response);
}

?>
