function myMap(x, y,address) {
    // 제공된 좌표로 지도를 생성하고 해당 위치로 중심을 설정
    var latLng = new google.maps.LatLng( x, y);
    var map = new google.maps.Map(document.getElementById("googleMap"), {
        zoom: 15,
        center: latLng
    });

    // 해당 좌표에 마커를 추가
    var marker = new google.maps.Marker({
        position: latLng,
        map: map,
        title: "Coordinates: " + x+ ", " + y
    });

    // 마커에 주소를 타이틀로 설정
     marker.setTitle(address);
}