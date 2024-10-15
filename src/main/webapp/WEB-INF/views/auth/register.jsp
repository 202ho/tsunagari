<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link href="/resources/css/auth.css" rel="stylesheet" type="text/css">
<script src="/resources/js/auth.js"></script>
</head>

<body>

    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <div class="auth-form-layout">
        <h4 class="m-5">회원가입</h4>

        <div  class="auth-form">
            <div class="input-group mb-3">
                <input type="email" id="r-email"  class="form-control auth-input" placeholder="이메일">
                <button class="btn btn-outline-secondary" type="button" id="register-email-check-btn" style="font-size:14px;">중복체크</button>
            </div>

            <input type="hidden" id="email-check-result" value="N">


            <div class="input-group  mb-3">
                <input type="password" class="form-control auth-input" id="r-password1"  placeholder="비밀번호">
            </div>


            <div class="input-group  mb-3">
                <input type="password" class="form-control auth-input" id="r-password2" placeholder="비밀번호 확인">
            </div>


            <div class="input-group mb-3">
                <input type="text" class="form-control auth-input" id="r-nickname" placeholder="닉네임">
            </div>


            <button type="button" class="btn btn-primary auth-btn mt-3 w-100" id="register-btn" style="background-color: #2E8EE5; border-color: #2E8EE5; ">시작하기!</button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

</body>

</html>