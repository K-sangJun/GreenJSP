<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-29
  Time: 오후 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
    <c:choose>
        <c:when test="${param.fruit == 'apple'}">
            <p>에뽀</p>
            <img src="https://cdn.mkhealth.co.kr/news/photo/202010/50970_51164_4758.jpg">
        </c:when>
        <c:when test="${param.fruit == 'banana'}">`
            <p>뻐내너</p>
            <img src="https://cdn.esocialtimes.com/news/photo/202404/35423_26643_2444.jpg">
        </c:when>
        <c:when test="${param.fruit == 'pair'}">
            <p>배~</p>
            <img src="https://cdn.dtnews24.com/news/photo/202109/711481_313180_565.jpg">
        </c:when>
        <c:otherwise>
            <p>나는~ 오뤤지~</p>
            <img src="https://oasisprodproduct.edge.naverncp.com/3865/detail/detail_3865_0_c5b2f9cd-84e1-403e-9eab-fedbdd657980.jpg">
        </c:otherwise>
    </c:choose>
    </body>
</html>
