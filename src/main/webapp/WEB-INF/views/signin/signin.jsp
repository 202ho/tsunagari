<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="resources/css/signin.css" rel="stylesheet" type="text/css">
</head>

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="alert alert-danger" id="error-message">
    <c:if test="${not empty errorMessage}">${errorMessage}</c:if>
</div>
<form action="/login-process"  method="post" align="center" class="signin-form">
	<table>
		<tr>
			<td align="center"></td>
		</tr>
		<tr>
		<td align="left"> Email </td>
		</tr>
		<tr>
			<td><input type="text" name="username" class="signin-input signin-input"></td>
		</tr>
		<tr>
			<td align="left" > Password </td>
		</tr>
		<tr>
			<td><input type="password"  name="password" class="signin-input signin-input"></td>
		</tr>

		<tr>
			<td align="center">
				<input type="submit" value="로그인" class="signin-input signin-input-submit"><br>
				<input type="button" value="회원가입" onclick="location.href='/signup'" class="signin-input signin-input-button">
			</td>
		</tr>
	</table>
</form>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
<script defer>
document.addEventListener("DOMContentLoaded", function() {
    const errorMessage = document.getElementById("error-message");
    if (errorMessage.textContent.trim()) {
        errorMessage.style.display = 'block';

        // 3초 후에 메시지 숨기기
        setTimeout(function() {
            errorMessage.style.display = 'none'; // 메시지 숨기기
        }, 3000);
    }
});
</script>
</body>
</html>