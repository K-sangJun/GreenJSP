<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="member" class="pojo.Member" scope="page"/>
<jsp:setProperty name="member" property="id" value="aaa"/>
<jsp:setProperty name="member" property="pw" value="1234"/>
<jsp:setProperty name="member" property="name" value="홍킬동"/>

<%
    request.setAttribute("member", member);
    request.getRequestDispatcher("/D20241029/bean_result.jsp").forward(request, response);
%>

</body>
</html>
