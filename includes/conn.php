<?php
date_default_timezone_set("asia/manila");
include('adodb/adodb.inc.php');
$conn = ADONewConnection("mysqli"); 
$conn->debug=0;
$host   ="localhost";
$user   = "gentroni_site";
$pass   = "usap1q2w";
$dbname = "gentroni_db";
$conn->PConnect($server, $user,$pass, $dbname);  
$conn->debug=0;
