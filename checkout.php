<?php
include('conn.php');
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
        <div class="bar-header">
            <div>
               <a href="gentro.php"> <img class="logo" src="static/img/gentronics.png"></img> </a>
            </div>
        </div>
           
        <div id='product-list' >
	      <h3>Your Basket </h3>		
          <div id='basketList' > </div>
          
          <h3>Shipping Addres </h3>		
          <div id='shipaddress' >
			  <div class='error_pane' style="display: none;">
			     
			  </div>
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
				   <td> <select required> 
					       <option value='metro manila' required title="Please Select Delivery Province " aria-required=true> metro manila</option>
				        </select>
				   </td>
				 </tr>
				 <tr>
				   <th>City</th>
				   <td>
				       <select   required title="Please Select Delivery City" aria-required=true > 
					       <option value='metro manila'>Caloocan</option>
				        </select>
				   </td>
				 </tr>
				 <tr>
				   <th>Zip Code</th>
				   <td> <input  required minlength='4' number="true" maxlength='4' name='txtzip' type='text' value='' title="Please Enter a valid ZipCode"></td>
				 </tr>
				 </table>
            </div>
          <h3>Payment Info</h3>		
          <div id='payment' > 
                        <p> Lorem Ipsum </p>
                        <p> Lorem Ipsum </p>
                        <p> Lorem Ipsum </p>
                        <p> Lorem Ipsum </p>
          </div>
          
          <div id='payment' > 
                        
           <i> I Agree to Term and Consition <input name='chkagree' type='checkbox'></i> <input name='chkagree' value='Confirm Order' type='submit'>
          </div>

          
        </div>
        </form>
    </div>
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
         
         tblBasket += "<tr>";
         tblBasket += "<td bgcolor='white'>"+sku+"</td>";
         tblBasket += "<td bgcolor='white'>"+product+"</td>";
         tblBasket += "<td bgcolor='white'><input onclick='alert()' onchange='alert(\'change\')' name='qty-"+sku+"' value='"+qty+"' type='number' min='1' max='50'> <a href='javascript:remove("+prop+")'  >Remove </a></td>";
         tblBasket += "<td bgcolor='white' align='right'>"+price.toFixed(2)+"</td>";
         tblBasket += "<td bgcolor='white' align='right'>"+amt.toFixed(2)+"</td>";
         tblBasket += "</tr>";
         
          
       }
        tblBasket += "<tr>";
        tblBasket += "<td bgcolor='white' colspan='4' align='right'> Total </td>";
        tblBasket += "<td bgcolor='white'>"+total.toFixed(2)+"</td>";
        tblBasket += "</tr>"
       
       tblBasket += "</table>";
       $("#basketList").html(tblBasket);

   } else {
      $("#basketList").html("Your basket is Empty <a href='gentro.php'>Continue Shopping</a>");
   }
   
   function remove(i){
	  console.log("before:"+basket); 
	  var basket = JSON.parse($.cookie("basket"));
	  basket.splice(i, 1);
	  $.cookie("basket",JSON.stringify(basket));
	  console.log("after:"+basket);
	  window.location.href =  window.location.href;
	  }
  </script>   
  
</body>
