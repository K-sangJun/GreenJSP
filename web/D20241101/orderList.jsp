<%@ page import="java.util.ArrayList" %>
<%@ page import="D20241101.dto.OrderList" %>
<%@ page import="D20241101.dao.OrderDao" %>
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
<link rel="stylesheet" href="/D20241101/css/orderListShop.css">


<%
    OrderDao orderDao = new OrderDao();
    ArrayList<OrderList> orderLists = orderDao.getOrderList();
%>
<section>
    <h1>주문목록</h1>
    <table border="1">
        <thead>
            <tr>
                <th>할인점코드</th>
                <th>점포명</th>
                <th>주문번호</th>
                <th>주문일자</th>
                <th>제품코드</th>
                <th>제품명</th>
                <th>주문수량</th>
                <th>단가</th>
                <th>소비자가격</th>
                <th>할인가격</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="order" items="<%= orderLists%>" varStatus="status">
                <tr>
                    <td class="text-center">${order.SHOPNO}</td>
                    <td>${order.SHOPNAME}</td>
                    <td class="text-center">${order.ORDERNO}</td>
                    <td class="text-center">${order.ORDERDATE}</td>
                    <td class="text-center">${order.PCODE}</td>
                    <td>${order.PNAME}</td>
                    <td class="text-right"><fmt:formatNumber value="${order.AMOUNT}" /></td>
                    <td class="text-right"><fmt:formatNumber value="${order.COST}" /></td>
                    <td class="text-right"><fmt:formatNumber value="${order.consumerPrice}" /></td>
                    <td class="text-right"><fmt:formatNumber value="${order.discountPrice}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</section>
<jsp:include page="/D20241101/layout/footer.jsp" />
