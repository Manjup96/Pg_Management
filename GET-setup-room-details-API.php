<?php


            
    header('Access-Control-Allow-Origin:*');  
    header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
     header('Content-Type: application/json');

// include config file
include_once("config.php");
// session_start();


  $EncodedData=file_get_contents('php://input');
    $DecodedData=json_decode($EncodedData,true);
 $manager_email= $DecodedData['manager_email'];
$building_name= $DecodedData['building_name'];


 
 
    
 $bed_detailsGETQuery = " SELECT * FROM `setup_rooms_under_building`
 where manager_email='$manager_email' and building_name='$building_name' ORDER by id DESC ";
 
 



    $run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);
    

    $result=mysqli_fetch_all($run_bedsDetailsGETQuery,MYSQLI_ASSOC);
    
 if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0)
      {
             echo json_encode($result);
      }
    
    else
    {
       echo json_encode($result);
      //  echo $bed_detailsGETQuery;
    }
   // exit(json_encode($result));

?>
    
    