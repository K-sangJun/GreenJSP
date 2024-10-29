<%@ page import="servlet.D20241028.domain.Member" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  Member member = (Member) request.getAttribute("member");
%>
<div>ID:   <%= member.getId()%></div>
<div>PW:   <%= member.getPw()%></div>
<div>NAME: <%= member.getName()%></div>
</body>
</html>
