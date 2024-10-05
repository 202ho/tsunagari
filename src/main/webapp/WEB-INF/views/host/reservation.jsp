<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link rel="stylesheet" href="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.css" />
<script src="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.js"></script>
<script src="/resources/js/reservation.js"></script>
<link href="/resources/css/reservation.css" rel="stylesheet" type="text/css">
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <section class="calendar-app-layout" style="display:flex; justify-content:center; align-items:center;">
              <main id="calendar-app" style="width:800px; height:800px;"></main>
    </section>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>