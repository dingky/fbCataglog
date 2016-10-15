<?php


include('adodb/adodb.inc.php');
$conn = ADONewConnection("mysql"); 
$conn->debug=0;
$server   ="localhost";
$user   = "root";
$pass   = "";
$dbname = "gentro";
$conn->PConnect($server, $user,$pass, $dbname);  
?>
