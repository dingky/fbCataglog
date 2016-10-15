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
    <script type="text/javascript" src="static/js/jquery.cookie.js"></script>


    <script src='static/js/jAlert.js'></script>
    <script src='static/js/jAlert-functions.js'></script>
    
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
  
  function msgUs(sku){
    FB.ui({
          method: 'send',
	  display: 'page',
	  to :'167758130339013',
	  message:'Test' + $("#img"+sku).attr('src'),
	  link: $("#img"+sku).attr('src')
	  });
  }
  
 
</script>
<body>
    <div class="wrapper">
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
            <form>
             <table cellpadding='5' cellspacing='1'> 
				 <tr>
				   <th>Fist name</th>
				   <td> <input name='txtfname' type='text' value=''></td>
				 </tr>
				 <tr>
				   <th>Last name</th>
				   <td> <input name='txtfname' type='text' value=''></td>
				 </tr>
				 <tr>
				   <th>Middle name</th>
				   <td><input name='txtfname' type='text' value=''> </td>
				 </tr>
				 <tr>
				   <th>Address</th>
				   <td> <textarea name='txtaddress'></textarea></td>
				 </tr>
				 <tr>
				   <th>province</th>
				   <td> <select> 
					       <option value='metro manila'> metro manila</option>
				        </select>
				   </td>
				 </tr>
				 <tr>
				   <th>City</th>
				   <td>
				       <select> 
					       <option value='metro manila'>Caloocan</option>
				        </select>
				   </td>
				 </tr>
				 <tr>
				   <th>Zip Code</th>
				   <td> <input name='txtzip' type='text' value=''></td>
				 </tr>
              </table>
               </form>
            </div>
          <h3>Payment Info</h3>		
          <div id='payment' > 
                        <p> Lorem Ipsum </p>
                        <p> Lorem Ipsum </p>
                        <p> Lorem Ipsum </p>
                        <p> Lorem Ipsum </p>
                        
                       
          
          </div>
          
          <div id='payment' > 
                        
           <i> I Agree to Term and Consition <input name='chkagree' type='checkbox'></i> <input name='chkagree' value='Confirm Order' type='button'>
          </div>

          
        </div>
    </div>
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
         tblBasket += "<td bgcolor='white'><input data-index='"+prop+"' name='qty-"+sku+"' value='"+qty+"' type='number' min='1' max='50'> <a href='#'>Remove </a></td>";
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
  </script>   
  
</body>
