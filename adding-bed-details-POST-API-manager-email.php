

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



$floor_no = $DecodedData['floor_no'];
$room_no = $DecodedData['room_no'];
$bed_no = $DecodedData['bed_no'];
$no_of_persons_sharing_per_room = $DecodedData['no_of_persons_sharing_per_room'];
$fee = $DecodedData['fee'];
$building_name = $DecodedData['building_name'];
$manager_email = $DecodedData['manager_email'];
$manager_mobile = $DecodedData['manager_mobile'];
    $amount=$DecodedData['amount'];
    
    



$sql = "INSERT INTO adding-bed-details1 (building_name, manager_email, manager_mobile, floor_no, room_no, bed_no, no_of_persons_sharing_per_room, amount, Available)
        VALUES ('$building_name', '$manager_email', '$manager_mobile', '$floor_no', '$room_no', '$bed_no', '$no_of_persons_sharing_per_room', '$fee', 'Yes')";

    
   

    $id="";
$sql = "insert into adding-bed-details (id,floor_no,room_no,no_of_persons_sharing_per_room,bed_no,amount,status) values
('$id','$floor_no','$room_no','$no_of_persons_sharing_per_room','$bed_no','$amount','$status')";



if ($conn->query($sql) === TRUE) 
{
   //$data['response'] = array("success" => "1", "msg" => "Registered Successfully");
   $Message = array("response"=>"success","status"=> 1,"message"=>"Bed Deatils Added succeesfully");
     
} 
else 
{
  //$data['response'] = array("success" => "0", "msg" => "Not Registered");
  $Message = array("response"=>"error","status"=> 0,"message"=>"Bed Deatils Not Added");
  
  echo $sql;
}


$Response[]=array("Message"=>$Message);
    echo json_encode($Response);
?>
