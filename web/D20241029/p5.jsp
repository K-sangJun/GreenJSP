<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 4:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>좋아하는 영화 목록</h1>
        <hr>
        ${paramValues.movies[0]}<br>
        <table border="1">
            <thead>
                <tr>
                    <th>index</th>
                    <th>count</th>
                    <th>title</th>
                </tr>
            </thead>
            <tbody>
                <%-- 반복시작 --%>
                <c:forEach var="movies" items="${paramValues.movies}" varStatus="status">
                    <tr>
                        <td>${status.index}</td>
                        <td>${status.count}</td>
                        <td>${movies}</td>
                    </tr>
                </c:forEach>
                <%-- 반복 끝 --%>
            </tbody>
        </table>
    </body>
</html>
