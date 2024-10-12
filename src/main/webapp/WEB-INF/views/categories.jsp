<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link rel="stylesheet" href="/resources/css/categories.css">
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <h2 class="category-title">카테고리</h2><br>
        <section class="category">
            <c:forEach var="category" items="${categories}">
                <div class="categorybox">
                  <a class="category-link" href="/activity/list?categoryid=${category.id}">
                        <!-- 이미지 경로를 동적으로 출력 -->
                        <img src="${pageContext.request.contextPath}${category.image}" class="categoryImg">
                    </a>
                    <h4>${category.name}</h4>
                </div>
            </c:forEach>
        </section>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>
