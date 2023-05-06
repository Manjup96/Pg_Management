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

if(isset($jsonData['manager_email']) && isset($jsonData['building_name']) && isset($jsonData['tenant_mobile'])) {
  
    // extract the parameters from the JSON data
    $manager_email = $jsonData['manager_email'];
    $building_name = $jsonData['building_name'];
    $tenant_mobile = $jsonData['tenant_mobile'];

    // construct the SQL query to fetch data from the database
    $complaintsQuery = "SELECT COUNT(*) as count FROM `complaints` 
                        WHERE manager_email = '$manager_email' 
                        AND building_name = '$building_name' 
                        AND tenant_mobile = '$tenant_mobile' 
                        ORDER BY id DESC";

    $solvedComplaintsQuery = "SELECT COUNT(*) as count FROM `complaints` 
                              WHERE manager_email = '$manager_email' 
                              AND building_name = '$building_name' 
                              AND tenant_mobile = '$tenant_mobile' 
                              AND status = 'Solved' 
                              ORDER BY id DESC";

    $pendingComplaintsQuery = "SELECT COUNT(*) as count FROM `complaints` 
                               WHERE manager_email = '$manager_email' 
                               AND building_name = '$building_name' 
                               AND tenant_mobile = '$tenant_mobile' 
                               AND status = 'Pending' 
                               ORDER BY id DESC";
    
    // execute the query and fetch the results
    $complaintsResult = mysqli_query($conn, $complaintsQuery);
    $solvedComplaintsResult = mysqli_query($conn, $solvedComplaintsQuery);
    $pendingComplaintsResult = mysqli_query($conn, $pendingComplaintsQuery);

    $totalComplaints = 0;
    $solvedComplaints = 0;
    $pendingComplaints = 0;

    while($row = mysqli_fetch_array($complaintsResult)) {
        $totalComplaints = $row['count'];
    }

    while($row = mysqli_fetch_array($solvedComplaintsResult)) {
        $solvedComplaints = $row['count'];
    }

    while($row = mysqli_fetch_array($pendingComplaintsResult)) {
        $pendingComplaints = $row['count'];
    }

    $response = array(
        "Total Complaints" => $totalComplaints,
        "Solved Complaints" => $solvedComplaints,
        "Pending Complaints" => $pendingComplaints
    );

    echo json_encode($response);
} 
else {
    // if the required parameters are missing, return an error message
    $response['status'] = 400;
    $response['message'] = "One or more required parameters are missing";
    echo json_encode($response);
}
?>
