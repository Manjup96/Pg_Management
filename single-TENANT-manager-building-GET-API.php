

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
 $id= $DecodedData['id'];


    $bed_detailsGETQuery = "SELECT * FROM `tenant_registration_manager_email` where id=$id";
    $run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);
    

    $result=mysqli_fetch_all($run_bedsDetailsGETQuery,MYSQLI_ASSOC);
    
    if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0)
      {
             echo json_encode($result);
      }
    
    else
    {
        echo $bed_detailsGETQuery;
    }
 // exit(json_encode($result));
?>
    