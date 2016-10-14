<?php


$host   ="localhost";
$user   = "solution_21";
$pass   = "datacable21";
$dbname = "solution_s21";


include('adodb/adodb.inc.php');

$conn  = &ADONewConnection('mysql');
 
$dbc = $conn->Connect($host,$user,$pass,$dbname);

?>