<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <h4>상세페이지</h4>
    <h4>id : ${id} </h4>



    <a href="/reservation/form?activityId=${id}" class="btn btn-primary">예약하기</a>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>