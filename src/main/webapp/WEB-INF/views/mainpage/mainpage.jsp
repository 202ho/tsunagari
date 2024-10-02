<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>회원가입</title>
<link href="resources/css/signup.css" rel="stylesheet" type="text/css">
<link href="resources/css/mainpage.css" rel="stylesheet" type="text/css">
<script src="resources/js/signup.js"></script>
</head>
<body>
<div class="sidebar">
    <div class="user-info">
        <h2>닉네임</h2>
        <p>이메일@example.com</p>
    </div>
    <ul class="menu">
        <li><a href="#member-info">회원 정보</a></li>
        <li><a href="#reservation-history">예약 내역</a></li>
        <li><a href="#host-application">호스트 신청</a></li>
        <div class="logout-container"> <!-- 로그아웃 컨테이너 추가 -->
            <li class="small-link"><a href="#logout">로그아웃</a></li>
            <li class="small-link"><a href="#withdraw">회원탈퇴</a></li>
        </div>
    </ul>
</div>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
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
			<td><input type="text" name="email" class="signup-input"> <input type="button" value="중복확인" class="signup-input signup-input-button"></td>
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
			<td><input type="text" name="nickname" class="signup-input"> <input type="button" value="중복확인" class="signup-input signup-input-button"></td>
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
		<textarea size="50pt" name="intro" class="signup-textarea"></textarea>
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