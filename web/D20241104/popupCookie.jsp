<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-04
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String chkVal = request.getParameter("inactiveToday");

    boolean result = false;
    String msg = "";

    if (chkVal != null && chkVal.equals("1")) {
        Cookie cookie = new Cookie("PopupClose", "off");
        cookie.setPath(request.getContextPath());
        cookie.setMaxAge(60 * 60 * 24);
        response.addCookie(cookie);
//        out.print("쿠킹 : 하루 동안 열지 않음");
        result = true;
        msg = "하루동안 열지않음!";
    }

    String json = "{\"result\": "+ result +",\"message\": \""+ msg +"\"}";
    out.print(json);


%>
