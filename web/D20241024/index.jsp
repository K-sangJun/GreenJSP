<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-24
  Time: 오후 2:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<style>
    h1 {
        color: red;
    }
</style>
<body>
<h1>Index Page</h1>
<%
    String name = "scriptlet(스크립틀릿)";
    String name2 = "expression tag(표현식 태그)";

%>
<p>이름은 <%=name %> 입니다. </p>
<p>이름2은 <%=name2 %> 입니다. </p>
<hr>
<a href="D20241024/first.jsp">first.jsp 페이지로 가기</a>
<a href="D20241024/second.jsp">second.jsp 페이지로 가기</a>
<a href="D20241024/third.jsp">third.jsp 페이지로 가기</a>
<a href="D20241024/add.jsp">third.jsp 페이지로 가기</a>
</body>