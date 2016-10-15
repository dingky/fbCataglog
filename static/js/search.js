$(document).ready(function() {
    // Search box autocompletions
    $('.bar-search-box .bar-search-text-box').on('keyup paste', function() {
        var search = $('.bar-search-box .bar-search-text-box');
        
        //$.ajax here
        
        if (search.val()) {
            if (search.val().toLowerCase() == 'usb') {
                $('.dropdown-content').html('');
                $('.dropdown-content').append('<a class="search-select" href="#"><b>USB</b> in flash drives</a>');
                $('.dropdown-content').append('<a class="search-select" href="#"><b>USB</b> in connectors</a>');
                $('.dropdown-content').append('<a class="search-select" href="#"><b>USB</b> in all categories</a>');
                
                // Selecting auto filters
                $(".search-select").click(function() {
                    var search = $('.bar-search-box .bar-search-text-box');
                    
                    search.val($(this).text());
                    $('.dropdown-content').hide();
                });
            } else {
                var data = $('<div/>').text(search.val()).html();
                
                if (data.length > 10) {
                    data = data.substr(0, 10) + '...';
                }
                
                $('.dropdown-content').html('');
                $('.dropdown-content').html('<a href="#">No results found for "' + data + '"</a>');
            }
            
            $('.dropdown-content').show();

            return;
        }
        
        $('.dropdown-content').hide();
        
        return;
    });
});
