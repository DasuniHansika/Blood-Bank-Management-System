<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "blood_bank";

// Database connection
$connection = new mysqli($servername, $username, $password, $database);


if($connection->connect_error){
    
    die("Connection Failed  ");
}else{
   //echo'Connection ok';
}
?>
