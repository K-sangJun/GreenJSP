<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<String> arrayList = new ArrayList<String>();
    arrayList.add("하이");
    arrayList.add("방가방가");
    arrayList.add("반갑다우");

    pageContext.setAttribute("arrayList", arrayList);
%>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <ul>
            <c:forEach varStatus="status" var="array" items="${pageScope.arrayList}">
                <li>(❁´◡`❁) ${status.count}. ${array}</li>
            </c:forEach>
        </ul>
    </body>

    <c:forEach var="cnt" begin="1" end="10" varStatus="status">
        ${cnt} <c:if test="${not status.last}">,</c:if>
    </c:forEach>
</html>
<%--
    문자열을 저장하는 arraylist 선언, 거기에다가 문자열을 3개정도 넣는다,
    그 리스트를 페이지 영역에 저장한다, foreach로 ul li 태그로 저장되어있는 문자를 출력
--%>
