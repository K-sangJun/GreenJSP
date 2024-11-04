<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오전 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String fName = request.getParameter("fname");
    String lName = request.getParameter("lname");

    out.print("Hello~ " + fName + " " + lName);
%>
