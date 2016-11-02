$(window).ready(function() {
    if (!$.cookie('uvcted')) {
        $.getJSON('//freegeoip.net/json/?callback=?', function(data) {
            var info = data;

            $.ajax({
                url: '//' + window.location.hostname + '/ajax.php?track-user',
                method: 'post',
                data: {
                    ip: btoa(info.ip),
                    country_code: btoa(info.country_code),
                    country_name: btoa(info.country_name),
                    region_code: btoa(info.region_code),
                    region_name: btoa(info.region_name),
                    city: btoa(info.city),
                    zip: btoa(info.zip_code),
                    time_zone: btoa(info.time_zone),
                    lat: btoa(info.latitude),
                    long: btoa(info.longitude),
                    mc: btoa(info.metro_code)
                },
                success: function(data) {
                    $.cookie('uvcted', true, {path:'/'});
                },
            });
        });
    }
});