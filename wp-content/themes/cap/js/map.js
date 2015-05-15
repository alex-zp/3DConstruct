
jQuery(document).ready(function() {
    var latlng = new google.maps.LatLng(47.8516, 35.1118);
    var settings = {
        zoom: 1,
        center: latlng,
        mapTypeControl: true,
        mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
        navigationControl: true,
        navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = '';
    function ShowMapPosition(address) {
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode(
            {'address': address},
            function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    var loc = results[0].geometry.location;
                    map.setCenter(loc);
                    var marker = new google.maps.Marker({ position: loc, map: map, title: address });
                    var infowindow = new google.maps.InfoWindow({ content: '<div class="dv-map-address-hint">' + address + '</div>' });
                    google.maps.event.addListener(marker, 'click', function() { infowindow.open(map, marker); });
                }
            }
        );
    }


    if(jQuery('#map_canvas')[0] != undefined) {
        map = new google.maps.Map(document.getElementById('map_canvas'), settings);
        var addr = jQuery('#map_canvas').attr('data-city').split('|');
        jQuery.each(addr, function(index) {
            ShowMapPosition(addr[index]);
        });
    }
});