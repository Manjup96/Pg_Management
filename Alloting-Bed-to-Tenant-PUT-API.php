<?php
include_once("config.php");

header('Access-Control-Allow-Origin: *');
//header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE');
header('Content-Type: application/json');


header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');

// Check if this is a preflight request
// if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
//     // Return a 200 OK status
//     http_response_code(200);
//     exit;
// }

// Get the request data
$data = json_decode(file_get_contents('php://input'), true);

// Check if the required fields are present
if (!isset($data['floor_no'], $data['room_no'], $data['bed_no'], $data['no_of_persons_sharing_per_room'], $data['building_name'], $data['manager_email'])) {
    http_response_code(400); // Bad Request
    exit('Missing required fields');
}

// $fee = $data['fee'];
// $amount = $data['fee'];


$building_name = $data['building_name'];
$manager_email = $data['manager_email'];
$manager_mobile = $data['manager_mobile'];
$tenant_email = $data['tenant_email'];
$tenant_mobile = $data['tenant_mobile'];
$tenant_name = $data['tenant_name'];
$floor_no = $data['floor_no'];
$room_no = $data['room_no'];
$no_of_persons_sharing_per_room = $data['no_of_persons_sharing_per_room'];
$bed_no = $data['bed_no'];
$amount = $data['amount'];
$Available = $data['Available'];
$paid_amount = $data['paid_amount'];
$due = $data['due'];

date_default_timezone_set('Asia/Kolkata');
$date1 = date("Y-m-d");
$time1 = date("h:i:sa");

$id = "";
$joining_date = "";

$sql = "UPDATE `adding-bed-details1`
        SET Available='$Available', tenant_name='$tenant_name', tenant_email='$tenant_email', tenant_mobile='$tenant_mobile',
        joining_date='$date1', paid_amount='$paid_amount', due='$due', building_name='$building_name',
        manager_email='$manager_email', manager_mobile='$manager_mobile'
        WHERE floor_no='$floor_no' AND room_no='$room_no' AND bed_no='$bed_no'
        AND no_of_persons_sharing_per_room='$no_of_persons_sharing_per_room'";

if ($conn->query($sql) === TRUE) 
    {
        $Message = array("response" => "success", "status" => 1, "message" => "Successfully Assigned Bed to Tenant");
    }
 else {
    $Message = array("response" => "error", "status" => 0, "message" => "Bed Details Not Added");
}

$Response[] = array("Message" => $Message);
echo json_encode($Response);
?>