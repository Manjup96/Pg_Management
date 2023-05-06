
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
$building_name= $DecodedData['building_name'];






$bed_detailsGETQuery = "
SELECT 
  DATE_FORMAT(date, '%M') as `Month`, 
  DATE_FORMAT(date, '%Y') as Year, 
  sum(expenditure_amount) as Expenditure
FROM accounts 
WHERE manager_email = '$manager_email' AND building_name = '$building_name' 
GROUP BY   DATE_FORMAT(date, '%M-%Y')
HAVING Expenditure <> 0
ORDER BY year DESC, MONTH(date) desc";


$run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);


$result=mysqli_fetch_all($run_bedsDetailsGETQuery,MYSQLI_ASSOC);

// if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0)
//  {
//         echo json_encode($result);
//  }


exit(json_encode($result));

?>