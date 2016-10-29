<?php
 
include('./includes/conn.php');
include('./includes/func.php');

foreach($_POST as $k=>$v){
	 $post[$k]=$v;
}

$sqlProvince = "select distinct province from provinces order by province asc";
$selectedPro = isset($post['selPro']) ?$post['selPro']:"metro manila";
$sqlCity = "select id,city,rate from provinces where province='".mysql_real_escape_string($selectedPro)."' order by city asc";

$rsPro = $conn->Execute($sqlProvince); 
$rsCity= $conn->Execute($sqlCity);
$curRate=$rsCity->fields['rate'];
 

?>


<!DOCTYPE html>
<head>
    <title>Gentronics</Title>
    <link rel="stylesheet" href="static/css/style.css" type="text/css">
    <link rel='stylesheet' href='static/css/jAlert.css'>
    <link rel="stylesheet" href="static/css/modal.css" type="text/css">
    <link rel="stylesheet" href="static/css/icomoon.css" type="text/css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   
</head>

<script>

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
   
   
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1074711305977720',
      xfbml      : true,
      version    : 'v2.8'
    });

     FB.getLoginStatus(function(response) {
        // console.log(response.status);
        if (!response.status === 'connected') {
         //FB.login(function(){}, {scope: 'publish_actions'});
        // console.log('login redirect');
        }
      }); 
  };
  
 	$(document).ready(function() {
		var container = $("#form1 div.error_pane");
	    $("#form1").validate({
			errorContainer: container,
			errorLabelContainer: $("ol", container)
		});

		$(".cancel").click(function() {
			validator.resetForm();
		});
	});
  
</script>
<body>
	
    <div class="wrapper">
	<form method="post"  id="form1" action="confirm.php">
    <!-- Header -->
       
        
        <div id='product-list'>
	      <h3 style='withd:100%;text-align:center'>Your Basket (<a href="gentro.php">View Shop</a>) </h3>		
          <div id='basketList' ></div> 
          <div class='ckBox'></div>         
       
          <div  class='ckBox'>
				 <div  class='fl addressPane'>
				  <!--Address Dtls -->
				   <h3>Shipping Addres </h3>
			       <div id='shipaddress'>
					  <table cellpadding='5' cellspacing='1'> 
					 <tr>
					   <th>Fist name</th>
					   <td> <input name='txtfname' id='fname'  type='text' value='' required title="Please Enter you First Name"   minlength="2"></td>
					 </tr>
					 <tr>
					   <th>Last name</th>
					   <td> <input name='txtlname'   type='text' value='' required title="Please Enter you last Name"   minlength="2"></td>
					 </tr>
					 <tr>
					   <th>Middle name</th>
					   <td><input name='txtfname' type='text' value=''> </td>
					 </tr>
					 <tr>
					   <th>Middle name</th>
					   <td>
						  <select name='selGender' id='selGender' required title="Please Select Your Gender " aria-required=true> 
								 <option   value='male'>Male</option>
								 <option <  value='female'>Female</option>
							</select>
					   </td>
					 </tr>
					 <tr>
					   <th>Email</th>
					   <td><input name='txtemail' type='text' value='' required title="Please Enter a valid email address"   email="true"> </td>
					 </tr>
					  <tr>
					   <th>Cellphone #:</th>
					   <td><input name='txtnumber' type='text' value='' maxlength='11' required title="Please Enter a valid cellphone" number=true  minlength="11"> </td>
					 </tr>
					 <tr>
					   <th>Address</th>
					   <td> <textarea name='txtaddress' required title="Please Enter your address"   minlength="2"></textarea></td>
					 </tr>
					 <tr>
					   <th>province</th>
					   <td> <select name='selPro' id='selPro' required title="Please Select Delivery Province " aria-required=true> 
							  
							   <?php
								 while(!$rsPro->EOF){
									 $selected = strtolower($rsPro->fields['province'])== strtolower($selectedPro) ? "selected='true'":"";
							   ?>
								 <option <?=$selected?> value='<?=$rsPro->fields['province']?>'><?=$rsPro->fields['province']?></option>
							   <?php
								  $rsPro->moveNext(); 	 
								 }
							   ?>
							</select>
					   </td>
					 </tr>
					 <tr>
					   <th>City</th>
					   <td>
						   <select  id='selCity' name='selCity' required title="Please Select Delivery City" aria-required=true > 
							   <?php
							   
								 while(!$rsCity->EOF){
							   ?>
								 <option value='<?=utf8_encode($rsCity->fields['city'])?>' alt='<?=$rsCity->fields['rate']?>' ><?=utf8_encode($rsCity->fields['city']) . " : " . $rsCity->fields['rate'] ?></option>
							   <?php
								  $rsCity->moveNext(); 	 
								 }
							   ?>
							</select>
					   </td>
					 </tr>
					 <tr>
					   <th>Zip Code</th>
					   <td> <input  required minlength='4' number="true" maxlength='4' name='txtzip' type='text' value='' title="Please Enter a valid ZipCode"></td>
					 </tr>
					 </table>       		
			       </div>		
				 
				 </div>
				 <div   class='fr paymentPane'>
					<!--payment Dtls --> 
				   <h3>Payment Info</h3>		
					  <div id='payment'> 
						<p>We only accept Bank Deposits right now as we are still establishing our payment methods and payment gateways parnter with Paypal</p>
						<ul>
							<li> Account Name: Reiniel Ronquillo </li>
							<li> BDO Bank: 000 44057 1421</li>
							<li></li>
						   <li>Account Name: Dingky Duo Amurao </li>
						   <li>Security Bank: 0000006336989 </li>
						</ul>
						<p><i>* For Customer Confidence and protection in Shopping we will not accept pera padala / money remittances as these mode of payments are untraceable once there is a potential Scam. Please Pay us Through Bank Deposit Only</i></p>

						<h4>Return policy:</h4>
						<ol>
							<li>Package must be complete</li>
							<li>Tags and Labels must be attached</li>
							<li>Product must be Defective and not damaged due to carelessness.</li>
							<li>Return/Exchange policy and Warranty is up to 2 weeks for Generic Products and 60 days for Branded products after delivery date. Please keep the couriers slip for reference</li>
							<li>Quality evaluation and qualification for Return/Exchange will be for 48 hours.</li>
							<li>if Found Defective within 90 days, customer must shoulder the return shipping fee and we will replace your item for a brand new one.</li>
						</ol>
						  <div class='price cl' style="width:100%!important">
						    <input  style="width:180px!important;background:red!important;font-weight:bold;font-size:16px;margin:5px;padding:5px"  value='Confirm Order' class="cart-qty" type='submit'>
						   <input name='chkagree' id='agree' title="Please accept out Policy" type='checkbox'  required>
						   <i> I Agree to Term and Consition </i>
						  
					     </div>
					  </div>
							 </div>
				 <div class='error_pane' style="display: none;"></div>
				 <div class="cl"></div>
            </div>
        </div>
        </form>
       
    </div>
    <br></br>
   <script type="text/javascript" src="static/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="static/js/jquery.validate.min.js"></script>
    <script src='static/js/jAlert.js'></script>
    <script src='static/js/jAlert-functions.js'></script>
    
    
  <script>   
	   if($.cookie("basket")){
       var totProd=0;totPrice=0;
       var basket = JSON.parse($.cookie("basket"));
       var tblBasket="";
       var total=0;
       
       
         tblBasket += "<table width='100%' bgcolor='black' cellpadding='5' cellspacing='1'>";
         tblBasket += "<tr  >";
         tblBasket += "<th bgcolor='365899'>SKU</th>";
         tblBasket += "<th bgcolor='365899'  >NAME</th>";
         tblBasket += "<th bgcolor='365899'>QTY</th>";
         tblBasket += "<th bgcolor='365899' width='10%'>PRICE</th>";
         tblBasket += "<th bgcolor='365899' width='10%'>AMOUNT</th>";
         tblBasket += "</tr>";
         
         
       for(var prop in basket){
         price= parseFloat(basket[prop].price);
         qty = parseInt(basket[prop].qty);
         sku =  basket[prop].sku;
         product = basket[prop].product;
         total += parseFloat (price * qty);
         amt = price * qty;
         Total = parseFloat('<?=$curRate?>') + parseFloat(amt);
         Total = Total.toFixed(2);
         
         tblBasket += "<tr>";
         tblBasket += "<td bgcolor='white'>"+sku+"</td>";
         tblBasket += "<td bgcolor='white'>"+product+"</td>";
         tblBasket += "<td bgcolor='white'><input class='qtyBox' onChange='updateQty("+prop+",this.value)' alt='"+prop+"' name='qty-"+sku+"' value='"+qty+"' type='number' min='1' max='50'> <a href='javascript:remove("+prop+")'  >Remove </a></td>";
         tblBasket += "<td bgcolor='white' align='right'>"+price.toFixed(2)+"</td>";
         tblBasket += "<td bgcolor='white' align='right'>"+amt.toFixed(2)+"</td>";
         tblBasket += "</tr>";
       }
       $.cookie("total",amt); 
       $.cookie("shipping",parseFloat('<?=$curRate?>').toFixed(2));
        tblBasket += "<tr>";
        tblBasket += "<td bgcolor='white' colspan='4' align='right'> Sub Total </td>";
        tblBasket += "<td bgcolor='white'>"+total.toFixed(2)+"</td>";
        tblBasket += "</tr>"
        tblBasket += "<tr>";
        tblBasket += "<td bgcolor='white' colspan='4' align='right'> Shipping Fee </td>";
        tblBasket += "<td bgcolor='white' id='shipmentPane'> <?php echo  number_format($curRate,2,'.',',') ?></td>";
        tblBasket += "</tr>"
        
        tblBasket += "<tr>";
        tblBasket += "<td bgcolor='white' colspan='4' align='right'> Total </td>";
        tblBasket += "<td bgcolor='white' id='totalPane'>"+Total+" </td>";
        tblBasket += "</tr>"
       
       tblBasket += "</table>";
       $("#basketList").html(tblBasket);

   } else {
      $("#basketList").html("Your basket is Empty <a href='gentro.php'>Continue Shopping</a>");
   }
   
   
   function remove(i){
	  var basket = JSON.parse($.cookie("basket"));
	  basket.splice(i, 1);
	  $.cookie("basket",JSON.stringify(basket));
	  window.location.href =  window.location.href;
	  }
	
	
	function updateQty(i,val){
	  var basket = JSON.parse($.cookie("basket"));
      var itm = basket[i];
      itm.qty = val;
      basket[i]  = itm;
	  $.cookie("basket",JSON.stringify(basket));
       window.location.href =  window.location.href;
	}  
	
	
	function update(i){
	  var basket = JSON.parse($.cookie("basket"));
	  basket[i].qty=$(".qtyBox").eq(i).val();
	  $.cookie("basket",JSON.stringify(basket));	
	}  
	
	$(".qtyBox").click(function(i){
		update($(this).attr("alt")) ;
	 });
	 
	$('#selCity').change(function(){
		var shipping = parseFloat($('#selCity option:selected').attr('alt'));
		var total = parseFloat($('#totalPane').html());
		total = parseFloat(total) + parseFloat(shipping);
		$('#totalPane').html(total.toFixed(2));
		$('#shipmentPane').html(shipping.toFixed(2));
		$.cookie("total",total.toFixed(2)); 
        $.cookie("shipping",shipping.toFixed(2));
		
	});
	$('#selPro').change(function(){
		   $.ajax({
			      url:  'ajax.php?pro='+$(this).val(),
			      method:'get',
			      dataType:'json' 
			}).done(function( data ) {
				  $("#selCity option").each(function(){
					 $(this).remove();  
				  });
				  var o="";
				  for(var prop in data){
					 console.log(data[prop]);
				     o +="<Option value='"+data[prop].city +"'>"+ data[prop].city +" ("+data[prop].rate+")</option>";
				  }
			      $("#selCity").html(o);
			});
	});
  
  </script>
</body>
