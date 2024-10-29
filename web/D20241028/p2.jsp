<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오전 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! //선언문 : 서비스 밖에 = 전역변수(멤버변수)
    String msg = "Hello";
    public String f(){
        return msg;
    }
%>
<% //스크립틀릿 : 서비스지역
    String msg = "Bye";
%>

<html>
<head>
    <title>P2 Page</title>
</head>
<body>
msg : <%=msg%><br>
함수 : <%= f()%>
</body>
</html>
