<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
</div>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous">

<style>
    .category {
        display: flex;
        flex-wrap: wrap; /* 항목이 줄 바꿈되도록 설정 */
        gap: 15px; /* 항목 간의 간격 */
        max-width: 1000px; /* 최대 너비 설정 */
        margin: 0 auto; /* 중앙 정렬을 위한 마진 */
    }
     .category-title {
            text-align: center; /* 중앙 정렬 */
            font-weight: bold; /* 두껍게 */
            color: black; /* 글자 색상을 흰색으로 변경 */
            margin-bottom: 20px; /* 아래 마진 추가 */
        }
    .categorybox {
        background-color: #f8f9fa; /* 배경 색상 */
        border: 1px solid #ced4da; /* 테두리 색상 */
        border-radius: 8px; /* 모서리 둥글기 */
        padding: 0; /* 내부 여백 제거 */
        text-align: center; /* 텍스트 중앙 정렬 */
        width: calc(25% - 15px); /* 너비를 25%로 설정하여 4열로 나열 */
        height: 100px; /* 높이를 100px로 설정 */
        overflow: hidden; /* 내용이 넘칠 경우 숨김 */
        transition: transform 0.2s; /* 부드러운 확대 효과 */
        display: flex; /* 플렉스박스 사용 */
        flex-direction: column; /* 세로 방향으로 정렬 */
        align-items: center; /* 수평 중앙 정렬 */
        justify-content: center; /* 수직 중앙 정렬 */
        position: relative; /* 절대 위치 지정할 때 기준으로 사용할 수 있도록 설정 */
    }
    .categorybox:hover {
        transform: scale(1.05); /* 마우스 오버 시 확대 */
        cursor: pointer; /* 클릭 가능하게 커서 변경 */
    }
    .categoryImg {
        width: 135%; /* 이미지 너비 조정 */
        height: 135%; /* 이미지 높이를 박스와 동일하게 설정 */
        object-fit: cover; /* 이미지 비율 유지하며 박스 가득 채움 */
    }
    .categorybox h4 {
        color: white; /* 글자 색상을 흰색으로 변경 */
        font-weight: bold; /* 두껍게 */
        margin: 0; /* 기본 마진 제거 */
        text-align: center; /* 텍스트 중앙 정렬 */
        position: absolute; /* 절대 위치 설정 */
        top: 50%; /* 상단에서 50% 위치 */
        left: 50%; /* 왼쪽에서 50% 위치 */
        transform: translate(-50%, -50%); /* 중앙으로 이동 */
    }
</style>

<!DOCTYPE html>
<html>
<head>
    <title>카테고리 목록</title>
</head>
<body>
    <h2 class="category-title">카테고리</h2><br>
    <section class="category">
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image1.jpg" class="categoryImg"></a>
            <h4>아웃도어</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image2.jpg" class="categoryImg"></a>
            <h4>피트니스</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image3.jpg" class="categoryImg"></a>
            <h4>뷰티</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image4.jpg" class="categoryImg"></a>
            <h4>공예</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image5.jpg" class="categoryImg"></a>
            <h4>스포츠</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image6.jpg" class="categoryImg"></a>
            <h4>베이킹</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image7.jpg" class="categoryImg"></a>
            <h4>취미</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image8.jpg" class="categoryImg"></a>
            <h4>온라인</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image9.jpg" class="categoryImg"></a>
            <h4>자기계발</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image10.jpg" class="categoryImg"></a>
            <h4>모임</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image11.jpg" class="categoryImg"></a>
            <h4>심리상담</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image12.jpg" class="categoryImg"></a>
            <h4>국내여행</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image13.jpg" class="categoryImg"></a>
            <h4>해외여행</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image14.jpg" class="categoryImg"></a>
            <h4>수상레포츠</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image15.jpg" class="categoryImg"></a>
            <h4>요리</h4>
        </div>
        <div class="categorybox">
            <a href="#"><img src="resources/image/cateimage/image16.jpg" class="categoryImg"></a>
            <h4>음료</h4>
        </div>
    </section>
</body>
</html>
