<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오후 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>쿠키 설정</h1>
        <%
            Cookie cookie = new Cookie("myCookie", "쿠키_맛나용"); // 쿠키를 만들었어요 ~
            cookie.setPath(request.getPathInfo()); //
            cookie.setMaxAge(60 * 60); //유지기간 : 초단위
            response.addCookie(cookie); //쿠키를 추가 했어요.
        %>
        <h2>쿠키 설정 직후 쿠키값 확인하기</h2>
        <%
            Cookie[] cookies = request.getCookies(); // 요청헤더의 모든 쿠키 얻어내기
            if (cookies != null){
                for (Cookie c : cookies){
                    String cookieName = c.getName();
                    String cookieValue = c.getValue();

                    out.print(String.format("%s : %s<br>", cookieName, cookieValue));
                }
            }
        %>
        <h3>페이지 이동 후 쿠키값 확인하기</h3>
        <a href="/D20241104/cookieResult.jsp">쿠키값확인하러가기</a>
    </body>
</html>
