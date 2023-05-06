<?php
include("config.php");

header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:*');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['building_name']) && isset($_POST['manager_email']) && isset($_POST['manager_mobile']) && 
        isset($_POST['tenant_email']) && isset($_POST['tenant_mobile']) && isset($_POST['tenant_name']) &&
        isset($_POST['floor_no']) && isset($_POST['room_no']) && isset($_POST['bed_no']) && 
        isset($_POST['amount']) && isset($_POST['Available']) && isset($_POST['paid_amount']) &&
        isset($_POST['due']) && isset($_POST['no_of_persons_sharing_per_room'])) {
   
        // Perform the necessary actions on the data here
        

    

        $EncodedData = file_get_contents('php://input');
        $DecodedData = json_decode($EncodedData, true);

        $building_name = $DecodedData['building_name'];
        $manager_email = $DecodedData['manager_email'];
        $manager_mobile = $DecodedData['manager_mobile'];
        $tenant_email = $DecodedData['tenant_email'];
        $tenant_mobile = $DecodedData['tenant_mobile'];
        $tenant_name = $DecodedData['tenant_name'];
        $floor_no = $DecodedData['floor_no'];
        $room_no = $DecodedData['room_no'];
        $bed_no = $DecodedData['bed_no'];
        $amount = $DecodedData['amount'];
        $Available = $DecodedData['Available'];
        $paid_amount = $DecodedData['paid_amount'];
        $due = $DecodedData['due'];
        $no_of_persons_sharing_per_room=$DecodedData['no_of_persons_sharing_per_room'];
        date_default_timezone_set('Asia/Kolkata');
        $date1 = date("Y-m-d");
        $time1 = date("h:i:sa");

        $id = "";
        $joining_date = "";

        $sql = "UPDATE `adding-bed-details1`
                SET Available='$Available', tenant_name='$tenant_name', tenant_email='$tenant_email', tenant_mobile='$tenant_mobile',
                joining_date='$date1', paid_amount='$paid_amount', due='$due', building_name='$building_name',
                manager_email ='$manager_email', manager_mobile='$manager_mobile'
                WHERE floor_no = '$floor_no' AND room_no ='$room_no' AND bed_no ='$bed_no'
                AND no_of_persons_sharing_per_room = '$no_of_persons_sharing_per_room'";

        if ($conn->query($sql) === TRUE) {
            if ($Available === "no" || $Available === "No") {
                $Message = array("response" => "success", "status" => 1, "message" => "Successfully Assigned Bed to Tenant");
            } else {
                $Message = array("response" => "success", "status" => 1, "message" => "Bed Assigned to another Tenant");
            }
        } else {
            $Message = array("response" => "error", "status" => 0, "message" => "Bed Details Not Added");
        }

        $Response[] = array("Message" => $Message);
        echo json_encode($Response);
    }
    else {
        echo "Missing required fields";
    }
}
        
    else {
        echo "Duplicate request";
    }

?>