<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link rel="stylesheet" href="/resources/css/detail.css">
<link rel="stylesheet" href="/resources/css/layout.css">
<script src="/resources/js/activity.js"></script>
<script src="/resources/js/googlemap.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRq8roIjbUxN7FVN0L6AoiaOclx2eorXk&callback=initMap"></script>
<script src="https://www.line-website.com/social-plugins/js/thirdparty/loader.min.js" async="async" defer="defer"></script>
<script>
$(document).ready(function() {
    myMap("${activity.x}", "${activity.y}", "어딘가의 주소");
});
</script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
 <div class="activity-layout" style="display: flex; justify-content: center;">

    <div class="activity-detail">
        <div class="activity-thumbnail">
            <img src="${activity.thumbnail}" alt="Activity Thumbnail">
        </div>

        <h1><b>${activity.title}</b></h1>
        <div class="line-it-button"
               data-lang="ko"
               data-type="share-a"
               data-ver="3"
               data-url="http://3.37.57.237:8080/activity/detail/${activity.id}"
               data-color="default"
               data-count="false"
               style="display: none;"></div>

        <hr>
        <div class="detail-address-container">
        <div class="detail-address">${activity.address}</div>
        </div>

        <div class="activity-host">
        <div class="activity-host-photo"><img src="" alt="hostPhoto">
        </div>
        <div class="activity-host-intro">
            <div>
            <div class="hostid">
            <div class="host-wording">호스트</div>
            ${activity.hostid}</div>
            <!-- 호스트로 저장된 후에 작성된 호스트 자기소개 member에 저장된게 맞는지?-->
            <div class="host-intro">호스트 자기소개</div>
        </div>
        </div>
        </div>
<!--
        <div class="detailPage-float" id="floating-index-btn">
        <ul class="datailpage-ul">
            <li id="titleMD">컨텐츠 소개</li>
            <li id="titleMD">오시는 길</li>
            <li id="titleMD">예약 내역</li>
        </ul>
        </div>
-->
        <hr>
        <h1>컨텐츠 소개 </h1>
        <div class="activity-content">
            <p style="white-space:pre-line;" >${activity.content}</p>

        </div>
        <hr>

        <!-- 구글 맵 들어갈 자리 -->
        <h1>오시는 길</h1>
        <div class="google-Map" id="googleMap" style="width:100%; height: 400px;">
        </div>

        <hr>

    </div>
</div>

    <div class="Wrapper-Floating-Act">
        <div class="Wrapper-Floating-btn">
            <button class="Wrapper-Floating-btn-btn" onclick="location.href='/reservation/form?activityId=${id}';">
            <div class="submit-btn">예약하기</div>
        </div>
    </div>

  <!--<div>
    <a href="/reservation/form?activityId=${id}" class="btn btn-primary">예약하기</a>
    </div> -->


<!-- End layout -->
</div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

</body>

</html>