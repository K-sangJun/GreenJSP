<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
ForwardResult<br>
<%= request.getAttribute("data")%><br>
${requestScope.data}<br>
<%= request.getParameter("data")%><br>
${param.data}<br>

</body>
</html>
