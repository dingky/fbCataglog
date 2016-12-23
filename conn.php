<?php

date_default_timezone_set("asia/manila");
include('adodb/adodb.inc.php');
$conn = ADONewConnection("mysql"); 
$conn->debug=0;
$host   ="localhost";
$user   = "gentroni_site";
$pass   = "gentroni_db";
$dbname = "gentro";;
$conn->PConnect($server, $user,$pass, $dbname);  
$conn->debug=1;
?>
