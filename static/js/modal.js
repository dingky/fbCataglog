$(document).ready(function() {
    $(".pdp-pop").click(function() {
        $(".modal-container").fadeIn(500);
    });
    
    $(".modal-close, .modal-container").click(function() {
        $(".modal-container").fadeOut(500);
    });
});