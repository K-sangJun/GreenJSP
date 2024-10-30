<%@ page import="D20241029.pojo.Member" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <style>
        body {
        <%--background-color: ${param.color};--%>
        }
    </style>
    <body>
        <p>JSTL core-set 사용</p>
        <c:set var="msg" value="${'Good Luck'}" scope="request" />

        <c:set var="member" value="<%= new Member()%>" />
        <c:set target="${member}" property="id" value="aaa" />
        <c:set target="${member}" property="pw" value="1234" />
        <c:set target="${member}" property="name" value="홍씨" />

        <h3>회원정보</h3>
        <ul>
            <li>아이디 : ${member.id}</li>
            <li>패스워드 : ${member.pw}</li>
            <li>이름 : ${member.name}</li>
        </ul>

<%--        msg: ${requestScope.msg}<br>--%>
<%--        <jsp:forward page="result.jsp" />--%>
<%--        <c:set var="age" scope="request">${100}</c:set>--%>
<%--        age: ${requestScope.age}--%>
<%--        <c:set var="color" scope="session" value="${param.color}" />--%>
<%--        <c:redirect url="result.jsp" />--%>
    </body>
</html>
