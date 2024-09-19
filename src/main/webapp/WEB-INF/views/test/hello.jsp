<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
    <p>
        <c:out value="${hello}"></c:out>
    </p>
    <c:forEach var="msg" items="${msgList}">
        <p>${msg}</p>
    </c:forEach>
    <div>
        <img src="resources/img/dog.jpg" style="width:100px">
    </div>
</body>
</html>