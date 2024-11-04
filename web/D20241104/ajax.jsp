<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오전 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <body>
        <h1>머릿글</h1>
        아이디: <input name="id" value="Ford">
        <button type="button" onclick="loadDoc()">ID 중복확인</button>

        <div id="demo">
            <h2>Let AJAX change this text</h2>
        </div>

        <a href="/D20241104/p1.jsp">go to p1</a>

    </body>
</html>
<script>
    function loadDoc() {

        let id = document.querySelector("input[name=id]").value;

        const xhttp = new XMLHttpRequest();
        xhttp.onload = function () {
            document.getElementById("demo").innerHTML = this.responseText;
        }

        xhttp.open("GET", "/demo?id=" + id, true);
        xhttp.send();
    }
</script>