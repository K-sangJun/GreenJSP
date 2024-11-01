<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="D20241101.dto.Shop" %>
<%@ page import="D20241101.dao.ShopDao" %>
<%@ page import="D20241101.dao.ProductDao" %>
<%@ page import="D20241101.dto.Product" %>
<%@ page import="D20241101.dao.OrderDao" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-01
  Time: 오전 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/D20241101/layout/header.jsp" />
<jsp:include page="/D20241101/layout/menu.jsp" />
<link rel="stylesheet" href="/D20241101/css/registerOrder.css">

<%
    ShopDao shopDao = new ShopDao();
    ArrayList<Shop> shops = shopDao.getShops();

    ProductDao productDao = new ProductDao();
    ArrayList<Product> products = productDao.getProducts();

    OrderDao orderDao = new OrderDao();
    int maxOrderNo = orderDao.getMaxOrderNo();

    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String now = sdf.format(date);
%>

<section>
    <h1>주문등록</h1>
    <table border="1">
        <tbody>
            <tr>
                <td>주문번호</td>
                <td>
                    <input type="text" name="ORDERNO" value="<%= maxOrderNo%>" readonly class="required text-center"
                           data-name="주문번호가 입력되지 않았습니다!">
                </td>
            </tr>
            <tr>
                <td>주문점포</td>
                <td>
                    <select name="SHOPNO" class="required" data-name="주문점포가 선택되지 않았습니다!">
                        <option value="">점포선택</option>
                        <c:forEach varStatus="status" var="shop" items="<%= shops%>">
                            <option value="${shop.SHOPNO}">${shop.SHOPNAME}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>주문일자</td>
                <td><input type="date" name="ORDERDATE" value="<%= now%>" class="required text-center"
                           data-name="주문일자가 입력되지 않았습니다!"></td>
            </tr>
            <tr>
                <td>제품코드</td>
                <td>
                    <select name="PCODE" class="required" data-name="제품코드가 선택되지 않았습니다!">
                        <option value="">코드선택</option>
                        <c:forEach varStatus="status" var="product" items="<%= products%>">
                            <option value="${product.PCODE}">${product.PNAME}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>주문수량</td>
                <td><input type="number" name="AMOUNT" class="required text-right" data-name="주문수량이 입력되지 않았습니다!"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="주문등록" id="sub-btn">
                    <input type="button" value="다시쓰기" id="reset-btn">
                </td>
            </tr>
        </tbody>
    </table>
</section>
<jsp:include page="/D20241101/layout/footer.jsp" />
<script type="module" src="/D20241101/script/registerOrder.js"></script>