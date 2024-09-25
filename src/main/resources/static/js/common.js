
$(document).ready(function() {

// header 검색
     $('#header-search-btn').on('click', function(e) {
            e.preventDefault();
            var searchTerm = $(this).siblings('input[type="search"]').val();
            searchTerm = searchTerm.trim();
            var url = '/activity/list?search=' + encodeURIComponent(searchTerm);
            window.location.href = url;
        });

        // 액티비티 리스트
            $('.activity-item').on('click', function(e) {
                var activityId = $(this).data('activity-id');
                if (activityId) {
                    var url = '/activity/detail/' + activityId;
                    window.location.href = url;
                }
            });

});


