<?php
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:*');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
header('Content-Type: application/json');

// include config file
include_once("config.php");

 $bed_detailsGETQuery;

// extract($_POST); // Commenting out this line
$jsonData = json_decode(file_get_contents('php://input'), true);
if(isset($jsonData['data'])){
    $data = $jsonData['data'];
    // rest of the code
}

if(isset($data)){
    $str = explode("-", $data);
  //  $str = explode("-", $str);
    $month = $str[0];
    $year = $str[1];
    $manager_email= $str[3];
    $building_name= $str[2];

    // switch ($month) {
    //     case "January":
    //         $month= "01";
    //         break;
    //     case "February":
    //         $month= "02";
    //         break;
    //     case "March":
    //         $month= "03";
    //         break;
    //     case "April":
    //         $month= "04";
    //         break;
    //     case  "May":
    //         $month= "05";
    //         break;
    //     case  "June":
    //         $month= "06";
    //         break;
    //     case "July":
    //         $month= "07";
    //         break;
    //     case "August":
    //         $month= "08";
    //         break;
    //     case "September":
    //         $month= "09";
    //         break;
    //     case "October":
    //         $month= "10";
    //         break;
    //     case  "November":
    //         $month= "11";
    //         break;
    //     case "December":
    //         $month= "12";
    //         break;
    // }

    $bed_detailsGETQuery="SELECT id,date,type,tenant_mobile,month,year,comments, income_amount FROM `accounts` 
                          where MONTHNAME(date)='$month' and YEAR(date)=$year and manager_email='$manager_email' and income_amount!='0'
                          and building_name='$building_name'  order by DATE(date) desc";
                           
            
                           
                           
                           
   //echo $bed_detailsGETQuery;
    $run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);
    $result=mysqli_fetch_all($run_bedsDetailsGETQuery,MYSQLI_ASSOC);

    if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0) {
        echo json_encode($result);
    } 
    else {
        $response['status']=200;
        $response['message']="No data  found for Month - Year : $month - $year";
        $response['sql']=$bed_detailsGETQuery;
        echo json_encode($response);
        echo $bed_detailsGETQuery;
    }
}

else {
     $bed_detailsGETQuery="SELECT id,date,type,tenant_mobile,month,year,income_amount,comments FROM `accounts` 
                           where MONTH(date)=$month and YEAR(date)=$year and manager_email='$manager_email' 
                           and building_name='$building_name' order by DATE(date) desc";
     echo $bed_detailsGETQuery;                      
    $response['status']=200;
    $response['message']="Data parameter missing";
    echo json_encode($response);
}
?>
