<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    ${param.result} <br>
    <jsp:useBean id="member" scope="request" class="pojo.Member"/>
    <jsp:setProperty name="member" property="*"/>

    <jsp:getProperty name="member" property="id"/> <br>
    <jsp:getProperty name="member" property="pw"/> <br>
    <jsp:getProperty name="member" property="name"/> <br>
</body>
</html>
