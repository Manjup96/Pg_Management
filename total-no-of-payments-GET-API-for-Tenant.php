<?php

header('Access-Control-Allow-Origin:*');  
header('Access-Control-Allow-Headers:*');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
header('Content-Type: application/json');

// include config file
include_once("config.php");
// session_start();

// get the JSON data from the request body
$jsonData = json_decode(file_get_contents('php://input'), true);

if(isset($jsonData['manager_email']) && isset($jsonData['building_name']) && isset($jsonData['tenant_mobile'])) {

    // extract the parameters from the JSON data
    $manager_email = $jsonData['manager_email'];
    $building_name = $jsonData['building_name'];
    $tenant_mobile = $jsonData['tenant_mobile'];

    $total_payments = 0;

    // construct the SQL query to fetch data from the database
    // $accountsQuery = "SELECT COUNT(*) as count FROM `accounts` 
    //                   WHERE manager_email = '$manager_email' 
    //                   AND building_name = '$building_name' 
    //                   AND tenant_mobile = '$tenant_mobile' 
    //                   AND income_amount > 0";
                      
                      
                $accountsQuery = "SELECT SUM(income_amount) as total_payments  FROM `accounts` 
                      WHERE manager_email = '$manager_email' 
                      AND building_name = '$building_name' 
                      AND tenant_mobile = '$tenant_mobile' 
                      AND income_amount > 0";
//echo $accountsQuery;
    $result = mysqli_query($conn, $accountsQuery);

    // while($row = mysqli_fetch_array($result)) {
    //     $count = $row['count'];
    //     while($count > 0) {
    //         $total_payments += 1;
    //         $count--;
    //     }
    // }
    
    $result = mysqli_query($conn, $accountsQuery);

    while($row = mysqli_fetch_array($result)) {
        $total_payments = $row['total_payments'];
    }


    $Response[] = array("Total Payments" => $total_payments);
    echo json_encode($Response);
} 
else {
    // if the required parameters are missing, return an error message
    $response['status'] = 400;
    $response['message'] = "One or more required parameters are missing";
    echo json_encode($response);
}
?>
