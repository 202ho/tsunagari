<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/docHead.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js"></script>
<script src="/resources/js/revenue.js"></script>
<link href="/resources/css/revenue.css" rel="stylesheet" type="text/css">
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="revenue-layout">
        <h5>정산 관리</h5>
        <div class="month-revenue">
            <canvas class="month-revenue-chart" id="three-month-revenue" ></canvas>
            <canvas class="month-revenue-chart" id="one-month-revenue" ></canvas>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>