
const colorSet = ['#ffe3fc', '#FDFD96', '#cff2ff', '#cfffdc'];
$(document).ready(function() {

const Calendar = tui.Calendar;
var calendar = new Calendar('#calendar-app', {
  defaultView: 'month',
  useDetailPopup:true,
  gridSelection: true,
  isReadOnly: true,
  calendars: [
    {
      id: 'cal1',
      name: ''
    }
  ],
    timezone: {
      zones: [
        {
          timezoneName: 'Asia/Seoul',
          displayLabel: 'UTC+9:00',
          tooltip: 'Seoul'
        }
      ]
      }
});

function getFormattedDate(dateString){
            let date = new Date(dateString);
             let year = date.getFullYear();
             let month = ('0' + (date.getMonth() + 1)).slice(-2); // Add leading zero if needed
             let formattedDate = year + '-' + month;
             return formattedDate;
}

 function updateDate(dateString) {
    calendar.clear();
    let date = getFormattedDate(dateString);
    $('.calender-nav-date').text(date);
           $.ajax({
                url: '/api/host/reservation?date=' + date,
                type: 'GET',
                success: function(response) {
                    const reservationList = response.reservation.map( (el,idx) => {
                        return {
                                   id: el.activityId,
                                   calendarId: 'cal1',
                                   title: el.title,
                                   category: 'allday',
                                   location: el.address,
                                   start: new Date(el.date),
                                   end: new Date(el.date),
                                   state:'',
                                   attendees:[el.count],
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

function initCalendar() {
    calendar.today();
    let dateString  =  calendar.getDate().d.d;
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
         let dateString  =  calendar.getDate().d.d;
                 updateDate(dateString);

        });

        $('.calender-nav-next').on('click', function(e) {
                e.preventDefault();
                calendar.next();
               let dateString  =  calendar.getDate().d.d;
                       updateDate(dateString);
            });


});


