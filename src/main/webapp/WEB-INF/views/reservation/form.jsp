<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link href="/resources/css/reservation.css" rel="stylesheet" type="text/css">

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
        <select id="reservationDate" name="reservationDate">
            <option value="2024-09-10">2024년 9월 10일</option>
        </select>
    </div>
    <div class="reservation-summary">
        <p>예약 시간: 오후 2시 30분</p>
    </div>
    <form action="/guest/reservation" method="post">
        <input type="hidden" name="activityId" value="${activity.id}">
        <input type="hidden" name="memberId" value="${memberId}">
        <input type="hidden" name="reservationDate" value="${reservation.date}">
        <input type="hidden" name="price" value="${activity.price}">
        <button type="submit" class="submit-btn">신청 예약하기</button>
    </form>
</div>
</div>
</div>
<!-- END container -->
</div>
 <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>