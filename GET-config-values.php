<?php

//INSERT INTO `config`(`id`, `host`, `username`, `password`, `database1`) VALUES ('','localhost','u406176785_pg_mng_user','Pt;VYa&ez2:','u406176785_pg_management')
            
    header('Access-Control-Allow-Origin:*');  
    header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Allow-Methods:GET,PUT,POST,DELETE');
     header('Content-Type: application/json');

// include config file
include_once("config.php");
// session_start();



    $bed_detailsGETQuery = "SELECT * FROM `config`";
    $run_bedsDetailsGETQuery = mysqli_query($conn, $bed_detailsGETQuery);
    

    $result=mysqli_fetch_all($run_bedsDetailsGETQuery,MYSQLI_ASSOC);
    
    // if(mysqli_num_rows($run_bedsDetailsGETQuery) > 0)
    //  {
    //         echo json_encode($result);
    //  }
    
    
    exit(json_encode($result));

?>
    