
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
            var searchTerm = $(this).siblings('input[type="search"]').val();
            searchTerm = searchTerm.trim();
            var url = '/activity/list?search=' + encodeURIComponent(searchTerm);
            window.location.href = url;
        });
});

