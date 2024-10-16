<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/slick.css">
<script src="/resources/js/activity.js"></script>
<script src="/resources/js/slideSlick.js"></script>
</head>

<body>

    <!-- header -->
    <%@ include file="/WEB-INF/views/common/header.jsp" %>


    <!-- main -->
    <div class="activity-layout" style="display: flex; justify-content: center;">


        <main>
            <div class="slick-slider">
                <div id="carouselExample" class="carousel slide h-100">
                    <div class="carousel-inner h-100">
                        <c:forEach var="boardItem" items="${boardList}" varStatus="status">
                            <div class="carousel-item h-100 ${status.index == 0 ? 'active' : ''}">
                                <a href="${boardItem.link}">
                                    <img src="/resources/image/board/${boardItem.image}" class="d-block w-100 h-100" alt="...">
                                </a>
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

                <c:forEach var="i" begin="1" end="11">
                    <c:set var="categoryItem" value="${categoryList[i]}" />
                    <div class="categorywon">
                        <a class="categories-search-btn" href="/activity/list?categoryid=${categoryItem.id}">
                            <img src="${categoryItem.image}" class="categoryImg">
                        </a>
                        <div>${categoryItem.name}</div>
                    </div>

                </c:forEach>
                <div class="categorywon">
                    <a href="/categories">
                        <div class="category-all-circle"><svg width="34" height="36" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect x="3.05" y="4.05" width="11.65" height="11.65" rx="1.95" stroke="#FE8256" stroke-width="2.1"></rect>
                                <rect x="3.05" y="20.3" width="11.65" height="11.65" rx="1.95" stroke="#FE8256" stroke-width="2.1"></rect>
                                <rect x="19.3" y="4.05" width="11.65" height="11.65" rx="1.95" stroke="#FE8256" stroke-width="2.1"></rect>
                                <rect x="19.3" y="20.3" width="11.65" height="11.65" rx="1.95" stroke="#FE8256" stroke-width="2.1"></rect>
                            </svg></div>
                    </a>
                    <div>전체보기</div>
                </div>
            </section>


            <div class="activity-recommend-section">
                <div class="activity-recommend">🤩 &nbsp; 인기 많은 액티비티</div>
                <div class="activity-categories" onclick="location.href='/activity/list'">전체보기</div>
            </div>
            <div class="main-activity-item-box">
                <c:forEach var="activityItem" items="${accList}">

                    <div class="activity-item" data-activity-id="${activityItem.id}">
                        <div class="activity-item-img-box">
                            <div class="activity-item-img-box-layout">
                                <img src="${activityItem.thumbnail}">
                            </div>
                        </div>

                        <div class="activity-item-city">
                            <span>${activityItem.city}</span>
                        </div>
                        <div class="activity-item-title">
                            ${activityItem.title}
                        </div>
                        <div class="activity-item-price">
                            ${activityItem.price}원
                        </div>
                    </div>
                </c:forEach>
            </div>
        </main>
    </div>

    <!-- footer -->
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

</body>

</html>