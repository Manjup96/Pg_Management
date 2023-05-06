<?php


            
    header('Access-Control-Allow-Origin:*');  
    header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
     header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    exit(0);
}
// include config file
include_once("config.php");
// session_start();


  $EncodedData=file_get_contents('php://input');
    $DecodedData=json_decode($EncodedData,true);
 $manager_email= $DecodedData['manager_email'];
$building_name= $DecodedData['building_name'];


 
 
    
//  $bed_detailsGETQuery = " SELECT * FROM `setup_rooms_under_building`
//  where manager_email='$manager_email' and building_name='$building_name' ORDER by id ASC ";
 
 $bed_detailsGETQuery = " SELECT * FROM `setup_rooms_under_building`
WHERE manager_email='$manager_email' AND building_name='$building_name' 
ORDER BY floor_no, room_no, bed_no ASC";




    $run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);
    

    $result=mysqli_fetch_all($run_bedsDetailsGETQuery,MYSQLI_ASSOC);
    
 if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0)
      {
             echo json_encode($result);
             
       $Message = array("response"=>"success","status"=> 1,"message"=>"Data Found");
     
} 
else 
{
  //$data['response'] = array("success" => "0", "msg" => "Not Registered");
  $Message = array("response"=>"error","status"=> 0,"message"=>"No Data Found");
    
    //  echo $bed_detailsGETQuery;
    }
   // exit(json_encode($result));

?>
    
    