function myMap(x, y,address) {
    // 구글 지도 생성
    var mapOptions = {
        center: new google.maps.LatLng(x, y), // 위도와 경도를 사용하여 중심 설정
        zoom: 15
    };

    console.log( "x, y,address => ", x, y,address)



    var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);

    // Geocoding을 위한 geocoder 객체 생성
    var geocoder = new google.maps.Geocoder();
    var address = address; // EL로 주소 가져오기

    // 주소를 좌표로 변환
    geocoder.geocode({'address': address}, function(results, status) {
        if (status == 'OK') {
            // 변환된 위치로 지도 중심 설정
            map.setCenter(results[0].geometry.location);

            // 마커 추가
            var marker = new google.maps.Marker({
                position: results[0].geometry.location,
                map: map,
                title: address // 마커의 툴팁에 주소 표시
            });
        } else {
            alert('Geocode was not successful for the following reason: ' + status);
        }
    });
}

