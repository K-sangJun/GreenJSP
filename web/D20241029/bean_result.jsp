<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>회원정보</h3>

${requestScope.member.id}<br>
${requestScope.member.pw}<br>
${requestScope.member.name}<br>
</body>
</html>
