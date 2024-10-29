<%@ page import="servlet.domain.Member" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오후 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Member member = new Member();
    member.setId("green");
    member.setPw("p1234");
    member.setName("김그린");

    pageContext.setAttribute("m", member);
%>
<html>
<head>
    <title>MemberTest</title>
</head>
<body>
    회원정보<br>
    ID: ${pageScope.m.id}<br>
    PW: ${pageScope.m.pw}<br>
    NAME: ${pageScope.m.name}<br>
</body>
</html>
