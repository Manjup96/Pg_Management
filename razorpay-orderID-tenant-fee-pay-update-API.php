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
$requiredParams = array('razorpay_payment_id', 'building_name', 'manager_email', 'tenant_name', 'tenant_email', 'tenant_mobile', 'date', 'type', 'month', 'year', 'income_amount');

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

    $razorpay_payment_id = $DecodedData['razorpay_payment_id'];
    // $razorpay_signature = $DecodedData['razorpay_signature'];
    // $razorpay_order_id = $DecodedData['razorpay_order_id'];
    $building_name = $DecodedData['building_name'];
    $manager_email = $DecodedData['manager_email'];
    $tenant_name = $DecodedData['tenant_name'];
    $tenant_email = $DecodedData['tenant_email'];
    $tenant_mobile = $DecodedData['tenant_mobile'];
    $date = $DecodedData['date'];
    $type = $DecodedData['type'];
    $month = $DecodedData['month'];
    $year = $DecodedData['year'];
    $income_amount = $DecodedData['income_amount'];
    $comments = $DecodedData['comments'];

    $sql = "INSERT INTO `accounts` (`building_name`, `manager_email`, `date`, `type`, `month`, `year`, `income_amount`, `balance`, `comments`, `tenant_name`, `tenant_email`, `tenant_mobile`, `razorpay_payment_id`, `razorpay_order_id`, `razorpay_signature`) VALUES ('$building_name', '$manager_email', '$date', '$type', '$month', '$year', '$income_amount', '', '$comments', '$tenant_name', '$tenant_email', '$tenant_mobile', '$razorpay_payment_id', 'test1', 'test2')";

    if ($conn->query($sql) === TRUE) {
        $Message = array("response" => "success", "status" => 1, "message" => "Razorpay details updated and payment done successfully");
    } else {
        $Message = array("response" => "error", "status" => 0, "message" => "Razorpay details & payment not updated successfully");
    }

    $Response = array("Message" => $Message);
    echo json_encode($Response);
}

?>
