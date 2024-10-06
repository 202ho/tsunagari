
$(document).ready(function() {
    // 액티비티 상세보기
    $('.activity-item').on('click', function(e) {
        let activityId = $(this).data('activity-id');
        if (activityId) {
            let url = '/activity/detail/' + activityId;
            window.location.href = url;
        }
    });


    $('#new-form-address-btn').on('click', function(e) {
            new daum.Postcode({
                oncomplete: function(data) {
                    let addr = ''; // 주소 변수
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
                    // 위도 경도
                    $.ajax({
                        url: 'https://dapi.kakao.com/v2/local/search/address.json',
                        type: 'GET',
                        headers: {
                            'Authorization': 'KakaoAK 4837664397ba0a3531b104d0856d7951'
                        },
                        data: {
                            query: addr
                        },
                        success: function(response) {
                            if (response.meta.total_count > 0) {
                                let doc = response.documents[0];
                                document.getElementById('new-form-address-zipcode').value = data.zonecode;
                                document.getElementById("new-form-address-address").value = addr;
                                document.getElementById("new-form-address-address2").focus();
                                document.getElementById("new-form-address-x").value = doc.x;
                                document.getElementById("new-form-address-y").value = doc.y;
                            } else {
                                document.getElementById('new-form-address-zipcode').value = '';
                                document.getElementById("new-form-address-address").value = '';
                                document.getElementById("new-form-address-address2").value = '';
                                document.getElementById("new-form-address-x").value = '';
                                document.getElementById("new-form-address-y").value = '';
                                alert("위치를 찾을 수 없습니다.")
                            }
                        },
                        error: function() {
                            document.getElementById('new-form-address-zipcode').value = '';
                            document.getElementById("new-form-address-address").value = '';
                            document.getElementById("new-form-address-address2").value = '';
                            document.getElementById("new-form-address-x").value = '';
                            document.getElementById("new-form-address-y").value = '';
                            alert("위치를 찾을 수 없습니다.")
                        }
                    });

                }
            }).open();

    });
});


