<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="activity-list-container">

    <c:forEach var="activityItem" items="${activityList}">

            <div class="activity-item">
                <div class="activity-item-img-box">
                    <img src="${activityItem.thumbnail}">
                    <div class="activity-item-like" data-activity-id="${activityItem.id}"></div>
                </div>
                <div class="activity-item-city">
                    <p>${activityItem.city}</p>
                </div>
                <div class="activity-item-title">
                    <p>${activityItem.title}</p>
                </div>
                <div class="activity-item-price">
                    <p>${activityItem.price}</p>
                </div>
            </div>

     </c:forEach>
</div>