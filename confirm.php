<?php
session_start();
include('conn.php');
foreach($_REQUEST as $k=>$v){
	 $request[$k]=mysql_real_escape_string($v);
}
 
$fname = $request['txtfname'];
$lname = $request['txtlname'];
$email = $request['txtemail'];
$number = $request['txtnumber'];
$address = $request['txtaddress'];
$province= $request['selPro'];
$city    = utf8_decode($request['selCity']);
$zip     = $request['txtzip'];
$basket  = $request['basket'];
$gender  = $request['selGender'];
$total   = $request['total'];
$shipping   = $request['shipping'];
$tdate   = date("Y-m-d h:i:s");
$sql ="insert into orders set date='$tdate',
                             orderTotal ='$total',
                             shipping ='$shipping',
                             TotalDiscount=0,
                             lname='$lname',
                             fname='$fname',
                             mname='$mname',
                             contactNum='$number',
                             email='$email',
                             gender='$gender',
                             address='$address',
                             city='$city',
                             province='$province',
                             zip='$zip'";
                             
                       
  $basket= json_decode(stripslashes($basket));                           
if($basket){
	$rs = $conn->Execute($sql);
	$rsO = $conn->Execute("select max(id) as lastId from orders");
	$orderId = $rsO->fields['lastid'];
	foreach($basket as $k=>$v){
		//var_dump($v->sku);
		$pname    = mysql_real_escape_string(utf8_decode($v->product));
		$sku      = $v->sku;
		$qty      = $v->qty;
		$price    = $v->price; 
		$discount = 0;
		
		$sqlDtl="insert into ordersDtls set orderId='$orderId',
		                                    pname='$pname',
		                                    qty='$qty',
		                                    price='$price',
		                                    discount='$discount'
		                                    ";
		$conn->Execute($sqlDtl);
		}
	//unset($_REQUEST);
	//unset($_SESSION);
} else {
	 die("Something Went Wrong error:502");
}


?>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.cookie.js"></script>
    <script>
      $.cookie('basket', null);
      $.cookie('shipping', null);
      $.cookie('total', null);
    </script>
Thank for your Order<br>
Your Order id: <?=$rsO->fields['lastId']?>
