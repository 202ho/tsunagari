
$(document).ready(function() {
    // 액티비티 상세보기
    $('.activity-item').on('click', function(e) {
        let activityId = $(this).data('activity-id');
        if (activityId) {
            let url = '/activity/detail/' + activityId;
            window.location.href = url;
        }
    });


    // 주소 찾기 버튼 클릭
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
                                let city = data.sigungu;
                                document.getElementById('new-form-address-zipcode').value = data.zonecode;
                                document.getElementById("new-form-address-address").value = addr;
                                document.getElementById("new-form-address-address2").focus();
                                document.getElementById("new-form-address-city").value = city;
                                document.getElementById("new-form-address-x").value = doc.x;
                                document.getElementById("new-form-address-y").value = doc.y;
                            } else {
                                document.getElementById('new-form-address-zipcode').value = '';
                                document.getElementById("new-form-address-address").value = '';
                                document.getElementById("new-form-address-address2").value = '';
                                document.getElementById("new-form-address-city").value = '';
                                document.getElementById("new-form-address-x").value = '';
                                document.getElementById("new-form-address-y").value = '';
                                alert("위치를 찾을 수 없습니다.")
                            }
                        },
                        error: function() {
                            document.getElementById('new-form-address-zipcode').value = '';
                            document.getElementById("new-form-address-address").value = '';
                            document.getElementById("new-form-address-address2").value = '';
                            document.getElementById("new-form-address-city").value = '';
                            document.getElementById("new-form-address-x").value = '';
                            document.getElementById("new-form-address-y").value = '';
                            alert("위치를 찾을 수 없습니다.")
                        }
                    });

                }
            }).open();

    });


    // 액티비티 등록 버튼 클릭
        $('#new-activity-form-btn').click(function() {
            let title = $('input[name="new-activity-title"]');
            let content = $('textarea[name="new-activity-content"]');
            let address = $('input[name="new-activity-address"]');
            let price = $('input[name="new-activity-price"]');
            let photo = $('input[name="new-activity-photo"]');

            if(!title.val().trim()) {
                title.focus();
                alert('제목을 입력 해주세요.');
                return;
            }
            if(!photo.val()) {
                photo.focus();
                alert('사진을 선택해주세요');
                return;
            }
            if(!content.val().trim()) {
                content.focus();
                alert('소개를 입력 해주세요.');
                return;
            }
            if(!address.val().trim()) {
                alert('주소를 입력 해주세요.');
                return;
            }
            if(!price.val().trim()) {
                price.focus();
                alert('참가비를 입력 해주세요.');
                return;
            }
            if (!/^\d+$/.test(price.val().trim())) {
                alert('참가비는 숫자만 입력하세요.');
                return;
            }
            console.log("post start")

            let formData = new FormData($('#new-activity-form')[0]);
            console.log(formData)

            $.ajax({
                url: '/api/activity/new',
                type: 'POST',
                data: formData,
                processData: false, // Prevent jQuery from automatically transforming the data into a query string
                contentType: false, // Set contentType to false as jQuery will tell the server its a query string request
                success: function(response) {
                    alert('액티비티가 성공적으로 등록되었습니다.');
                    window.location.href = "/host/activity";
                },
                error: function(xhr, status, error) {
                    alert('액티비티 등록 중 오류가 발생했습니다.');
                }
            });
        });
});


