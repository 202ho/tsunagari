$(document).ready(function() {
    $('.host-register-btn').on('click', function(e) {
        e.preventDefault();


        $('.host-register-btn').prop('disabled', true);
    // 호스트 신청
    $.ajax({
        url: '/api/auth/host-register',
        type: 'GET',
        success: function(response) {
            if (response.result === "fail") {
                alert(response.message);
                $('.host-register-btn').prop('disabled', false);
            } else {
                alert(response.message);
                $('.host-register-btn').prop('disabled', false);
                window.location.href = "/host/activity";
            }
        },
        error: function(xhr, status, error) {
            alert("서버 오류가 발생했습니다. 다시 시도해 주세요.");
            $('.host-register-btn').prop('disabled', false);
        }
    });


    });
});

