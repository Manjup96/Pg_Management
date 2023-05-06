<?php

header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:*');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
header('Content-Type: application/json');

// include config file
include_once("config.php");

// get the JSON data from the request body
$jsonData = json_decode(file_get_contents('php://input'), true);

// check if the required parameters are present
if(isset($jsonData['manager_email']) && isset($jsonData['building_name']) && isset($jsonData['tenant_mobile'])) {
    
    // extract the parameters from the JSON data
    $manager_email = $jsonData['manager_email'];
    $building_name = $jsonData['building_name'];
    $tenant_mobile = $jsonData['tenant_mobile'];
    
    // construct the SQL query to fetch data from the database
    $bed_detailsGETQuery = "SELECT * FROM `accounts` 
                            WHERE manager_email = '$manager_email' 
                            AND building_name = '$building_name'
                            AND tenant_mobile = '$tenant_mobile' 
                            ORDER BY id DESC";
    
    // execute the query and fetch the results
    $run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);
    
    if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0) {
        // if there is data matching the conditions, return it in JSON format
        $result = mysqli_fetch_all($run_bedsDetailsGETQuery, MYSQLI_ASSOC);
        echo json_encode($result);
    } 
    else {
        // if no data was found, return an error message
        $response['status'] = 404;
        $response['message'] = "No data found for the given parameters";
        $response['query'] = $bed_detailsGETQuery;
        echo json_encode($response);
    }
} 
else {
    // if the required parameters are missing, return an error message
    $response['status'] = 400;
    $response['message'] = "One or more required parameters are missing";
    echo json_encode($response);
}

?>
