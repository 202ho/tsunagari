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
<link rel="stylesheet" href="resources/css/slick.css">
<script src="/resource/js/slideSlick.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<title>tsunagari</title>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="activity-layout" style="display: flex; justify-content: center;">
        <main>
        <div class ="slick-slider">

           <div class ="slick-slider-content">
           <a href = "#">
           <img id="slider-content" src="${activity.thumbnail}" alt="인기카테고리1">${activity.title}</a>
           </div>
<!--
           <div class ="slick-slider-content">
               <a href = "#">
               <img id="slider-content" src="${activity.thumbnail}" alt="인기카테고리2">${activity.title}</a>
           </div>

           <div class ="slick-slider-content">
               <a href = "#">
               <img id="slider-content" src="${activity.thumbnail}" alt="인기카테고리3">${activity.title}</a>
           </div>
-->
        </div>

        <!--카테고리 나열 칸-->
        <section class="category">
            <div class="categorywon">
                <a class="categories-search-btn" href="#" data-name="${activity.name}">
                <img src="${categories.image}" class="categoryImg">요가</a>
            </div>
            <div class="categorywon">
                 <a class="categories-search-btn" href="/activity/list?search=등산" data-name="Hiking Adventure">
                 <img src="${categories.image}" class="categoryImg">등산</a>
             </div>
             <div class="categorywon">
                  <a class="categories-search-btn" href="/activity/list?search=요가" data-name="Yoga Retreat">
                  <img src="${categories.image}" class="categoryImg">요가</a>
             </div>
             <div class="categorywon">
                  <a class="categories-search-btn" href="/activity/list?search=와인" data-name="Wine Tasting tour">
                  <img src="${categories.image}" class="categoryImg">와인</a>
             </div>
            <div class="categorywon">
                <a href="/categories">
                <img src="${categories.image}" class="categoryImg">전체보기</a>
                <h3>전체보기</h3>
            </div>

        </section>

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
                    </c:forEach>
                 </c:if>
          </main>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>