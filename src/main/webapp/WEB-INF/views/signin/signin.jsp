<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>로그인</title>
<link href="resources/css/signin.css" rel="stylesheet" type="text/css">

</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<form action="#" method="post" align="center" class="signin-form">

	<table>
		<tr>
			<td align="center"></td>

		</tr>
		<tr>
		<td align="left"> Email </td>
		</tr>
		<tr>
			<td><input type="text" name="id" class="signin-input signin-input"></td>
		</tr>
		<tr>
			<td align="left" > Password </td>
		</tr>
		<tr>
			<td><input type="password" name="pass" class="signin-input signin-input"></td>
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
</body>
</html>