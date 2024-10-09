<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Post</title>
    <link rel="stylesheet" href="/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1>새 게시물 작성</h1>
   <form action="/posts" method="post" enctype="multipart/form-data">
       <!-- 제목 입력 -->
       <label for="title">Title:</label>
       <input type="text" id="title" name="title" required><br><br>

       <!-- 게시물 내용 입력 -->
       <label for="content">Content:</label><br>
       <textarea id="content" name="content" rows="10" cols="50" required></textarea><br><br>

       <!-- 사진 업로드 -->
       <label for="image">Upload Image:</label>
       <input type="file" id="image" name="image" accept="image/*" required><br><br>

       <!-- 제출 버튼 -->
       <button type="submit">Create Post</button>
   </form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
