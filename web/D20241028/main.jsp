<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("test", "나는 메인에서 넣은 데이터당~");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="header.jsp"%>
<h1>Main Page</h1>
<a href="sub.jsp">서브 페이지로 가기</a>
<%@ include file="footer.jsp"%>
</body>
</html>
