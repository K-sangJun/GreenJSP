<%@ page import="java.util.ArrayList" %>
<%@ page import="D20241101.dao.OrderDao" %>
<%@ page import="D20241101.dto.OrderListShop" %>
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
<link rel="stylesheet" href="/D20241101/css/orderList.css">


<%
    OrderDao orderDao = new OrderDao();
    ArrayList<OrderListShop> orderListShops = orderDao.getOrderListShop();
%>
<section>
    <h1>점포별 주문현황</h1>
    <table border="1">
        <thead>
            <tr>
                <th>할인점코드</th>
                <th>제품코드</th>
                <th>제품명</th>
                <th>주문수량</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="orderShop" items="<%= orderListShops%>" varStatus="status">
                <tr>
                    <td class="text-center">${orderShop.SHOPNO}</td>
                    <td class="text-center">${orderShop.PCODE}</td>
                    <td>${orderShop.PNAME}</td>
                    <td class="text-right"><fmt:formatNumber value="${orderShop.AMOUNT}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</section>
<jsp:include page="/D20241101/layout/footer.jsp" />
