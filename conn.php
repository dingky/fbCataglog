<?php


include('adodb/adodb.inc.php');
$conn = ADONewConnection("mysql"); 
$conn->debug=1;
$server   ="localhost";
$user   = "root";
$pass   = "";
$dbname = "gentro";
$conn->PConnect($server, $user,$pass, $dbname);  
?>
