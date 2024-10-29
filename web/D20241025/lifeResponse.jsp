<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-25
  Time: 오전 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>lifeResponse 서블릿의 응답페이지</h1>
<hr>
<% String name = request.getParameter("userName");%>
<% String gender = request.getParameter("gender");%>
<% String[] hobbies = request.getParameterValues("hobbies");%>
<% String[] jobs = request.getParameterValues("jobs");%>

<p>이름 : <%= name%></p>
<p>성별 : <%= gender%></p>
<p>취미 : <%= String.join(", ", hobbies)%></p>
<p>직업 : <%= String.join(", ", jobs)%></p>
</body>
</html>
