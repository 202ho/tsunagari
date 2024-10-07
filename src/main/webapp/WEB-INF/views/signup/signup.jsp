<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link href="resources/css/signup.css" rel="stylesheet" type="text/css">
<script src="resources/js/signup.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<form action="/signup" name="regForm" method="post" class="signup-form" onsubmit="validateForm(event)">
    <input type="hidden" name="csrf_token" value="${sessionScope.csrfToken}" />
    <input type="hidden" name="phone" value="">
	<table>
		<tr>
			<td align="center">
			    <h4>회원가입</h4>
			</td>
		</tr>
		<tr>
		<td align="left"> Email </td>
		</tr>
		<tr>
			<td><input type="text" name="email" class="signup-input"> <input type="button" value="중복확인" id="register-email-check-btn" class="signup-input signup-input-button"></td>
		</tr>
		<input type="hidden" id="email-check-result" value="N">
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
			<td>
			<input type="text" name="nickname" class="signup-input">
			<input type="button" value="중복확인" id="nickname-check-btn" class="signup-input signup-input-button">
			</td>
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