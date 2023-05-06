
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


    //$user_id=$_POST['viewid'];
 
    // $sql="SELECT * from tenant_registration_manager_email ORDER by id DESC";
    // $result=mysqli_query($conn,$sql);
    // $response=array();
    // while($row=mysqli_fetch_assoc($result)){
    //     $response=$row;
    // } 
   
   
   $bed_detailsGETQuery="SELECT * from tenant_registration_manager_email  WHERE id=$id ORDER by id DESC";


//$bed_detailsGETQuery="SELECT id,tenant_name,tenant_email,tenant_mobile,tenant_aadhar_number,tenant_address,comments,DATE_FORMAT(`joining_date`, '%d-%m-%Y') as joining_date from tenant_registration_manager_email  WHERE id=$id ORDER by id DESC";

//$bed_detailsGETQuery = "SELECT * FROM `news` ";  


    //$bed_detailsGETQuery = "SELECT * FROM `tenant_registration_without_image` ";
    
    //DATE_FORMAT($joining_date, "%M %d %Y")
    $run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);
    

    $result=mysqli_fetch_all($run_bedsDetailsGETQuery,MYSQLI_ASSOC);
    
   // if(mysqli_num_rows($result) > 0)
    if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0)
     {
            //echo json_encode($response);
            echo json_encode($result);
     }
     
else{
    $response['status']=200;
    $response['message']="Invalid or data not found";
    echo json_encode($response);
}

    
    
   // exit(json_encode($result));

?>