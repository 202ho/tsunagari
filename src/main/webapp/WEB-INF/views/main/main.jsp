<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/layout.css">
<link rel="stylesheet" href="resources/css/main.css">
<title>tsunagari</title>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <main>

        <section class="movecontents">
            <div class="컨텐츠1">이미지 1</div>
            <div class="컨텐츠1">이미지 2</div>
            <div class="컨텐츠1">이미지 3</div>
        </section>

        <!--카테고리 나열 칸-->
        <section class="category">

            <div class="categorywon">
                <a href="#"><img src="" class="categoryImg"></a>
                <h3>카테고리1</h3>
            </div>
            <div class="categorywon">
                <a href="#"><img src="" class="categoryImg"></a>
                <h3>카테고리2</h3>
            </div>
            <div class="categorywon">
                <a href="#"><img src="" class="categoryImg"></a>
                <h3>카테고리3</h3>
            </div>
            <div class="categorywon">
                <a href="#"><img src="" class="categoryImg"></a>
                <h3>카테고리4</h3>
            </div>
            <div class="categorywon">
                <a href="#"><img src="" class="categoryImg"></a>
                <h3>카테고리5</h3>
            </div>
            <div class="categorywon">
                <a href="#"><img src="" class="categoryImg"></a>
                <h3>카테고리6</h3>
            </div>
            <div class="categorywon">
                <a href="#"><img src="" class="categoryImg"></a>
                <h3>카테고리7</h3>
            </div>
            <div class="categorywon">
                <a href="/categories"><img src="" class="categoryImg"></a>
                <h3>전체보기</h3>
            </div>

        </div>
        
        </section>
        <!--플렉스 컨테이너를 이용해서 상하 좌우 간격 맞추기-->
        <article class="content">
            <div class="컨텐츠2"><a href=""></a></div>
            <div class="컨텐츠2">컨텐츠 2</div>
            <div class="컨텐츠2">컨텐츠 3</div>
            <div class="컨텐츠2">컨텐츠 4</div>
        </article>

    </main>

    <footer>
        <nav>
            <p>
                <!--로고이미지 + 내용-->
                <img src="#" alt="츠나가리"><br>
                <span>제작 팀 : 202호</span><br>
                <span>CopyWrite 2024. cocoder. All Rights Reserved.</span>

            </p>


        </nav>
    </footer>

</body>
</html>