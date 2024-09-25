<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link href="/resources/css/auth.css" rel="stylesheet" type="text/css">
</head>

<body>

    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <div class="auth-form-layout">
        <h4 class="m-5">로그인</h4>

        <form action="/login" name="regForm" method="post" class="auth-form">
            <div class="input-group mb-3">
                <input type="text" class="form-control auth-input" name="email" placeholder="이메일">
            </div>

            <div class="input-group  mb-3">
                <input type="password" class="form-control auth-input" id="r-password1" name="password" placeholder="비밀번호">
            </div>

            <button type="submit" class="btn btn-primary auth-btn mt-3 w-100" style="background-color: #2E8EE5; border-color: #2E8EE5; ">로그인!</button>

        </form>
    </div>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

</body>

</html>