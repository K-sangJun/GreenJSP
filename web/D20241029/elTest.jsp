<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  정수: ${10}<br>
  실수: ${5.3}<br>
  문자열: ${'James'}<br>
  논리형(참/거짓): ${10 gt 5 && 3 lt 2}<br>
<%--  gt:크다, lt:작다 --%>
  null: ${null}<br>
  연산: ${3 div 2}
x에 저장된 값이 10보다 크면 big이라고 출력되고, 작으면 small이라고 출력하자 x와 10은 절대 같지않다.
  삼항연산: ${param.x > 10 ? "big" : "small"}
</body>
</html>
