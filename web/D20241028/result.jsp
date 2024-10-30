<%@ page import="java.util.ArrayList" %>
<%@ page import="java.domain.Member" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오후 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% ArrayList<Member> members = (ArrayList<Member>) request.getAttribute("members");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    table, td, th, tr{
        border: 1px solid black;
        border-collapse: collapse;
    }
</style>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>PW</th>
        <th>NAME</th>
    </tr>
    </thead>
    <tbody>
        <% for(int i=0; i<members.size(); i++){ %>
            <tr>
                <td><%= members.get(i).getId()%></td>
                <td><%= members.get(i).getPw()%></td>
                <td><%= members.get(i).getName()%></td>
            </tr>
        <% }%>
    </tbody>
</table>
<a href="register.jsp">회원가입</a>
</body>
</html>
