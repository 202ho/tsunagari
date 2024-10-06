<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link rel="stylesheet" href="/resources/css/detail.css">
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
     <div class="activity-layout" style="display: flex; justify-content: center;">

     <div class="activity-detail">
            <div class="activity-thumbnail">
                <img src="${activity.thumbnail}" alt="Activity Thumbnail">
            </div>
            <h1>${activity.title}</h1>
            <p class="activity-location">${activity.address}</p>
        </div>

    <div>
    <a href="/reservation/form?activityId=${id}" class="btn btn-primary">예약하기</a>
    </div>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

</body>

</html>