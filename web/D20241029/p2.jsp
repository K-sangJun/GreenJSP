<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="member" class="pojo.Member" scope="request"/>

<jsp:setProperty name="member" property="id" value="아이디"/>
<jsp:setProperty name="member" property="pw" value="비번"/>
<jsp:setProperty name="member" property="name" value="이름"/>

<jsp:forward page="p2-result.jsp">
    <jsp:param name="result" value="ok, good한국어"/>
</jsp:forward>
</body>
</html>
