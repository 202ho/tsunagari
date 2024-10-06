<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link href="/resources/css/reservation.css" rel="stylesheet" type="text/css">

</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
 <div class="activity-layout" style="display: flex; justify-content: center;">
<div class="container">
    <!-- Left Side: Activity Information with Image -->
    <div class="activity-info">
        <h2>${activity.title}</h2>
        <p><strong>호스트:</strong> ${activity.hostid}</p>
        <p><strong>주소:</strong> ${activity.address}</p>
        <p><strong>날짜:</strong> ${activity.regdate} ~ ${activity.enddate}</p>
        <p><strong>가격:</strong> ${activity.price}원</p>
    </div>
    <div class="activity-thumbnail">
        <img class="thumbnailImg" src="${activity.thumbnail}" alt="Thumbnail"> <!-- 이미지 위치 변경 -->
    </div>
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
        <p>금액: ${activity.price}원</p>
    </div>
    <form action="/reservation/submit" method="post">
        <input type="hidden" name="activityId" value="${activity.id}">
        <input type="hidden" name="memberId" value="${memberId}">
        <input type="hidden" name="reservationDate" value="${reservation.date}">
        <input type="hidden" name="price" value="${activity.price}">
        <button type="submit" class="submit-btn">신청 예약하기</button>
    </form>
</div>
</div>
</div>
 <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>