<%@ include file="/WEB-INF/views/common/header.jsp" %>
<h1>Posts</h1>
<table class="table">
    <thead>
        <tr>
            <th>Title</th>
            <th>Content</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="post" items="${posts}">
            <tr>
                <td><a href="/posts/${post.id}">${post.title}</a></td>
                <td>${post.content}</td>
                <td>
                    <form action="/posts/${post.id}/delete" method="post">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</div>
</body>
</html>
