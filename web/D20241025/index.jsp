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
<a href="../D20241024/first.jsp">first.jsp 페이지로 가기</a><br>
<a href="../D20241024/second.jsp">second.jsp 페이지로 가기</a><br>
<a href="../D20241024/third.jsp">third.jsp 페이지로 가기</a><br>
<a href="../D20241024/add.jsp">third.jsp 페이지로 가기</a><br>
<a href="life">생명주기</a><br>

<form action="life" method="post">
    <input type="radio" name="gender" value="M" id="male" checked>
    <label for="male">남자</label>
    <input type="radio" name="gender" value="F" id="female">
    <label for="female">여자</label><br>
    <input type="checkbox" name="hobbies" value="reading" id="reading">
    <label for="reading">독서</label>
    <input type="checkbox" name="hobbies" value="soccer" id="soccer">
    <label for="soccer">축구</label>
    <input type="checkbox" name="hobbies" value="climbing" id="climbing">
    <label for="climbing">등산</label><br>
    <select name="jobs" multiple>
        <option value="">직업을 선택해 주세요</option>
        <option value="noJob">백수</option>
        <option value="student">학생</option>
        <option value="army">군인</option>
        <option value="employee">회사원</option>
    </select><br>
    <input type="text" name="userName" placeholder="이름을 쓰제잉~">
    <input type="submit" value="발사">
</form>
</body>