<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="fragments/header.jsp">
    <jsp:param name="title" value="반갑헤드aa"/>
</jsp:include>
<p>반갑 꺠롱꺠롱</p>
<a href="p2.jsp">p2로 가라</a>
<jsp:include page="fragments/footer.jsp">
    <jsp:param name="title" value="잘가푸터bb"/>
</jsp:include>
</body>
</html>
