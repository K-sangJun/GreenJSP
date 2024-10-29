<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("data", "저는 request 영역의 데이터 입니다. 선물 받아랏!");
//    response.sendRedirect("rep_result.jsp?data=" + URLEncoder.encode("한글받아랏!", StandardCharsets.UTF_8));
    request.getRequestDispatcher("req_forward_result.jsp?data=" + URLEncoder.encode("한글받아랏!", StandardCharsets.UTF_8)).forward(request, response);
//    request.getRequestDispatcher("rep_result.jsp").forward(request, response);
%>