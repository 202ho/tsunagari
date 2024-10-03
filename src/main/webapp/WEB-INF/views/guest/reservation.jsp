<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link href="/resources/css/reservation.css" rel="stylesheet" type="text/css">
<script src="/resources/js/reservation.js"></script>
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>


    <div class="reservation-layout">
    <div class="reservation-content">

        <div class="title-box">
            <h5 style="margin:0;">나의 예약</h5>
        </div>

        <c:if test="${listCnt != 0}">
            <div class="reservation-item-box">
                <c:forEach var="item" items="${list}" varStatus="status">

                    <div class="reservation-item ${status.index % 2 == 0 ? 'even' : 'odd'}" data-activity-id="${item.id}">

                        <div class="reservation-item-img-box-layout">
                            <div class="reservation-item-img-box">
                                <img src="${item.thumbnail}">
                            </div>
                        </div>

                        <div class="reservation-item-info-box">
                            <div class="reservation-item-date">
                                <p>${item.date}</p>
                            </div>

                            <div class="reservation-item-title">
                                <p>${item.title}</p>
                            </div>

                            <div class="reservation-item-address">
                                <p>${item.address}</p>
                            </div>

                            <div class="reservation-item-button-box">
                                <p>취소</p>
                            </div>
                        </div>

                    </div>

                </c:forEach>
            </div>

            <nav aria-label="Page navigation " style="margin-top:50px;">
                <ul class="pagination">
                    <li class="page-item ${prevDisabled}">
                        <a class="page-link" href="${pageLink}?page=${page-1}&currentPage=${0}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <c:forEach var="pageIdx" begin="0" end="${pageCnt}">
                        <c:set var="active" value="active" />
                        <c:set var="deactivate" value=" " />
                        <li class="page-item"><a class="page-link ${pageIdx == currentPage ? active : deactivate}" href="${pageLink}?page=${page}&currentPage=${pageIdx}">
                                ${pageIdx+1 +(page*5)}</a>
                        </li>
                    </c:forEach>
                    <li class="page-item ${nextDisabled}">
                        <a class="page-link" href="${pageLink}?page=${page+1}&currentPage=${0}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </c:if>

        <c:if test="${listCnt == 0}">
            <div style="margin-top: 120px;">예약이 없습니다.</div>
        </c:if>
    </div>
    </div>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>