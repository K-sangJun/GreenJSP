<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <form action="p4.jsp" method="post">
            <input type="radio" name="fruit" value="apple">사과<br>
            <input type="radio" name="fruit" value="orange">오렌지<br>
            <input type="radio" name="fruit" value="pair">배<br>
            <input type="radio" name="fruit" value="banana">바나나<br>
            <input type="submit" value="제출">
        </form>

        <hr>

        <form action="p5.jsp" method="get">
            좋아하는 영화를 선택하세요, 복수선택가능<br>
            <input type="checkbox" name="movies" value="택시드라이버">택시드라이버<br>
            <input type="checkbox" name="movies" value="시네마천국">시네마천국<br>
            <input type="checkbox" name="movies" value="세상밖으로">세상밖으로<br>
            <input type="checkbox" name="movies" value="혹성탈출">혹성탈출<br>
            <input type="submit" value="전송">
        </form>

    </body>
</html>
