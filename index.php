<?php

/**
 * Gentronics Facebook Tab Page
 * 
 * @package     fbCatalog
 * @version     1.0
 *
 */

/** Start-of-Inclusions **/
include('./includes/conn.php');
include('./includes/func.php');
/** End-of-Inclusions **/

?>

<!DOCTYPE html>
<head>
    <title>Gentronics</title>

    <link rel="ico" href="static/img/gentronics.ico" type="image/x-icon">
    <link rel="shortcut icon" href="static/img/gentronics.ico" type="image/x-icon">

    <link rel="stylesheet" href="static/css/style.css" type="text/css">
    <link rel='stylesheet' href='static/css/jAlert.css'>
    <link rel="stylesheet" href="static/css/modal.css" type="text/css">
    <link rel="stylesheet" href="static/css/icomoon.css" type="text/css">

    <!-- ** Open Graph ** -->
    <!-- Preview -->
    <meta property="og:title" content="Gentronics | High Quality Electronics and Gadget Supplies" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://gentronics-m2c.com" />
    <meta property="og:description" content="Branded and Generic Electronics, Peripherals and  Computer Accesories distributor with hundred plus SKUs in the Philippines; Gender Changers. Hubs and Ports. Speakers and Headphones" />
    <meta property="og:image" content="http://gentronics-m2c.com/static/img/ogp.png" />
    <meta property="og:image:type" content="image/png" />
    <meta property="og:image:width" content="300" />
    <meta property="og:image:height" content="300" />
    <!-- ** Twitter Card ** -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="Gentronics | High Quality Electronics and Gadget Supplies">
    <meta name="twitter:description" content="Branded and Generic Electronics, Peripherals and  Computer Accesories distributor with hundred plus SKUs in the Philippines; Gender Changers. Hubs and Ports. Speakers and Headphones">
    <meta name="twitter:image" content="http://gentronics-m2c.com/static/img/ogp.png">
    <meta name="twitter:url" content="http://gentronics-m2c.com">

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
</head>

<body>
    <div class="wrapper">
    <!-- Header -->
        <!-- Search bar -->
        <div class="bar-search-combo">
            <div class="bar-search-box">
                <form id='search' method="POST">
                    <input placeholder="Search for products" name='txtSearch' value="<?=$txtSearch?>" class="bar-search-text-box" type="text" value=""></input>
                    <!-- add hidden class="bar-search-filter hidden"-->
                    <select  onchange="$('#search').submit()"  name='cat' id="filter-category" class="bar-search-filter">
                        <option value=''> Category </option>
                        <?= getCategory(0,$conn,$sid); ?>
                    </select>
                    
                    <select name='sort'  id="sort-by" onchange="$('#search').submit()"  class="bar-search-filter">
                        <option value=''>Sort By</option>
                        <option <?php echo $sSort=='nameAsc' ? "selected":""?> value='nameAsc'> Name Asc A-Z</option>
                        <option <?php echo $sSort=='nameDesc' ? "selected":""?> value='nameDesc'> Name Desc Z-A</option>
                        <option <?php echo $sSort=='lowprice' ? "selected":""?> value='lowprice'>Lowest to Highest Price</option>
                        <option <?php echo $sSort=='highprice' ? "selected":""?> value='highprice'>Highest to Lowest Price</option>
                    </select>
                    
                    <select style='width:120px!important' name='selpage' onchange="$('#search').submit()" id="selpage" class="bar-search-filter">
                        <?php
                        $totolRecord = $rsTotal->fields['rec'];
                        for($i=9;$i<=$totolRecord ;$i+=9){
                            $ii = floor($i/9);
                            $s = $spage ==$i ? "selected":"";
                            echo " <option $s value='$i'> Page {$ii} </option>";
                            }
                        ?>
                    </select>
                </form>
            </div>
            <div class="dropdown-content">
            </div>
        </div>
        <!-- end of search bar -->
        <div class='short-basket'>
            <div class='fl'>
                <div class="banner_top">
                </div>
            </div>
            <div class="bar-cart fr">
                <!-- <a href="#Cart" class="cart-full"> -->
                <span class='basket-dtl'>
                    <span class="icon-cart"></span>
                    <span id="cart-info"> <!--short basket dtls here --></span>
                    <span class="view-basket icon-cart2" style="cursor:pointer">View basket</span>
                    
                </span>
            </div>
             <div class='cl'></div>
        </div>
        <!-- end of Header -->
        <div id='product-list' class='cl'>
        <?php
          $path = "images/";
          while($rs->EOF===false){
            $sku   =  str_replace('.','',$rs->fields['product_sku']);
            $rsku  =  $rs->fields['product_sku'];
            $title =  utf8_encode($rs->fields['product_name']);
            $sdesc =  htmlspecialchars($rs->fields['product_s_desc']);
            $img   =  $path .  $rs->fields['product_full_image'];
            $imgF   =  $path .'full/'.  $rs->fields['product_full_image'];
            $warranty =  $rs->fields['product_warranty'];
            $priceOrig =  $rs->fields['price'];
            $discount = $rs->fields['discount'];
            if($discount<1){
                $price = $priceOrig - ($priceOrig  * $discount);
            } else if($discount >=1 and $rs->fields['price'] > $discount){
                $price =$rs->fields['price'] - $discount;
            } else {
                $price =$rs->fields['price'];
            }
        ?>
       <div class='prod-wrapp fl'>
            <div class='pImg cl'>
                <a href="javascript: void(0);">
                    <img class="pdp-pop" data-sku="<?=$sku?>" alt="<?=$title ?>" id='img<?=$sku?>' src="<?=$img ?>">
                </a>
            </div>
            <div class='title cl'><strong>SKU:</strong><?=$rsku?></div>
            <div class='sDesc cl'><strong  id='product-<?=$sku?>'>  <?=$title ?></strong></div>
           <div class='price-orig cl'>
                <strike class='fl'><?=number_format($priceOrig,2,'.',',') ?></span>&nbsp;PHP </strike>
                <p class='fr'><b>Warranty:</b>&nbsp;<?=$warranty?></p>
                <div class='cl'></div>
            </div>
            <div class='price cl'>
                <span class="value fl" id='price-<?=$sku?>'><?=number_format($price,2,'.',',') ?></span>&nbsp;PHP              
                <a href="javascript:void(0)" id="<?=$sku?>" onClick="javascript:addToCart('<?=$sku?>')" class="fr cart-add">Buy</a>
                <input type="number" id='qty-<?=$sku?>' max="50" min="1" value="1" class="fr cart-qty"></input>
                <span class=''>&nbsp;</span>
            </div>
            <p id='dtl<?=$sku?>' data-price='<?=number_format($price,2,'.',',') ?>' 
                         data-orig-price='<?=number_format($priceOrig,2,'.',',') ?>' 
                         data-discount='<?=$discount<1 ? $discount * 100:$discount ?>' 
                         data-warranty='<?=$warranty ?>' 
                         data-img='<?=$imgF ?>' style='display:none'> <?=strip_tags($rs->fields['product_s_desc'])?> 
            </p>
            
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
        }

            if($rs->recordCount()==0){
        ?>
            <div class="noresults">
                <span class="oops">Oops!</span>
                <span class="message">Sorry we can't find the product you're looking for.</span>
            </div>
        <?php
            }
        ?>
        </div>
    </div>
    <script> getShortBasket(); </script>
    <br><br><br>
    <!-- PDP -->
    <div class="modal-container">
        <div class="modal">
            <div class="modal-header">
                <a href="#" class="modal-close"><span class="icon-cancel-circle"></span></a>
                <h4 id='skuTitle'><strong id=''>sku22</strong>Product Titlefffffffff fsfsd </h4>
            </div>
            <div id="product-full">
                   <div class='fpImg'> <img id='fimg' width='400' src="">   </div>
                   <div class='prod-sdtl'> 
                    
                      <div class='prod-short-dtl'></div>
                      
                      <div class='prod-desc'> </div>  
                   </div>
                  
                   <div class='cl'> </div> 
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
