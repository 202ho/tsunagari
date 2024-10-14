    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/common/docHead.jsp" %>
    <link href="/resources/css/mypage.css" rel="stylesheet" type="text/css">
    <script src="/resources/js/mypage.js"></script>
    </head>
    <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <form action="/guest/mypage" name="regForm" method="post" class="signup-form" onsubmit="validateForm(event)" enctype="multipart/form-data">

        <input type="hidden" name="csrf_token" value="${sessionScope.csrfToken}" />
        <input type="hidden" name="phone" value="">

        <table>
            <tr>
                <td align="center">
                    <h4 class="mypage-title">마이페이지</h4>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <core:choose>
                    <core:when test="${not empty member.memberimage}">
                        <img id="profileImage" src="${member.memberimage}" alt="Profile Image" style="display:block; width: 100px; height: 100px; border-radius: 50%;">
                    </core:when>

                    <core:otherwise>
                        <img id="profileImage" src="/resources/image/proflie_image.png" alt="Default Profile Image" style="display:block; width: 100px; height: 100px; border-radius: 50%;">
                    </core:otherwise>
                    </core:choose>
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
                <td><input type="text" name="email" value="${member.email}" class="signup-input" readonly></td>
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
                <input type="text" name="nickname" value="${member.nickname}" class="signup-input">
                <input type="button" value="중복확인" id="nickname-check-btn" class="signup-input signup-input-button">
                <input type="hidden" id="nickname-check-result" value="">
                </td>
            </tr>
            <tr>
            <td align="left" > Phone</td>
            </tr>
            <tr>
                <td>
                <input type="tel" name="phone1" maxlength="3" value="${fn:substring(member.phone, 0, 3)}" class="signup-input signup-input-tel">-
                <input type="tel" name="phone2" maxlength="4" value="${fn:substring(member.phone, 4, 8)}" class="signup-input signup-input-tel">-
                <input type="tel" name="phone3" maxlength="4" value="${fn:substring(member.phone, 9, 13)}" class="signup-input signup-input-tel">
                </td>
            </tr>
            <tr>
            <td> 자기소개</td>
            </tr>
            <tr>
            <td>
            <textarea size="50pt" name="intro" class="signup-textarea">${member.intro}</textarea>
            </td>
            </tr>
            <tr>
                <td align="center">
                    <input type="submit" value="수정하기" class="signup-input signup-input-submit"><br>
                </td>
            </tr>
        </table>
    </form>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </body>
    </html>