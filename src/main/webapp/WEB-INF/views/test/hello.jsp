<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/layout.css">
<title>tsunagari</title>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <h3>안녕하세요</h3>
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