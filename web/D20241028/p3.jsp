<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
  int global_cnt = 0;
%>

<%
  int local_cnt = 0;
  out.print("<br> local_cnt : ");
  out.print(local_cnt++);

  out.print("<br> global_cnt : ");
  out.print(global_cnt++);
%>
<html>
<head>
    <title>P3 Page</title>
</head>
<body>

</body>
</html>
