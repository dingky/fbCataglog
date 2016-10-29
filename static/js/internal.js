function msgUs(sku) {
    FB.ui({
        method: 'send',
        display: 'page',
        to :'167758130339013',
        message:'Test' + $("#img"+sku).attr('src'),
        link: $("#img"+sku).attr('src')
    });
}
  
 
function addToCart(sku) {
    if ($.cookie("basket") && $.cookie("basket") != '' && 'null' != $.cookie("basket")) {
        var itm = JSON.parse($.cookie("basket"));
    } else {
        var itm = [];
    }
        
    var qty = $("#qty-"+sku).val();
    var price = $("#price-"+sku).text().replace(',','');
    var product = $.trim($("#product-"+sku).text());

    itm.push({"sku": sku, "qty": qty, "price": price, "product": product});
    $.cookie("basket",JSON.stringify(itm));
    basket = JSON.parse($.cookie("basket"));
    getShortBasket();
    infoAlert("Success", "<b>" + sku + " </b>  was Added to your cart");
}

function getShortBasket() {
    if($.cookie("basket")){
        var totProd=0;
        var totPrice=0;
        var basket = JSON.parse($.cookie("basket"));
        for(var prop in basket){
            totPrice += parseInt(basket[prop].price);
            totProd += parseInt(basket[prop].qty);
        }

        $("#cart-info").html(totProd+ " Item, Total of Php "+totPrice.toFixed(2));
    } else {
        $("#cart-info").html("");
    }
}
