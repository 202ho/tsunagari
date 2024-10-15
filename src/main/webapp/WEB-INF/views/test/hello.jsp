<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
</head>

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <h3>안녕하세요</h3>
    <hr>
    <p>test list</p>
    <c:forEach var="testItem" items="${testList}">
            <p>${testItem.title}</p>
        </c:forEach>
    <hr>
    <p>
        <c:out value="${hello}"></c:out>
    </p>
    <c:forEach var="msg" items="${msgList}">
        <p>${msg}</p>
    </c:forEach>
    <div>
        <img src="resources/image/dog.jpg" style="width:100px">
    </div>
</body>
</html>