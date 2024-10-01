<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/layout.css">
<link rel="stylesheet" href="resources/css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/resources/js/activity.js"></script>
<title>tsunagari</title>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <main>
      <div class="activity-layout" style="display: flex; justify-content: center;">
  <section class="movecontents">
   <div class="row">
       <c:forEach var="activity" items="${activities}" varStatus="status">
           <c:if test="${status.index < 3}">
               <div class="col-md-4">
                   <a href="#">
                       <img src="${activity.thumbnail}" alt="${activity.title}" class="img-thumbnail">
                   </a>
                   <p>${activity.title}</p>
               </div>
           </c:if>
       </c:forEach>
   </div>
  </section>


        <!--카테고리 나열 칸-->
        <section class="category">

            <div class="categorywon">
                <a href="/categories/${id}"><img src="${categories.image}" class="categoryImg"></a>
                <h3>카테고리1</h3>
            </div>
            <div class="categorywon">
                <a href="/categories/${id}"><img src="" class="categoryImg"></a>
                <h3>카테고리2</h3>
            </div>
            <div class="categorywon">
                <a href="/categories/${id}"><img src="" class="categoryImg"></a>
                <h3>카테고리3</h3>
            </div>
            <div class="categorywon">
                <a href="/categories/${id}"><img src="" class="categoryImg"></a>
                <h3>카테고리4</h3>
            </div>
            <div class="categorywon">
                <a href="/categories/${id}"><img src="" class="categoryImg"></a>
                <h3>카테고리5</h3>
            </div>
            <div class="categorywon">
                <a href="/categories/${id}"><img src="" class="categoryImg"></a>
                <h3>카테고리6</h3>
            </div>
            <div class="categorywon">
                <a href="/categories/${id}"><img src="" class="categoryImg"></a>
                <h3>카테고리7</h3>
            </div>
            <div class="categorywon">
                <a href="/categories"><img src="" class="categoryImg"></a>
                <h3>전체보기</h3>
            </div>

        </div>

        </section>
        <!--플렉스 컨테이너를 이용해서 상하 좌우 간격 맞추기-->
/*
    <c:if test="${activityCnt != 0}">
         <div class="activity-item-box">
                <c:forEach var="activityItem" items="${activityList}">

                    <div class="activity-item" data-activity-id="${activityItem.id}">
                        <div class="activity-item-img-box">
                            <div class="activity-item-img-box-layout">
                                <img src="${activityItem.thumbnail}">
                                <div class="activity-item-like" data-activity-id="${activityItem.id}" ></div>
                            </div>
                        </div>
  */

        </div>
    </main>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>