$(document).ready(function() {
    $(".pdp-pop").click(function() {
        $(".modal-container").fadeIn(500);
        var sku = $(this).attr('data-sku');
        var origPrice = $("#dtl"+sku).attr('data-orig-price');
        var price = $("#dtl"+sku).attr('data-price');
        var warranty = $("#dtl"+sku).attr('data-warranty');
        var img = $("#dtl"+sku).attr('data-img');
        var desc = $("#dtl"+sku).html();
        $('#skuTitle').html("<strong>"+sku+"</strong>" + $('#product-'+sku).html());
        $('#fimg').attr('src',img );
        
        var dtl  ="<p class='oprice'><b>REGULAR PRICE:</b> <strike>"+origPrice+"</strike> </p>";
			dtl +="<p class='curprice'><b>PRICE:</b>"+price+"</p>";
			dtl +="<p><b>WARRANTY</b>:"+warranty+"</p>";
			dtl +="<div class='price cl' style='width:100%!important'>"
			dtl +="<a href='javascript:void(0)' onClick="+'"' + "javascript:addToCart('"+sku+"')"  +  '"' + " class='fr cart-add'>Buy</a>"
           // dtl +='<input type="number"   max="50" min="1" value="1" class="fr cart-qty"></input>';
            dtl +='</div>';
        $('.prod-short-dtl').html(dtl);
        $('#product-full .prod-desc').html(desc);
    });
    
    $(".modal-close").click(function() {
        $(".modal-container").fadeOut(500);
    });
});
