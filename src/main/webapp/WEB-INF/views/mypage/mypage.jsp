<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="resources/css/signup.css" rel="stylesheet" type="text/css">
<link href="resources/css/mypage.css" rel="stylesheet" type="text/css">
<script src="resources/js/signup.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="sidebar">
<form action="/memberupdete" name="regForm" method="post" class="signup-form" onsubmit="validateForm(event)">
    <input type="hidden" name="csrf_token" value="${sessionScope.csrfToken}" />
    <input type="hidden" name="phone" value="">
	<table>
		<tr>
			<td align="center"></td>

		</tr>
		<tr>
		<td align="left"> Email </td>
		</tr>
		<tr>
			<td><input type="text" name="email" value="${member.email}" class="signup-input"> <input type="button" value="중복확인" class="signup-input signup-input-button"></td>
		</tr>
		<tr>
			<td align="left" > Password </td>
		</tr>
		<tr>
			<td><input type="password" name="password" class="signup-input"></td>
		</tr>
		<tr>
			<td align="left" > Password 확인</td>
		</tr>
		<tr>
			<td><input type="password" name="repassword" class="signup-input"></td>
		</tr>
		<tr>
			<td align="left" > Nickname</td>
		</tr>
		<tr>
			<td><input type="text" name="nickname" value="${member.nickname}" lass="signup-input"> <input type="button" value="중복확인" class="signup-input signup-input-button"></td>
		</tr>
		<tr>
		<td align="left" > Phone</td>
		</tr>
		<tr>
			<td>
			<input type="tel" name="phone1" maxlength="3" class="signup-input signup-input-tel">-
			<input type="tel" name="phone2" maxlength="4" class="signup-input signup-input-tel">-
			<input type="tel" name="phone3" maxlength="4" class="signup-input signup-input-tel">
			</td>
		</tr>
		<tr>
		<td> 자기소개</td>
		</tr>
		<tr>
		<td>
		<textarea size="50pt" name="intro" value="${member.intro}" class="signup-textarea"></textarea>
		</td>
		</tr>
		<tr>
			<td align="center">
				<input type="submit" value="회원가입" class="signup-input signup-input-submit"><br>
			</td>
		</tr>
	</table>
</form>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>