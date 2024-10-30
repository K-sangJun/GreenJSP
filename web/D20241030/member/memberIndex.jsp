<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-30
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    a{
        font-size: 3rem;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 400px;
        height: 400px;
        border: 1px solid black;
        border-radius: 50px;
        box-shadow: 10px 10px 10px rgba(54, 54, 54, 0.37);
        text-decoration: none;
        color: red;
    }
</style>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <div style="text-align: center">
            회원 등록페이지에서 회원등록 폼을 작성하여 제출하면 회원테이블에 회원정보가 저장된다.
        </div>
        <div style="display: flex; justify-content: space-around">
            <a href="regMember.jsp">등록하기</a>
            <a href="/getMemberList">조회하기</a>
        </div>
    </body>
</html>
