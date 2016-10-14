<?php
include('adodb/adodb.inc.php');
$conn = ADONewConnection("mysql"); 
//$conn->debug=1;
$server="localhost";
$username="solution_21";
$password="datacable21";
$dbName ="solution_s21";
$conn->PConnect($server, $username,$password, $dbName); 
$strSQL="select * from jos_vm_product where product_publish ='y' limit 0,9";
$rs=$conn->Execute($strSQL);
$path = "http://www.solutionsh21.com/components/com_virtuemart/shop_image/product/";
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
    <script type="text/javascript" src="static/js/search.js"></script>

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
  
  function addToCart(sku){
  
   if($.cookie("basket")){
     var itm = JSON.parse($.cookie("basket"));;
   } else {
     var itm = [];
   }
   var qty = $("#qty-"+sku).val();
   var price = $("#price-"+sku).text();
   itm.push({"sku":sku,"qty":qty,"price":price});
   $.cookie("basket",JSON.stringify(itm));
   basket =  JSON.parse($.cookie("basket"));
   getShortBasket();
   successAlert("<b>" + sku + " </b>  was Added to your cart");
  }
  
  function getShortBasket(){
  
   if($.cookie("basket")){
       var totProd=0;totPrice=0;
       var basket = JSON.parse($.cookie("basket"));
       for(var prop in basket){
         totPrice += parseInt(basket[prop].price);
         totProd += parseInt(basket[prop].qty);
       }
       console.log( totPrice + ' ' +  totProd);
       $("#cart-info").html(totProd+ " Item, Total of Php "+totPrice.toFixed(2));
   } else {
      $("#cart-info").html("");
   } 
  }
getShortBasket();
</script>
<body>
    <div class="wrapper">
    <!-- Header -->
        <div class="bar-header">
            <div>
                <img class="logo" src="static/img/gentronics.png"></img>
            </div>
            <div class="bar-cart">
                <!-- <a href="#Cart" class="cart-full"> -->
                <a href="#Cart">
                    <span id="cart-info"> <!--short basket dtls here --></span><span class="icon-cart"></span>
                </a>
            </div>
        </div>
        <!-- end of Header -->
        <!-- Search bar -->
        
        <div class="bar-search-combo">
            <div class="bar-search-box">
                <input class="bar-search-text-box" type="text" value=""></input>
                <!-- add hidden class="bar-search-filter hidden"-->
                <select id="filter-category" class="bar-search-filter">
                    <option>Select Category</option>
                    <option>Audio</option>
                    <option>Cables</option>
                    <option>Computer Accessories</option>
                </select>
                <select id="filter-sub-category" class="bar-search-filter">
                    <option>Select Sub-Category</option>
                    <option>Speakers</option>
                    <option>Earphone</option>
                    <option>Headset</option>
                </select>
                <select id="sort-by" class="bar-search-filter">
                    <option>Sort By</option>
                    <option>Lowest to Highest Price</option>
                    <option>Highest to Lowest Price</option>
                    <option>Featured Products</option>
                </select>
                <input class="bar-search-submit" type="submit" value="Search"></input>
            </div>
            <div class="dropdown-content">
            </div>
        </div>
        <!-- end of search bar -->
        
         
        
        
        <div id='product-list' >
        <?php
	 while($rs->EOF===false){
	   $sku   =  $rs->fields['product_sku'];
	   $title =  $rs->fields['product_name'];
	   $sdesc =  $rs->fields['product_s_desc'];
	   $img   =  $path .  $rs->fields['product_thumb_image'];
	   $price  += "1.00";
	?>
	   <div class='prod-wrapp fl'>
              <div class='pImg cl'><img id='img<?=$sku?>' src="<?=$img ?>"></div>
              <div class='title cl'><strong>SKU:</strong><?=$sku?></div>
              <div class='title cl'><strong>  <?=$title ?></strong></div>
              <div class='price cl'>
                  <span class="value"><?=number_format($price,2,',','.') ?></span>&nbsp;PHP
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="number" id='qty-<?=$sku?>' max="50" min="1" value="1" class="cart-qty"></input>
                  <a href="javascript:void(0)" onClick="javascript:addToCart('<?=$sku?>')" class="cart-add">Add-to-Cart</a>
                  
                  
                   
              </div>
              <div class='action-btn cl'> 
                  <a href="javascript: share()"> View </a><span class="pipe"></span>
                  <a href="javascript: share()"> Share</a>
              </div>
           </div> 
         <?php
	     $rs->moveNext();
    	  } ?>
        </div>
    </div>
    <script> getShortBasket(); </script>
    <br><br><br>

    <!-- PDP -->
    <div class="modal-container">
        <div class="modal">
            <div class="modal-header">
                <a href="#" class="modal-close"><span class="icon-cancel-circle"></span></a>
                <h4><strong>sku</strong>Product Title</h4>
            </div>
        </div>
    </div>
    <!-- end of PDP -->
    <!-- scripts -->
    <script type="text/javascript" src="static/js/search.js"></script>
    <script type="text/javascript" src="static/js/modal.js"></script>
    <script type="text/javascript" src="static/js/cart.js"></script>
    <!-- end of scripts -->
</body>