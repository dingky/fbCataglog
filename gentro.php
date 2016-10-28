<?php

include('./includes/conn.php');
include('./includes/func.php');

?>

<!DOCTYPE html>

<head>
    <title>Gentronics</Title>
    <!-- START: CSS -->
    <link rel="stylesheet" href="static/css/style.css" type="text/css">
    <link rel='stylesheet' href='static/css/jAlert.css'>
    <link rel="stylesheet" href="static/css/modal.css" type="text/css">
    <link rel="stylesheet" href="static/css/icomoon.css" type="text/css">
    <!-- END: CSS -->

    <!-- START: JS -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="static/js/search.js"></script>
    <script src='static/js/jAlert.js'></script>
    <script src='static/js/jAlert-functions.js'></script>
    <script type="text/javascript">
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

            FB.Canvas.setSize({ width:825, height:1600});
                FB.getLoginStatus(function(response) {
                // console.log(response.status);
                if (!response.status === 'connected') {
                    //FB.login(function(){}, {scope: 'publish_actions'});
                // console.log('login redirect');
                }
                }); 
            };
    </script>
    <script type="text/javascript" src="static/js/internal.js"></script>
    <!-- END: JS -->
</head>

<body>
    <div class="wrapper">
    <!-- Header -->
        
        <!-- Search bar -->
        
        <div class="bar-search-combo">
            <div class="bar-search-box">
				<form id='search' method="POST">
                <input placeholder="Search for products" class="bar-search-text-box" type="text" value=""></input>
                <!-- add hidden class="bar-search-filter hidden"-->
                <select  onchange="$('#search').submit()"  name='cat' id="filter-category" class="bar-search-filter">
					 <option value=''> Category </option>
					 <?php 
					  echo getCategory(0,$conn,$sid);
					 ?>
                </select>
                
                <select name='sort'  id="sort-by" onchange="$('#search').submit()"  class="bar-search-filter">
                    <option value=''>Sort By</option>
                    <option <?php echo $sSort=='nameAsc' ? "selected":""?> value='nameAsc'> Name Asc A-Z</option>
                    <option <?php echo $sSort=='nameDesc' ? "selected":""?> value='nameDesc'> Name Desc Z-A</option>
                    <option <?php echo $sSort=='lowprice' ? "selected":""?> value='lowprice'>Lowest to Highest Price</option>
                    <option <?php echo $sSort=='highprice' ? "selected":""?> value='highprice'>Highest to Lowest Price</option>
                </select>
                <select name='selpage' onchange="$('#search').submit()" id="selpage" class="bar-search-filter">
                     <?php
                      $totolRecord = $rsTotal->fields['rec'];
                      for($i=0;$i<=$totolRecord;$i+=9){
						   $ii = floor(($i+9)/9);
						   echo " <option value=''> Page {$ii}</option>";
						  }
                     ?>
                </select>
               
                </form>
            </div>
            <div class="dropdown-content">
            </div>
        </div>
        <!-- end of search bar -->
        <div>
            <div class='fl'>
                filters: 
                 
            </div>
            <div class="bar-cart fr">
                <!-- <a href="#Cart" class="cart-full"> -->
                <a href="#Cart">
                    <span id="cart-info"> <!--short basket dtls here --></span>
                    <span class="icon-cart">View basket</span>
                </a>
            </div>
            <div class='cl'>&nbsp;</div>
        </div>
        <!-- end of Header -->
        <div id='product-list' >
        <?php
     $path = "http://solutionsh21.com/gentro/images/";
	 while($rs->EOF===false){
	   $sku   =  str_replace('.','',$rs->fields['product_sku']);
	   $rsku  =  $rs->fields['product_sku'];
	   $title =  utf8_encode($rs->fields['product_name']);
	   $sdesc =  htmlspecialchars($rs->fields['product_s_desc']);
	   $img   =  $path .  $rs->fields['product_full_image'];
	   $price = $rs->fields['price'];;
	?>
	   <div class='prod-wrapp fl'>
            <div class='pImg cl'>
                <a href="javascript: void(0);">
                    <img class="pdp-pop" id='img<?=$sku?>' src="<?=$img ?>">
                </a>
            </div>
            <div class='title cl'><strong>SKU:</strong><?=$rsku?></div>
            <div class='sDesc cl'><strong  id='product-<?=$sku?>'>  <?=$title ?></strong></div>
            <div class='price cl'>
                <span class="value fl" id='price-<?=$sku?>'><?=number_format($price,2,'.',',') ?></span>&nbsp;PHP              
                <a href="javascript:void(0)" onClick="javascript:addToCart('<?=$sku?>')" class="fr cart-add">Buy</a>
                <input type="number" id='qty-<?=$sku?>' max="50" min="1" value="1" class="fr cart-qty"></input>
                <span class=''>&nbsp;</span>
            </div>
            <!--
            <div class='action-btn cl'> 
                <a href="javascript: share();">
                    <span class="icon-new-tab"></span>&nbsp;View </a><span class="pipe"></span>
                </a>
                <a href="javascript: share();">
                    <span class="icon-share2"></span>&nbsp;Share
                </a>
            </div>
            -->
        </div> 
         <?php
	     $rs->moveNext();
    	  } ?>
        </div>
        <div> 3 | 2
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
