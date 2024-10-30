<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>JSTL - 조건문 처리</h1>
        <hr>
<%--        <c:set var="x" value="10" />--%>
<%--        <c:if test="${x == 10}">--%>
<%--            <p>x에 저장된 값은 10 입니다.</p>--%>
<%--        </c:if>--%>
<%--        <c:redirect url="result.jsp" />--%>

<%--        <c:if test="${param.id == 'hgd' && param.pw == '1234'}">--%>
<%--            <c:set var="id" value="${param.id}" scope="session" />--%>
<%--            <c:redirect url="login_suc.jsp" />--%>
<%--        </c:if>--%>

<%--        <c:redirect url="login_fail.jsp" />--%>

        <c:choose>
            <c:when test="${param.id == 'hgd' && param.pw == '1234'}">
                <c:set var="id" value="${param.id}" scope="session" />
                <c:redirect url="login_suc.jsp" />
            </c:when>
            <c:otherwise>
                <c:redirect url="login_fail.jsp" />
            </c:otherwise>
        </c:choose>
    </body>
</html>
