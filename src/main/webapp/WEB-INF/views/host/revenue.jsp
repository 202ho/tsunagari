<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
<script src="/resources/js/revenue.js"></script>
<link href="/resources/css/revenue.css" rel="stylesheet" type="text/css">
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="revenue-layout">
        <h5>정산 관리</h5>
        <div class="revenue-nav">
            <div class="btn btn-light border revenue-nav-prev"><</div>
            <div class="revenue-nav-date" style="font-size:1.25rem;">2024-10</div>
            <div class="btn btn-light border revenue-nav-next">></div>
        </div>
        <div class="month-revenue">
            <canvas class="revenue-info" id="revenue-chart" ></canvas>
            <div class="revenue-info">
                <ul class="list-group">
                    <li class="list-group-item list-group-item-dark "><span>총 수익  : </span><span>10</span></li>
                    <li class="list-group-item "><span>타이틀1 : </span><span>1000</span></li>
                    <li class="list-group-item "><span>타이틀2 : </span><span>2000</span></li>
                    <li class="list-group-item "><span>타이틀3 : </span><span>1000</span></li>
                </ul>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>