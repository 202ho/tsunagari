
$(document).ready(function() {

    $('.activity-item').on('click', function(e) {
        var activityId = $(this).data('activity-id');
        if (activityId) {
            var url = '/activity/detail/' + activityId;
            window.location.href = url;
        }
//        else {
//            console.error('Activity ID is not available');
//        }
    });


     $('#button-addon2').on('click', function(e) {
            e.preventDefault();
            var searchTerm = $(this).siblings('input[type="text"]').val();
            console.log(searchTerm , "click ")
            if (searchTerm) {
                var url = '/activity/list?search=' + encodeURIComponent(searchTerm);
                window.location.href = url;
//                $.ajax({
//                    url: url,
//                    method: 'GET',
//                    success: function(response) {
//                        // API 요청이 성공했을 때 처리할 로직
//                        console.log('검색 결과:', response);
//                    },
//                    error: function(xhr, status, error) {
//                        // API 요청이 실패했을 때 처리할 로직
//                        console.error('검색 오류:', error);
//                    }
//                });
            }
        });

        // Enter 키 입력 시에도 검색 실행
//        $('input[type="search"]').on('keypress', function(e) {
//            if (e.which === 13) {
//                e.preventDefault();
//                $('.header-search-btn').click();
//            }
//        });
});

