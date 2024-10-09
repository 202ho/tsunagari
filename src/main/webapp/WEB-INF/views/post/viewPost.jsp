<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${post.title} - 게시물 상세</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1>${post.title}</h1>
    <p>${post.content}</p>

    <c:if test="${not empty post.imagePath}">
        <img src="${post.imagePath}" alt="Post Image" class="img-fluid my-3">
    </c:if>

    <form action="/posts/${post.id}/delete" method="post" onsubmit="return confirm('정말로 이 게시물을 삭제하시겠습니까?');">
        <button type="submit" class="btn btn-danger">삭제</button>
    </form>

    <a href="/posts" class="btn btn-primary mt-3">목록으로 돌아가기</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
