<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link href="/resources/css/reservation.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script src="/resources/js/datepicker.js"></script>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
  <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
 <div class="activity-layout" style="display: flex; justify-content: center;">


<div class="container">

    <div class="activity-info" >
    <div class="activity-host-info">
        <h1><b>${activity.title}</b></h1><br>
        <p><strong>호스트:</strong> ${activity.hostid}</p>
        <p><strong>주소:</strong> ${activity.address}</p>
        <p><strong>날짜:</strong> ${activity.enddate}</p>
        <p><strong>가격:</strong> ${activity.price}원</p>
    </div>
        <div class="activity-thumbnail"><img src="${activity.thumbnail}" alt="Thumbnail"></div>
</div>

<!-- Visit Schedule Below -->
<div class="visit-schedule">
    <h3>방문 일정</h3>
    <div class="calendar">
        <label for="reservationDate">예약 날짜를 선택하세요:</label>
 <input type="text" id="datepicker" name="datepicker">
    </div>
    <div class="reservation-date-info-detail-info">
    <Strong>방문 일정에 따라 세부 정보가 달라질 수 있어요</Strong>
    <br>
    일정 확인 후 세부정보를 다시 한번 확인해 주세요!

    <form name="new-reservation" action="/guest/reservation" method="post">
        <input type="hidden" name="activityId" value="${activity.id}">
        <input type="hidden" name="memberId" value="${memberId}">
        <input type="hidden" name="reservationDate" id="selected-reservation-date" >
        <button type="submit" class="submit-btn">신청 예약하기</button>
    </form>

    </div>
    </div>

  <!-- End wrapper -->
    </div>

</div>
</div>
</div>
<!-- END container -->
</div>
 <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>