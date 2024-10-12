
$(document).ready(function() {
    // datepicker 초기화
    $("#datepicker").datepicker({
        dateFormat: "yy-mm-dd", // 날짜 형식 설정
        minDate: 0, // 오늘 이후로만 선택 가능
        onSelect: function(dateText) {
            // 선택된 날짜를 hidden input에 설정
            console.log("dateText -> ", dateText);
            $("#selected-reservation-date").val(dateText);
        }
    });


    $("#new-reservation-btn").on('click', function(e) {
        e.preventDefault();
        let activityId = $('input[name="activityId"]');
        let memberId = $('input[name="memberId"]');
        let date = $('input[name="reservationDate"]');

        if(!date.val().trim()){
            alert('날짜를 선택해 주세요');
            return;
        }

        console.log('new-reservation-btn click');
        let formData = new FormData($('#new-reservation-form')[0]);
        console.log(formData);

        $.ajax({
            url: '/api/reservation/new',
            type : 'POST',
                data: formData,
                contentType: false,  // FormData 전송 시 필수
                processData: false,  // FormData 전송 시 필수
                dataType: 'json',
            success: function(response){
                alert('예약이 완료 되었습니다.');
                window.location.href = "/guest/reservation";
            },
            error: function(xhr, status, error) {
                alert('다시 시도해 주세요');
            }
        });


    });
});