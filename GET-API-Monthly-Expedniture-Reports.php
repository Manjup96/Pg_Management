 
<?php


            
    header('Access-Control-Allow-Origin:*');  
    header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
     header('Content-Type: application/json');

// include config file
include_once("config.php");
// session_start();
extract($_POST);

if(isset($_POST['data'])){
    // echo $data;
}
    
//     $EncodedData=file_get_contents('php://input');
//     $DecodedData=json_decode($EncodedData,true);
//  //$id= $DecodedData['id'];
//  $data= $DecodedData['data'];
 
 
//   $manager_email= $DecodedData['manager_email'];
// $building_name= $DecodedData['building_name'];



    $str = explode("-", $data);
    // echo ''.$str[0];
// echo ''.$str[1];

    $month = $str[0];
    $year = $str[1];
    $manager_email= $str[3];
    $building_name= $str[2];
   

//     switch ($month)
//     {
//   case "January":
//     $month= "01";
//     //echo $month;
//     break;
//   case "February":
//     $month= "02";
//     break;
//   case "March":
//     $month= "03";
//     break;
//   case "April":
//     $month= "04";
//     break;
//   case  "May":
//     $month= "05";
//     break;
//   case  "June":
//     $month= "06";
//     break;

//   case    "July":
//     $month= "07";
//   case "August":
//     $month= "08";
//     break;
//   case "September":
//     $month= "09";
//     break;
//   case "October":
//     $month= "10";
//     break;
//   case  "November":
//     $month= "11";
//   case    "December":
//     $month= "12";

// }

    
   
//   $bed_detailsGETQuery= "SELECT id,date,type,expenditure_amount,comments FROM `accounts` 
//     where  MONTH(date)=$month and YEAR(date)=$year  and manager_email='$manager_email' and building_name='$building_name' and `income_amount`=0
//      order by DATE(date) desc";
     
     
    $bed_detailsGETQuery="SELECT id,date,type,tenant_mobile,month,year,comments, expenditure_amount FROM `accounts` 
                          where MONTHNAME(date)='$month' and YEAR(date)=$year and manager_email='$manager_email' and expenditure_amount!='0'
                          and building_name='$building_name'  order by DATE(date) desc";
                           
            
    
    $run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);
    

    $result=mysqli_fetch_all($run_bedsDetailsGETQuery,MYSQLI_ASSOC);
    
   // if(mysqli_num_rows($result) > 0)
    if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0)
     {
            //echo json_encode($response);
            echo json_encode($result);
     }
     
else{
    echo $bed_detailsGETQuery;
    $response['status']=200;
    $response['message']="Invalid or data not found";
    echo json_encode($response);
}

    
    
   // exit(json_encode($result));

?>
 
 
 
 
 
  