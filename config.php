

<?php


		
$host="localhost";
$username="u406176785_pg_mng_user";
$pass="Pt;VYa&ez2:";
$db="u406176785_pg_management";
		
		$conn=new mysqli($host,$username,$pass,$db);
		
		try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $username, $pass);
} catch (PDOException $e) {
    die("Error: " . $e->getMessage());
}
		
		if($conn->connect_error)
		{
			die("connection failed:" . $conn->connect_error);
		}
		?>