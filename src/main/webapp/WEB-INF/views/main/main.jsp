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
        <c:forEach var="activity" items="${accList}">
            <div class="categorywon">
               <a class="categories-search-btn" href="#" data-name="${activity.title}">
                 <img src="${activity.thumbnail}" class="categoryImg">${activity.title}</a>
            </div>
        </c:forEach>

            <div class="categorywon">
                <a href="/categories">
                <img src="${categories.image}" class="categoryImg">전체보기</a>
            </div>
 </section>
    <div class="activity-item-box">
        <c:forEach var="activityItem" items="${accList}">
            <div class="activity-item" data-activity-id="${activityItem.id}">
                <div class="activity-item-img-box">
                    <div class="activity-item-img-box-layout">
                        <img src="${activityItem.thumbnail}">
                        <div class="activity-item-like" data-activity-id="${activityItem.id}"></div>
                    </div>
                </div>
                 <div class="activity-item-city">
                    <p>${activityItem.city}</p>
                 </div>
                 <div class="activity-item-title">
                    <p>${activityItem.title}</p>
                 </div>
                 <div class="activity-item-price">
                    <p>${activityItem.likecount}</p>
                 </div>
            </div>
        </c:forEach>
    </div>
</main>
</div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>