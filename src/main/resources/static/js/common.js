
$(document).ready(function() {

// header 검색
     $('#header-search-btn').on('click', function(e) {
            e.preventDefault();
            var searchTerm = $(this).siblings('input[type="search"]').val();
            searchTerm = searchTerm.trim();
            var url = '/activity/list?search=' + encodeURIComponent(searchTerm);
            window.location.href = url;
        });
});


