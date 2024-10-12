<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
</div>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous">

<link rel="stylesheet" href="/resources/css/categories.css">
<link rel="stylesheet" href="/resources/css/layout.css">


<!DOCTYPE html>
<html>
<head>
<br>
    <title>카테고리 목록</title>

    <style>
    a{ width:150%;
    .categoryImg{
         filter:brightness(0.7);
         width:100%;
         height:auto;
      }
    }

    </style>


</head>
<body>
    <h2 class="category-title">카테고리</h2><br>
        <section class="category">
            <c:forEach var="category" items="${categories}">
                <div class="categorybox">
                  <a href="/categories/${category.id}/activities">
                        <!-- 이미지 경로를 동적으로 출력 -->
                        <img src="${pageContext.request.contextPath}${category.image}" class="categoryImg">
                    </a>
                    <h4>${category.name}</h4>
                </div>
            </c:forEach>
        </section>

</body>

</div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>
