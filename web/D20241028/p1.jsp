<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오전 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("x", "page");
    request.setAttribute("x", "request");
    session.setAttribute("x", "session");
    application.setAttribute("x", "application");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>P1 page</h1>
<hr>
page 영역 data : <%=pageContext.getAttribute("x")%><br>
request 영역 data :<%=request.getAttribute("x")%><br>
request 영역 (Parameter) : <%=request.getParameter("x")%><br>
session 영역 data : <%=session.getAttribute("x")%><br>
application 영역 data :<%=application.getAttribute("x")%><br>
<br>
<hr>
<h2>EL 태그로 값 불러오기 </h2>
page 영역 data : ${pageScope.x} <br>
request 영역 data : ${requestScope.x} <br>
request 영역 (Parameter) : ${param.x} <br>
session 영역 data : ${sessionScope.x} <br>
application 영역 data : ${applicationScope.x} <br>
<h2>자바 변수값 읽기</h2>
<%
    String str = "Hello";
    pageContext.setAttribute("str", str);
%>

Str(표현식 태그) : <%= str%><br>
Str(EL) : ${str}<br>
Str(EL) : ${pageScope.str}<br>

</body>
</html>
