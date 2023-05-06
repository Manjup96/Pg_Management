<?php

include("config.php");
//$result=false;

//$data = array();
        
        
    header('Access-Control-Allow-Origin:*');  
    header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
     header('Content-Type: application/json');

    
    $EncodedData=file_get_contents('php://input');
    $DecodedData=json_decode($EncodedData,true);
    
    $building_name=$DecodedData['building_name'];
    	$manager_email=$DecodedData['manager_email'];
    	$manager_mobile=$DecodedData['manager_mobile'];
    	$tenant_email=$DecodedData['tenant_email'];
    	$tenant_mobile=$DecodedData['tenant_mobile'];
    		
    		$tenant_name=$DecodedData['tenant_name'];
    		
    $floor_no=$DecodedData['floor_no'];
    $room_no=$DecodedData['room_no'];
   $no_of_persons_sharing_per_room=$DecodedData['no_of_persons_sharing_per_room'];
    $bed_no=$DecodedData['bed_no'];
    $amount=$DecodedData['amount'];
    $Available=$DecodedData['Available'];
    
    $paid_amount=$DecodedData['paid_amount'];
    $due=$DecodedData['due'];
   // $joining_date=$DecodedData['joining_date'];
       

date_default_timezone_set('Asia/Kolkata');
$date1 =  date("Y-m-d");
$time1 = date("h:i:sa");

    
$id="";
$joining_date="";
    
    
   $sql = "insert into `adding-bed-details1`  (id,building_name, manager_email, manager_mobile, tenant_name, tenant_email, tenant_mobile, joining_date, floor_no, room_no, no_of_persons_sharing_per_room, bed_no, amount, paid_amount, due, Available) 
VALUES ('','$building_name', '$manager_email', '$manager_mobile', '$tenant_name', '$tenant_email', '$tenant_mobile', '$joining_date', '$floor_no', '$room_no', '$no_of_persons_sharing_per_room', '$bed_no', '$amount', '$paid_amount', '$due', '$Available')";

    
// Check if all fields are not empty
if (!empty($floor_no) && !empty($room_no) && !empty($bed_no) && !empty($no_of_persons_sharing_per_room) && !empty($amount) && !empty($building_name) && !empty($manager_email)) {

    


if ($conn->query($sql) === TRUE) 
{
   
   $Message = array("response"=>"success","status"=> 1,"message"=>"BED Deatils Inserted succeesfully");
     
} 
else 
{
  
  $Message = array("response"=>"error","status"=> 0,"message"=>"BED Deatils  NOT Inserted ");
  
  echo $sql;
}

}
else 
{
  
  $Message = array("response"=>"error","status"=> 0,"message"=>"BED details like flooor,bed,room numbers and buidling name,fee are empty");
  
  echo $sql;
}
$Response[]=array("Message"=>$Message);
    echo json_encode($Response);

?>
