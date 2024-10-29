<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//  response.sendRedirect("rep_result.jsp");

  request.getRequestDispatcher("req_forward_result.jsp").forward(request, response);
%>