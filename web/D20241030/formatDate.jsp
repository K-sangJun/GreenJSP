<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-30
  Time: 오전 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <c:set var="now" value="<%=new java.util.Date() %>" />
        현재시각: ${now}<br>
        <fmt:formatDate value="${now}" /><br>
        <fmt:formatDate value="${now}" type="date" /><br>
        <fmt:formatDate value="${now}" type="time" /><br>
        <fmt:formatDate value="${now}" type="both" /><br>
        <hr>
        default: <fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default" /><br>
        short: <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short" /><br>
        medium: <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium" /><br>
        long: <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long" /><br>
        full: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /><br>
        <hr>
        pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초"<br>
        <fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"/>
    </body>
</html>
