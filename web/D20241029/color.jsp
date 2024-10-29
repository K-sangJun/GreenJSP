<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("color", "red");
    pageContext.setAttribute("msg", "Hello~");
%>

<html>
<head>
    <title>Title</title>
</head>
<style>
    h1 {
        color: ${pageScope.color}
    }
</style>
<body>
<h1>Color Page</h1>
<hr>
<button onclick="f()">버튼</button>
<form action="/D20241029/color_p1.jsp" method="post">
    <select name="color">
        <option value="red">빨강</option>
        <option value="yellow">노랑</option>
        <option value="green">초록</option>
    </select>
    <input type="submit" value="제출">
</form>
</body>
</html>

<script>
    function f() {
        alert("${pageScope.msg}")
    }

</script>
