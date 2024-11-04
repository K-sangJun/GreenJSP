<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오전 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("id") == null){
        response.sendRedirect("/D20241101/rsp/login.jsp");
    }
%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="/D20241104/rsp/css/style.css">
        <script src="https://code.jquery.com/jquery-latest.min.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="img-wrap">
                <div class="img">
                    <img id="computer-img" src="/D20241104/rsp/img/load.gif">
                </div>
                <div class="vs">
                    <span>VS</span>
                </div>
                <div class="img">
                    <img id="user-img" src="/D20241104/rsp/img/load.gif">
                </div>
            </div>
            <div class="btn-wrap">
                <a href="#" class="start-btn on" id="start">시작</a>
                <a href="#" class="end-btn" id="end">종료</a>
                <a href="#" class="rsp-btn" data-rsp="1">가위</a>
                <a href="#" class="rsp-btn" data-rsp="0">바위</a>
                <a href="#" class="rsp-btn" data-rsp="2">보</a>
            </div>
            <div class="result-wrap">
                <span id="result">시작을 눌러주세요</span>
                <span id="per"></span>

                <span style="font-size: 2rem; height: 30px">최고점 [ID: ${applicationScope.maxId == null ? "없음" : applicationScope.maxId} ,점수: ${applicationScope.maxScore == null ? 0 : applicationScope.maxScore}]</span>
            </div>
        </div>
        <span id="addScore" style="font-size: 2rem; text-align: center; position: fixed; top: 10px; right: 10px; background-color: red; border-radius: 20px; border: 1px solid black; color: yellow; cursor: pointer" >점수기록</span>

    </body>
</html>

<script src="/D20241104/rsp/script/script.js"></script>