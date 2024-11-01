<%@ page import="java.util.ArrayList" %>
<%@ page import="D20241101.dto.OrderList" %>
<%@ page import="D20241101.dao.OrderDao" %>
<%@ page import="D20241101.dao.ProductDao" %>
<%@ page import="D20241101.dto.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-01
  Time: 오전 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/D20241101/layout/header.jsp" />
<jsp:include page="/D20241101/layout/menu.jsp" />
<link rel="stylesheet" href="/D20241101/css/productList.css">


<%
    ProductDao productDao = new ProductDao();
    ArrayList<Product> products = productDao.getProductSales();
%>
<section>
    <h1>주문목록</h1>
    <table border="1">
        <thead>
            <tr>
                <th>제품코드</th>
                <th>제품명</th>
                <th>단가</th>
                <th>할인률(10%)</th>
                <th>할인률(15%)</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="<%= products%>" varStatus="status">
                <tr>
                    <td class="text-center">${product.PCODE}</td>
                    <td>${product.PNAME}</td>
                    <td class="text-right"><fmt:formatNumber value="${product.COST}" /></td>
                    <td class="text-right"><fmt:formatNumber value="${product.tenCost}" /></td>
                    <td class="text-right"><fmt:formatNumber value="${product.fifteenCost}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</section>
<jsp:include page="/D20241101/layout/footer.jsp" />
