<?php


            
   header('Access-Control-Allow-Origin: *');  
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE');
header('Content-Type: application/json');

// include config file
include_once("config.php");

$EncodedData = file_get_contents('php://input');
$DecodedData = json_decode($EncodedData, true);

if(isset($DecodedData['manager_email']) && isset($DecodedData['building_name']) && isset($DecodedData['date'])) {
  $manager_email = $DecodedData['manager_email'];
  $building_name = $DecodedData['building_name'];
  $date = $DecodedData['date'];

  $bed_detailsGETQuery = "SELECT 
              SUM(CASE WHEN breakfast = 'yes' THEN 1 ELSE 0 END) AS breakfast_yes_count,
              SUM(CASE WHEN breakfast = 'no' THEN 1 ELSE 0 END) AS breakfast_no_count,
              SUM(CASE WHEN lunch = 'yes' THEN 1 ELSE 0 END) AS lunch_yes_count,
              SUM(CASE WHEN lunch = 'no' THEN 1 ELSE 0 END) AS lunch_no_count,
              SUM(CASE WHEN dinner = 'yes' THEN 1 ELSE 0 END) AS dinner_yes_count,
              SUM(CASE WHEN dinner = 'no' THEN 1 ELSE 0 END) AS dinner_no_count
          FROM meals 
          WHERE manager_email='$manager_email' AND building_name='$building_name' AND date='$date'";
//echo $bed_detailsGETQuery;
  $run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);

  $result = mysqli_fetch_all($run_bedsDetailsGETQuery, MYSQLI_ASSOC);

  if($result) {
    http_response_code(200); // Set the HTTP response status code to 200
    echo json_encode($result);
  } else {
    http_response_code(404); // Set the HTTP response status code to 404 if query result is empty
    exit(json_encode(array("message" => "No data found")));
  }
} else {
  http_response_code(400); // Set the HTTP response status code to 400 if input parameters are not set
  exit(json_encode(array("message" => "Invalid input parameters")));
}
?>