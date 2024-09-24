
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
});