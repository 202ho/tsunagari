<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<script src="/resources/js/activity.js"></script>
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <h2>${title}</h2> <!-- 카테고리 제목을 표시 -->
    <p>총 ${activityCnt}개의 액티비티가 있습니다.</p>

    <div class="activity-list">
        <c:forEach var="activity" items="${activityList}">
            <div class="activity-item">
                <h4>${activity.title}</h4> <!-- 액티비티 제목 표시 -->
                <img src="${pageContext.request.contextPath}${activity.thumbnail}" alt="${activity.title}" />
                <p>${activity.description}</p> <!-- 액티비티 설명 표시 -->
                <a href="/activities/${activity.id}">자세히 보기</a> <!-- 액티비티 상세 페이지 링크 -->
            </div>
        </c:forEach>

        <c:if test="${empty activityList}">
            <p>해당 카테고리에는 액티비티가 없습니다.</p> <!-- 액티비티가 없을 경우 메시지 -->
        </c:if>
    </div>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>
