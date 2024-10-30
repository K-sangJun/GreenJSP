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
    <title>Index</title>
</head>

<style>

</style>
<body>
<h1>Index</h1>
<a href="p1.jsp">p1</a><br>
<a href="bean_test.jsp">bean_test</a><br>
<a href="main.jsp">main</a><br>
<a href="elTest.jsp?x=4">elTest</a><br>
<a href="color.jsp">color</a><br>
<a href="p2.jsp">p2</a><br>
<a href="login.jsp">login</a><br>
<a href="index2.jsp">index2</a><br>
<hr>

<form action="/D20241029/reg.jsp" method="post">
    <input type="text" name="id" value="hgd"><br>
    <input type="password" name="pw" value="1234"><br>
    <input type="text" name="name" value="홍길동"><br>
    <input type="submit" value="등록">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" value="초기화">
</form>
</body>