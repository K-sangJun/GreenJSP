<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/D20241031/css/selectMemberTest.css">
<jsp:include page="/D20241031/layout/header.jsp" />
<jsp:include page="/D20241031/layout/menu.jsp" />
<section>
    <h1 style="text-align: center">회원매출조회</h1>
    <table border="1">
        <thead>
            <tr>
                <th>회원번호</th>
                <th>회원성명</th>
                <th>고객등급</th>
                <th>매출</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${requestScope.sales}" var="sale" varStatus="status">
                <tr>
                    <td>${sale.custno}</td>
                    <td>${sale.custname}</td>
                    <td>${sale.grade}</td>
                    <td><fmt:formatNumber value="${sale.sales}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</section>
<jsp:include page="/D20241031/layout/footer.jsp" />


