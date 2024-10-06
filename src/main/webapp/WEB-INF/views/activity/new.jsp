<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link href="/resources/css/newActivity.css" rel="stylesheet" type="text/css">
<script src="/resources/js/activity.js"></script>
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="new-activity-layout">
        <div class="new-activity-content">
            <h5>새로운 액티비티 등록</h5>
            <form>
                <div class="new-form-item border-bottom">
                    <div class="new-form-label ">제목</div>
                    <div class="new-form-data-box">
                        <input type="text" class="form-control">
                    </div>
                </div>

                <div class="new-form-item border-bottom">
                    <div class="new-form-label">대표사진</div>
                    <div class="new-form-data-box ">
                        <input type="file" class="form-control">
                    </div>
                </div>

                <div class="new-form-item border-bottom">
                    <div class="new-form-label">카테고리</div>
                    <div class="new-form-data-box">
                        <c:forEach var="category" items="${categoryList}" varStatus="status">
                            <div class="form-check-category">
                                <input class="form-check-input" type="radio" name="category" id="${category.id}" <c:if test="${status.first}">checked</c:if> >
                                <label class="form-check-label" for="${category.id}">
                                    ${category.name}
                                </label>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <div class="new-form-item border-bottom">
                    <div class="new-form-label">소개</div>
                    <div class="input-group new-form-data-box">
                        <textarea class="form-control" style="height:150px;"></textarea>
                    </div>
                </div>

                <div class="new-form-item border-bottom">
                    <div class="new-form-label">주소</div>
                    <div class="new-form-data-box">
                        <div class="new-form-address" style="width:150px">
                            <input type="text" id="new-form-address-zipcode" class="form-control" readonly placeholder="우편번호">
                        </div>
                        <div class="new-form-address" style="width: 600px">
                            <button type="button" id="new-form-address-btn" class="btn btn-light border-secondary-subtle">주소찾기</button>
                        </div>
                        <div class="new-form-address" style="width: 45%;">
                            <input type="text"  id="new-form-address-address" class="form-control" readonly placeholder="주소">
                        </div>
                        <div class="new-form-address" style="width: 45%;">
                            <input type="text" id="new-form-address-address2" class="form-control" placeholder="상세 주소">
                        </div>
                        <input type="hidden" id="new-form-address-x" readonly>
                        <input type="hidden" id="new-form-address-y" readonly>
                    </div>
                </div>

                <div class="new-form-item ">
                    <div class="new-form-title">참가비</div>
                    <div class="new-form-data-box">
                        <input type="text" class="form-control" placeholder="숫자만 입력하세요">
                    </div>
                </div>

                <div class="new-form-btn-box">
                    <div class="btn btn-primary">등록하기</div>
                </div>

            </form>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>