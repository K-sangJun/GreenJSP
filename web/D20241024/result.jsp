<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-24
  Time: 오후 5:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//  int num1 =  Integer.parseInt(request.getParameter("num1"));
//  int num2 =  Integer.parseInt(request.getParameter("num2"));
  int result =  Integer.parseInt(request.getParameter("result"));
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
  <p><%= result %></p>
</body>
</html>
