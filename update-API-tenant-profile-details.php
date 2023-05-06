
<?php            
header('Access-Control-Allow-Origin:*');  
header('Access-Control-Allow-Headers:*');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
 header('Content-Type: application/json');

// include config file
include_once("config.php");
// session_start();
$Message;
$accounts_count = 0;
$adding_bed_details_count = 0;
$meals_count = 0;
$complaints_count = 0;

$data = json_decode(file_get_contents("php://input"), true);

$id = $data['id'];
$tenant_name = $data['tenant_name'];
$tenant_email = $data['tenant_email'];
$tenant_mobile = $data['tenant_mobile'];
$tenant_address = $data['tenant_address'];
//$old_tenant_name = $data['old_tenant_name'];
//$old_tenant_email = $data['old_tenant_email'];
$old_tenant_mobile = $data['old_tenant_mobile'];


$sql = "UPDATE `tenant_registration_manager_email` SET `tenant_name`='$tenant_name', `tenant_email`='$tenant_email', `tenant_mobile`='$tenant_mobile', `tenant_address`='$tenant_address' WHERE id=$id";

if ($conn->query($sql) === TRUE) 
{
   //$data['response'] = array("success" => "1", "msg" => "Registered Successfully");
   //$Message = array("response"=>"success","status"=> 1,"message"=>"Tenant Bed Deatils Updated succeesfully");
       // Query to check if record exists in accounts table
    $sql_accounts_check = "SELECT COUNT(*) AS count FROM `accounts`
                           WHERE  `tenant_mobile`='$old_tenant_mobile'";
    
    // Query to check if record exists in adding-bed-details1 table
    $sql_adding_bed_details_check = "SELECT COUNT(*) AS count FROM `adding-bed-details1`
                                     WHERE  `tenant_mobile`='$old_tenant_mobile'";
  


$sql_complaints_check = "SELECT COUNT(*) AS count FROM `complaints`
                         WHERE  `tenant_mobile`='$old_tenant_mobile'";

    // Query to check if record exists in meals table
    $sql_meals_check = "SELECT COUNT(*) AS count FROM `meals`
                        WHERE  `tenant_mobile`='$old_tenant_mobile'";
 
 
  // Check if record exists in accoungts table


$result_accounts_check = $conn->query($sql_accounts_check);
   
if ($result_accounts_check === false) {
    $accounts_count = 1;
} 
else {
     $row_accounts_check = $result_accounts_check->fetch_assoc();
    $row_count_accounts = $row_accounts_check['count'];




// Check if record exists in accounts table
if ($row_count_accounts > 0) {
    // Record exists in accounts table, execute the update query

    // Query for accounts table
    $sql_accounts = "UPDATE `accounts`
                     SET `tenant_name`='$tenant_name', `tenant_email`='$tenant_email', `tenant_mobile`='$tenant_mobile'
                     WHERE  `tenant_mobile`='$old_tenant_mobile'";



// echo $sql_accounts;
    // Execute the update query for accounts table
    if ($conn->query($sql_accounts) === TRUE) {
        $accounts_count = 1;
    } else {
       $accounts_count = 0;
    }
} else {
    $accounts_count = 1;
}
}




// Check if record exists in adding-bed-details1 table
$result_adding_bed_details_check = $conn->query($sql_adding_bed_details_check);
if ($result_adding_bed_details_check === false) {
    $adding_bed_details_count = 1;
} else {
    $row_adding_bed_details_check = $result_adding_bed_details_check->fetch_assoc();
    $row_count_adding_bed_details = $row_adding_bed_details_check['count'];

    if ($row_count_adding_bed_details > 0) {
        // Record exists in adding-bed-details1 table, execute the update query

        // Query for adding-bed-details1 table
        $sql_adding_bed_details = "UPDATE `adding-bed-details1`
                                   SET `tenant_name`='$tenant_name', `tenant_email`='$tenant_email', `tenant_mobile`='$tenant_mobile'
                                   WHERE  `tenant_mobile`='$old_tenant_mobile'";

// echo $sql_adding_bed_details;


        // Execute the update query for adding-bed-details1 table
        if ($conn->query($sql_adding_bed_details) === TRUE) {
            $adding_bed_details_count = 1;
        } else {
            $adding_bed_details_count = 0;
        }
    } else {
        $adding_bed_details_count = 1;
    }
}

// Check if record exists in meals table
$result_meals_check = $conn->query($sql_meals_check);
if ($result_meals_check === false) {
    $meals_count = 1;
} else {
    $row_meals_check = $result_meals_check->fetch_assoc();
    $row_count_meals = $row_meals_check['count'];

    if ($row_count_meals > 0) {
        // Record exists in meals table, execute the update query

        // Query for meals table
        $sql_meals = "UPDATE `meals`
                      SET `tenant_name`='$tenant_name', `tenant_mobile`='$tenant_mobile'
                      WHERE  `tenant_mobile`='$old_tenant_mobile'";
           
// echo $sql_meals;

        // Execute the update query for meals table
        if ($conn->query($sql_meals) === TRUE) {
            $meals_count = 1;
        } else {
            $meals_count = 0;
        }
    } else {
        $meals_count = 1;
    }
}

// Check if record exists in complaints table
$result_complaints_check = $conn->query($sql_complaints_check);
if ($result_complaints_check === false) {
    $complaints_count = 1;
} else {
    $row_complaints_check = $result_complaints_check->fetch_assoc();
    $row_count_complaints = $row_complaints_check['count'];

    // Check if record exists in complaints table
if ($row_count_complaints > 0) {
    // Record exists in complaints table, execute the update query

    // Query for complaints table
    $sql_complaints = "UPDATE `complaints`
                       SET `tenant_name`='$tenant_name', `tenant_email`='$tenant_email', `tenant_mobile`='$tenant_mobile'
                       WHERE  `tenant_mobile`='$old_tenant_mobile'";
// echo $sql_complaints;
    // Execute the update query for complaints table
    if ($conn->query($sql_complaints) === TRUE) {
        $complaints_count = 1;
    } else {
    $complaints_count = 0;
    }
} else {
    $complaints_count = 1;
}

}



                       
  if ($accounts_count == 1 && $adding_bed_details_count == 1 && $meals_count == 1 && $complaints_count == 1) {
    
   $Message = array("response"=>"success","status"=> 1,"message"=>"Tenant Bed Deatils Updated succeesfully","id" => $id,"tenant_name" => "$tenant_name","tenant_email" => "$tenant_email","tenant_mobile" => "$tenant_mobile");
    
$Response[]=array("Message"=>$Message);
    echo json_encode($Response);
}

        else 
{
  //$data['response'] = array("success" => "0", "msg" => "Not Registered");
  $Message = array("response"=>"error","status"=> 0,"message"=>"Tenant Bed Deatils  Not Updated ");
  
$Response[]=array("Message"=>$Message);
    echo json_encode($Response);
 // echo $sql;
}
    
    //  $Message = array("response"=>"success","status"=> 1,"message"=>"Tenant Bed Deatils Updated succeesfully","id" => $id,"tenant_name" => "$tenant_name","tenant_email" => "$tenant_email","tenant_mobile" => "$tenant_mobile");
                    //  "manager_email" => "$manager_email","manager_mobile_no" => "$manager_mobile_no","building_name" => "$building_name",
                    //  "floor_no" => "$floor_no","room_no" => "$room_no","bed_no" => "$bed_no");
     
} 
else 
{
  //$data['response'] = array("success" => "0", "msg" => "Not Registered");
  $Message = array("response"=>"error","status"=> 0,"message"=>"Tenant Bed Deatils  Not Updated ");
  
$Response[]=array("Message"=>$Message);
    echo json_encode($Response);
 // echo $sql;
}


?>
