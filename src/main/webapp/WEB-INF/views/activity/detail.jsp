<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<link rel="stylesheet" href="/resources/css/detail.css">
<link rel="stylesheet" href="/resources/css/layout.css">
<script src="/resources/js/activity.js"></script>
<link href="/resources/css/detail.css" rel="stylesheet" type="text/css">
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
 <div class="activity-layout" style="display: flex; justify-content: center;">

    <div class="activity-detail">
        <div class="activity-thumbnail">
            <img src="${activity.thumbnail}" alt="Activity Thumbnail">
        </div>
        <h1><b>${activity.title}</b></h1>
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
            ${activity.content}
        </div>
        <hr>

        <h1>오시는 길</h1>
        <div class="activity-map">
            <!-- 구글 맵 들어갈 자리 -->
        </div>
        <hr>
        <div class="activity-category">
            Categories: ${activity.category}
        </div>
    </div>
</div>
  <!--<div>
    <a href="/reservation/form?activityId=${id}" class="btn btn-primary">예약하기</a>
    </div> -->

    <div class="Wrapper-Floating-Act">
        <div class="Wrapper-Floating-btn">
            <button class="Wrapper-Floating-btn-btn" onclick="location.href='/reservation/form?activityId=${id}';">
            <div class="submit-btn">예약하기</div>
        </div>
    </div>

<!-- End layout -->
</div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>