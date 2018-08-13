<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.css" type="text/css"
          rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <form action="book/delete" method="post">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>ISBN</th>
                <th>Author</th>
                <th>Type</th>
                <th>Release</th>
                <th>Pages</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="book" items="${books}" varStatus="loop">
                <tr>
                    <th scope="row">${loop.index + 1}</th>
                    <td>${book.title}</td>
                    <td>${book.isbn}</td>
                    <td>${book.author.displayName}</td>
                    <td>${book.category}</td>
                    <td>${book.release}</td>
                    <td>${book.pages}</td>
                    <td><input class="form-check-input" type="radio" name="bookId" value="${book.id}" checked></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <a href="/book/add/view"><input type="button" class="btn btn-outline-success" name="action" value="ADD"></a>
        <a href="/book/add/view"><input type="button" class="btn btn-outline-warning" name="action" value="UPDATE"></a>
        <input type="submit" class="btn btn-outline-danger" name="action" value="DELETE">
    </form>
</div>
</body>
</html>
