<?php
header('Access-Control-Allow-Origin:*');  
    header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
     header('Content-Type: application/json');

include("config.php");





    
    $EncodedData=file_get_contents('php://input');
    $DecodedData=json_decode($EncodedData,true);
    
    
		 $sql = "DELETE  from `setup_rooms_under_building`   ";
        		
        if ($conn->query($sql) === TRUE) 
        {
           //$data['response'] = array("success" => "1", "msg" => "Registered Successfully");
           $Message = array("response"=>"success","status"=> 1,"message"=>"Setup Room Deatils Deleted Succeesfully");
             
        } 
        else 
        {
          //$data['response'] = array("success" => "0", "msg" => "Not Registered");
          $Message = array("response"=>"error","status"=> 0,"message"=>"Setup Room Deatils Not Deleted");
          
          echo $sql;
        }
        
        
        $Response[]=array("Message"=>$Message);
            echo json_encode($Response);
?>
