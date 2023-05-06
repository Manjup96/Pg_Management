
<?php            
header('Access-Control-Allow-Origin:*');  
header('Access-Control-Allow-Headers:*');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
 header('Content-Type: application/json');

// include config file
include_once("config.php");
// session_start();



$data = json_decode(file_get_contents("php://input"), true);

$id = $data['id'];
$tenant_name = $data['tenant_name'];
$tenant_email = $data['tenant_email'];
$tenant_mobile = $data['tenant_mobile'];
$tenant_address = $data['tenant_address'];

$sql = "UPDATE `tenant_registration_manager_email` SET `tenant_name`='$tenant_name', `tenant_email`='$tenant_email', `tenant_mobile`='$tenant_mobile', `tenant_address`='$tenant_address' WHERE id=$id";

if ($conn->query($sql) === TRUE) 
{
   //$data['response'] = array("success" => "1", "msg" => "Registered Successfully");
   //$Message = array("response"=>"success","status"=> 1,"message"=>"Tenant Bed Deatils Updated succeesfully");
   
     $Message = array("response"=>"success","status"=> 1,"message"=>"Tenant Bed Deatils Updated succeesfully","id" => $id,"tenant_name" => "$tenant_name","tenant_email" => "$tenant_email","tenant_mobile" => "$tenant_mobile");
                    //  "manager_email" => "$manager_email","manager_mobile_no" => "$manager_mobile_no","building_name" => "$building_name",
                    //  "floor_no" => "$floor_no","room_no" => "$room_no","bed_no" => "$bed_no");
     
} 
else 
{
  //$data['response'] = array("success" => "0", "msg" => "Not Registered");
  $Message = array("response"=>"error","status"=> 0,"message"=>"Tenant Bed Deatils  Not Updated ");
  
 // echo $sql;
}


$Response[]=array("Message"=>$Message);
    echo json_encode($Response);
?>
