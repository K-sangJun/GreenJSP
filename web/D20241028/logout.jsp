<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오후 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
    response.sendRedirect("/login.jsp");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
