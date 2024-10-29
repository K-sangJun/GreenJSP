<%--
  Created by IntelliJ IDEA.\
  User: GGG
  Date: 2024-10-24
  Time: 오후 2:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String name = request.getParameter("userName");
    int age = Integer.parseInt(request.getParameter("userAge"));
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button id="aaa">넣기</button>
<div>
    <p id="name"></p>
    <p id="age"></p>
    <a href="third.jsp"></a>
</div>
</body>
</html>

<script>
    document.querySelector("#aaa").addEventListener("click", function () {
        if (this.innerHTML === "넣기") {
            document.querySelector("#name").innerHTML = "이름 : <%  name %>";
            document.querySelector("#age").innerHTML = "나이 : <%= age %>";
            this.innerHTML = "빼기";
        } else {
            document.querySelector("#name").innerHTML = "";
            document.querySelector("#age").innerHTML = "";
            this.innerHTML = "넣기";
        }
    });
</script>
