
$(document).ready(function() {

const Calendar2 = tui.Calendar;
const calendar = new Calendar2('#calendar-app', {
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

calendar.createEvents([
{
    id: '1',
    calendarId: 'cal1',
    title: 'my event',
    category: 'allday',
    location: "서울",
    start: '2024-10-05T22:30:00+09:00',
    end: '2024-10-05T22:30:00+09:00',
    state:'',
    attendees:['2']
  },
  {
    id: '2',
        calendarId: 'cal1',
        title: 'my event',
        category: 'allday',
        location: "서울",
    start: '2024-10-06T22:30:00+09:00',
    end: '2024-10-06T22:30:00+09:00',
        backgroundColor: '#f1caf9',

  },

]);

});


