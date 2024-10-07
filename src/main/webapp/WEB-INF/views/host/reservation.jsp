<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link rel="stylesheet" href="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.css" />
<script src="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.js"></script>
<script src="/resources/js/reservation.js"></script>
<link href="/resources/css/reservation.css" rel="stylesheet" type="text/css">
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <section class="calendar-app-layout" >
        <h5>예약 관리</h5>
        <div class="calender-nav">
            <div class="btn  btn-light border calender-nav-today">Today</div>
            <div class="btn btn-light border calender-nav-prev"><</div>
            <div class="btn btn-light border calender-nav-next">></div>
            <div class="calender-nav-date">2024-10</div>
        </div>
        <main id="calendar-app" style="width:780px; height:780px;"></main>
    </section>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>