const colorSet = ['#ffe3fc', '#FDFD96', '#cff2ff', '#cfffdc'];

$(document).ready(function() {

   $('.reservation-item').on('click', function(e) {
        e.preventDefault();
        let activityid = $(this).data('activity-id');
        if(activityid) {
            let goto = '/activity/detail/' + activityid;
            window.location.href= goto;
        }
    });


    // 게스트 예약 취소버튼
    $('.guest-reservation-cancel').on('click', function(e) {
        e.preventDefault();
        let reservationId = $(this).data('reservation-id');
        $(this).prop('disabled', true);
        $.ajax({
            url: '/api/reservation/delete?id='+reservationId,
            type: 'DELETE',
            success: (response)  => {
                 location.reload();
                $(this).prop('disabled', false);
            },
            error: (xhr, status, error) => {
                alert("예약을 취소 할 수 없습니다.")
                $(this).prop('disabled', false);
            }
        });
    });



    // 호스트 예약관리 달력
    const Calendar = tui.Calendar;
    var calendar = new Calendar('#calendar-app', {
        defaultView: 'month',
        useDetailPopup: true,
        gridSelection: true,
        isReadOnly: true,
        calendars: [{
            id: 'cal1',
            name: ''
        }],
        timezone: {
            zones: [{
                timezoneName: 'Asia/Seoul',
                displayLabel: 'UTC+9:00',
                tooltip: 'Seoul'
            }]
        }
    });

    function getFormattedDate(dateString) {
        let date = new Date(dateString);
        let year = date.getFullYear();
        let month = ('0' + (date.getMonth() + 1)).slice(-2); // Add leading zero if needed
        let formattedDate = year + '-' + month;
        return formattedDate;
    }

    // 호스트 예약관리 달력 날짜 업데이트
    function updateDate(dateString) {
        calendar.clear();
        let date = getFormattedDate(dateString);
        $('.calender-nav-date').text(date);
        $.ajax({
            url: '/api/host/reservation?date=' + date,
            type: 'GET',
            success: function(response) {
                const reservationList = response.reservation.map((el, idx) => {
                    return {
                        id: el.activityId,
                        calendarId: 'cal1',
                        title: el.title,
                        category: 'allday',
                        location: el.address,
                        start: new Date(el.date),
                        end: new Date(el.date),
                        state: '',
                        attendees: [el.count],
                        backgroundColor: colorSet[idx % 4],
                    }
                })
                calendar.createEvents(reservationList)
            },
            error: function(xhr, status, error) {
                alert("예약을 조회 할 수 없습니다.")
            }
        });
    }

    // 호스트 예약관리 달력 초기 생성
    function initCalendar() {
        calendar.today();
        let dateString = calendar.getDate().d.d;
        updateDate(dateString);
    }

    initCalendar();

    $('.calender-nav-today').on('click', function(e) {
        e.preventDefault();
        initCalendar();
    });

    $('.calender-nav-prev').on('click', function(e) {
        e.preventDefault();
        calendar.prev();
        let dateString = calendar.getDate().d.d;
        updateDate(dateString);

    });

    $('.calender-nav-next').on('click', function(e) {
        e.preventDefault();
        calendar.next();
        let dateString = calendar.getDate().d.d;
        updateDate(dateString);
    });
});