<?php
session_start();
include('./includes/conn.php');
foreach($_REQUEST as $k=>$v){
	 $request[$k]=addslashes($v);
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
  	  $orderId = $rsO->fields['lastId'];
	
          $message="<table bgcolor='black' cellpadding='5' cellspacing='1'>";
          $message .="<tr>";
          $message .="<td bgcolor='white' colspan=4> order id: <b>$orderId</b></td>" ;
          $message .="</tr>";
          $message .="<tr>";
          $message .="<td bgcolor='#365899'> name</td> 
		     <td bgcolor='#365899'> qty</td> 
		     <td bgcolor='#365899'> price</td>
		     <td bgcolor='#365899'>amount</td>";
          $message .="</tr>";
          $total =0;
	  foreach($basket as $k=>$v){
		//var_dump($v->sku);
		$pname    =addslashes(utf8_decode($v->product));
		$sku      = $v->sku;
		$qty      = $v->qty;
		$price    = $v->price; 
		$discount = 0;
		$amount=$price * $qty;
                $total += $amount;
		
		$sqlDtl="insert into ordersDtls set orderId='$orderId',
		                                    pname='$pname',
		                                    qty='$qty',
		                                    price='$price',
		                                    discount='$discount'
		                                    ";
		                                    
		$message .="<tr>";
		$message .="<td bgcolor='white'> $pname</td> 
		            <td bgcolor='white'> $qty</td> 
		            <td bgcolor='white'> $price</td>
		            <td bgcolor='white'>$amount</td>";
		$message .="</tr>";
		$conn->Execute($sqlDtl);
		}
		$total = number_format($total,2,'.',",");
		$message .="<tr>";
		$message .="<td bgcolor='white' align='right' colspan=3><b> Total</b></td>
		            <td bgcolor='white'><b>$total</b></td>";
		$message .="</tr>";
		$message .= "<tr><td colspan='4' bgcolor='white'><p>We only accept Bank Deposits right now as we are still establishing our payment methods and payment gateways parnter with Paypal</p>  <br>
							<p>
							  Account Name: Reiniel Ronquillo<br>
							  BDO Bank: <b>000 44057 1421</b>
							</p>
							<br>
							<p>
							 Account Name: Dingky Duo Amurao <br>
							 Security Bank: <b>000 000 633 6989</b>
							</p>
							<br>
							<p>
							   <i>
							   * For Customer Confidence and protection in Shopping we will not accept pera padala / money remittances as these mode of payments are untraceable once there is a potential Scam. Please Pay us Through Bank Deposit Only
							   </i>
							</p>";
		$message .="</td></tr></table>";
	  
	  $headers[]= 'MIME-Version: 1.0';
    	  $headers[]= 'Content-type: text/html; charset=iso-8859-1';
      	  $headers[]= "To: $email";
          $headers[]= 'From: gentronics <orders@gentronics-m2c.com>';
   	  $headers[]= 'Bcc: dingkyduo.amurao@gmail.com';
   	  
   	  $subject = "Order confimation: ".$orderId;
	   mail($to, $subject, $message,implode("\r\n",$headers));
       } else {
	 //die("Something Went Wrong error:502");
       }


?>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.cookie.js"></script>
    <title>Gentronics</Title>
    <!-- START: CSS -->
    <link rel="stylesheet" href="static/css/style.css" type="text/css">
    <script>
     // $.cookie('basket', null);
      //$.cookie('shipping', null);
     // $.cookie('total', null);
    </script>
<body>
     <div class="wrapper">
        <div class="bar-search-combo">
            <div class="bar-search-box" style="font-size:20px;color:white!important">
				<center> 
               Thank for your Order!<br>
               Your Order id: <strong><?=$rsO->fields['lastId']?> </strong><br>
                <a  href="index.php"> View cataglog </a>
                <center> 
            </div>
        </div>
    </div>
</body>

