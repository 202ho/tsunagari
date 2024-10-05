<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link rel="stylesheet" href="/resources/css/layout.css">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/slick.css">
<script src="/resources/js/activity.js"></script>
<script src="/resource/js/slideSlick.js"></script>

</head>
<body>
 <%@ include file="/WEB-INF/views/common/header.jsp" %>
 <div class="activity-layout" style="display: flex; justify-content: center;">


    <main>
      <div class ="slick-slider">
         <div id="carouselExample" class="carousel slide h-100">
             <div class="carousel-inner h-100">
                 <c:forEach var="activityItem" items="${accList}" varStatus="status">
                     <div class="carousel-item h-100 ${status.index == 0 ? 'active' : ''}">
                       <a href="#">
                            <img src="${activityItem.thumbnail}" class="d-block w-100 h-100" alt="...">
                            <div class="carousel-caption-custom">
                                <h2>${activityItem.title}</h2>
                       </a>
                            </div>
                     </div>
                 </c:forEach>

  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

        </div>

 <section class="category">
        <c:forEach var="categoryamount" items="${cateamount}">
            <div class="categorywon">
                            <a class="categories-search-btn" href="#" data-name="${categoryamount.name}">
                            <img src="${activity.thumbnail}" class="categoryImg">요가</a>
                        </div>
        </c:forEach>

            <div class="categorywon">
                <a href="/categories">
                <img src="${categories.image}" class="categoryImg">전체보기</a>
            </div>

        </section>

<!--
        <section class="category">
        <c:forEach var="category" items="${categoryList}">
            <div class="categorywon">
                            <a class="categories-search-btn" href="#" data-name="${category.name}">
                            <img src="${category.image}" class="categoryImg">요가</a>
                        </div>
        </c:forEach>
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
    -->


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