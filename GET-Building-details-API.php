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



$bed_detailsGETQuery = "SELECT building_name from buildings_under_pg_manager where manager_email='$manager_email' ";

//`building_name`, `manager_mobile_no`, `tenant_name`, `manager_email`,
//  $bed_detailsGETQuery = 
//  " SELECT id,tenant_name,tenant_mobile,complaint_description,complaint_type,resolve_date,comments,DATE_FORMAT(`created_date`, '%d-%m-%Y') as Date from complaints ORDER by   created_date DESC";
 
// $bed_detailsGETQuery = "SELECT * FROM tenant_registration_without_image ORDER BY id DESC";  


    //$bed_detailsGETQuery = "SELECT * FROM `tenant_registration_without_image` ";
    
    //DATE_FORMAT($joining_date, "%M %d %Y")
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
    
    