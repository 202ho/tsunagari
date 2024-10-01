
$(document).ready(function() {

        // 액티비티 상세보기
            $('.activity-item').on('click', function(e) {
                var activityId = $(this).data('activity-id');
                if (activityId) {
                    var url = '/activity/detail/' + activityId;
                    window.location.href = url;
                }
            });
});


