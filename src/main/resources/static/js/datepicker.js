document.addEventListener("DOMContentLoaded", function() {
    // datepicker 초기화
    $("#datepicker").datepicker({
        dateFormat: "yy-mm-dd", // 날짜 형식 설정
        minDate: 0, // 오늘 이후로만 선택 가능
        onSelect: function(dateText) {
            // 선택된 날짜를 hidden input에 설정
            $("#selected-reservation-date").val(dateText);
        }
    });
});
