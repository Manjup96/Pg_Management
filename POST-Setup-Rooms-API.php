<?php

include("config.php");

  
     header('Access-Control-Allow-Origin:*');  
    //header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials: true');
    
     header('Content-Type: application/json');
     
     header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");

header('Access-Control-Allow-Headers: Origin, Content-Type, X-Requested-With, Authorization');



    $EncodedData=file_get_contents('php://input');
    $DecodedData=json_decode($EncodedData,true);
    
 
// First, retrieve the values of the parameters passed in the request
$floor_no = $DecodedData['floor_no'];
$room_no = $DecodedData['room_no'];
$bed_no = $DecodedData['bed_no'];
$no_of_persons_sharing_per_room = $DecodedData['no_of_persons_sharing_per_room'];
$fee = $DecodedData['fee'];
$building_name = $DecodedData['building_name'];
$manager_email = $DecodedData['manager_email'];


$id="";


// Check if all fields are not empty
if (!empty($floor_no) && !empty($room_no) && !empty($bed_no) && !empty($no_of_persons_sharing_per_room) && !empty($fee) && !empty($building_name) && !empty($manager_email))
{
  // All fields have values, execute SQL insert query
// Then, construct a SQL query to insert the values into the database
$sql = "INSERT INTO setup_rooms_under_building (id,floor_no, room_no, bed_no, no_of_persons_sharing_per_room, fee, building_name, manager_email ) VALUES ('', '$floor_no', '$room_no','$bed_no', '$no_of_persons_sharing_per_room','$fee','$building_name','$manager_email')";
    



if ($conn->query($sql) === TRUE) 
{
   //$data['response'] = array("success" => "1", "msg" => "Registered Successfully");
   $Message = array("response"=>"success","status"=> 1,"message"=>"Settings up Rooms Added succeesfully");
     
} 
else 
{
  //$data['response'] = array("success" => "0", "msg" => "Not Registered");
  $Message = array("response"=>"error","status"=> 0,"message"=>"Settings up Rooms Not Done");
  
  echo $sql;
}

}
$Response[]=array("Message"=>$Message);
    echo json_encode($Response);
?>
