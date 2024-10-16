<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link href="resources/css/signup.css" rel="stylesheet" type="text/css">
<script src="resources/js/signup.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<form action="/signup" name="regForm" method="post" class="signup-form" onsubmit="validateForm(event)" enctype="multipart/form-data">
    <input type="hidden" name="csrf_token" value="${sessionScope.csrfToken}" />
    <input type="hidden" name="phone" value="">
	<table>

	
		<tr>
			<td align="center">
			    <h4>회원가입</h4>
			</td>
		</tr>
		<tr>
            <td align="center">
                <img id="profileImage" src="/resources/image/proflie_image.png" alt="Profile Image" style="display:block; width: 100px; height: 100px; border-radius: 50%;">
            </td>
        </tr>
        <tr>
            <td align="center">
                <input type="file" id="memberimage" name="memberimage" accept="image/*" onchange="previewImage(event)" style="display:none;">
                <label for="memberimage" class="signup-input signup-input-button" style="display: flex; justify-content: center; align-items: center; cursor: pointer; user-select: none;">사진 선택</label>
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
		    <td><input type="text" name="verifycode" class="signup-input"><div id="timer" style="margin-left: 10px; font-size: 12px; color: gray;"></div></td>
		</tr>
		<tr>
		<td><input type="button" value="인증번호 전송" id="send-email-bnt" class="signup-input signup-input-button signup-input-veritycode">
        <input type="button" value="인증번호 확인" id="check-veritycode-bnt" class="signup-input signup-input-button signup-input-veritycode"></td>
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