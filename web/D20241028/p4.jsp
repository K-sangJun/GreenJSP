<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String str = "안녕하세요";

        int a = 5
                ,
                b = -5;

    public int abs(int n) {
        if (b < 0) {
            n = -n;
        }
        return n;
    }
%>

<%
    Calendar date = Calendar.getInstance();

%>
<html>
<head>
    <title>p4 Page</title>
</head>
<body>
<!-- HTML 주석 -->
<%-- JSP 주석 --%>
<%= str%><br>
<%= a %>의 절대값: <%= abs(a)%><br>
<%= b %>의 절대값: <%= abs(b)%><br>

</body>
</html>
