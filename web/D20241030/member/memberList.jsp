<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-30
  Time: 오전 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .del-btn {
        width: 100%;
        height: 100%;
        background-color: rgba(253, 104, 104, 0.63);
        border: 1px solid red;
        border-radius: 2px;
        cursor: pointer;
    }
</style>
<html>
    <head>
        <title>Title</title>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    </head>
    <body>
        <input id="return-btn" value="인덱스로" type="button" onclick="location.href='/D20241030/member/memberIndex.jsp'">
        <table border="1">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>이름</th>
                    <th>전화번호</th>
                    <th>주소</th>
                    <th>생일</th>
                    <th>수정</th>
                    <th>삭제</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="member" varStatus="status" items="${requestScope.members}">
                    <tr>
                        <td>${member.mno}</td>
                        <td>${member.name}</td>
                        <td>${member.phone}</td>
                        <td>${member.addr}</td>
                        <td>${member.birth}</td>
                        <td><a href="/getMember?mno=${member.mno}">수정</a></td>
                        <td><a href="/deleteMember?mno=${member.mno}">삭제</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>

<script>


</script>
