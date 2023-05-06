
 
 <?php


            
    header('Access-Control-Allow-Origin:*');  
    header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
     header('Content-Type: application/json');

// include config file
include_once("config.php");
// session_start();


$EncodedData = file_get_contents('php://input');
$DecodedData = json_decode($EncodedData, true);

if(isset($DecodedData['manager_email']) && isset($DecodedData['building_name']) ) {
  $manager_email = $DecodedData['manager_email'];
  $building_name = $DecodedData['building_name'];
 

          

$total_no_of_beds=0;

$sql = "SELECT  COUNT(bed_no) as count from `adding-bed-details1`
WHERE manager_email='$manager_email' AND building_name='$building_name'";


$result = mysqli_query($conn,$sql);


while($row = mysqli_fetch_array($result))
{
    $count=$row['count'];
    while($count>0)
    {
        $total_no_of_beds += 1;
        $count--;
    }
}


 


$Response[]=array("Total Beds"=>$total_no_of_beds);

    echo json_encode($Response);

} 
else {
    // if the required parameters are missing, return an error message
    $response['status'] = 400;
    $response['message'] = "One or more required parameters are missing";
    echo json_encode($response);
}
?>    
    

