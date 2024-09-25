<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="activity-list-container" style="padding: 10px;">
    <div class="title-box">
        <h5>${title}</h5>
    </div>

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

            <nav aria-label="Page navigation ">
                <ul class="pagination">
                    <li class="page-item ${prevDisabled}">
                        <a class="page-link" href="/activity/list?page=${page-1}&currentPage=${0}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <c:forEach var="pageIdx" begin="0" end="${pageCnt}">
                        <c:set var="active" value="active" />
                        <c:set var="deactivate" value=" " />
                        <li class="page-item"><a class="page-link ${pageIdx == currentPage ? active : deactivate}" href="/activity/list?page=${page}&currentPage=${pageIdx}">
                                ${pageIdx+1 +(page*3)}</a>
                        </li>
                    </c:forEach>
                    <li class="page-item ${nextDisabled}">
                        <a class="page-link" href="/activity/list?page=${page+1}&currentPage=${0}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>

    </c:if>

    <c:if test="${activityCnt == 0}">
        <div style="margin-top: 120px;">액티비티가 없습니다.</div>
    </c:if>
</div>