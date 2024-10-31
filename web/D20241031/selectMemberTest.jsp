<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/D20241031/css/selectMemberTest.css">
<jsp:include page="/D20241031/layout/header.jsp" />
<jsp:include page="/D20241031/layout/menu.jsp" />
<section>
    <h1 style="text-align: center">회원목록조회/수정</h1>
    <table border="1">
        <thead>
            <tr>
                <th>회원번호</th>
                <th>회원성명</th>
                <th>전화번호</th>
                <th>주소</th>
                <th>가입일자</th>
                <th>고객등급</th>
                <th>거주지역</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${requestScope.members}" var="member" varStatus="status">
                <tr>
                    <td><a href="/getMemberTest?custno=${member.custno}">${member.custno}</a></td>
                    <td>${member.custname}</td>
                    <td>${member.phone}</td>
                    <td>${member.address}</td>
                    <td>${member.joindate}</td>
                    <td>${member.grade}</td>
                    <td>${member.city}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</section>
<jsp:include page="/D20241031/layout/footer.jsp" />


