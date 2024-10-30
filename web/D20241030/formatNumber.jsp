<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-30
  Time: 오전 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <fmt:formatNumber value="1234567.89" groupingUsed="false" /><br>
        <fmt:formatNumber value="1234567.89" groupingUsed="true" /><br>
        <fmt:formatNumber value="0.5" type="percent" /><br>
        <fmt:formatNumber value="10000" type="currency" /><br>
        <fmt:formatNumber value="10000" type="currency" currencySymbol="$" /><br>
        <fmt:formatNumber value="10000" type="currency" currencyCode="USD" /><br>
        <hr>
        <h3>주요 ISO 4217 통화 코드 목록</h3>
        <table border="1">
            <thead>
                <tr>
                    <th>코드</th>
                    <th>국가</th>
                    <th>통화이름</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>USD</td>
                    <td>미국</td>
                    <td>미국 달러(US Dollar)</td>
                </tr>
                <tr>
                    <td>KRW</td>
                    <td>대한민국</td>
                    <td>대한민국 원(South Korea Won)</td>
                </tr>
                <tr>
                    <td>EUR</td>
                    <td>유럽연합</td>
                    <td>유로(Euro)</td>
                </tr>
                <tr>
                    <td>JPY</td>
                    <td>일본</td>
                    <td>일본 엔(Japanese Yen)</td>
                </tr>
                <tr>
                    <td>CNY</td>
                    <td>중국</td>
                    <td>중국 위안(Chinese Yuan)</td>
                </tr>
                <tr>
                    <td>GBP</td>
                    <td>영국</td>
                    <td>영국 파운드(British Pound)</td>
                </tr>
                <tr>
                    <td>AUD</td>
                    <td>호주</td>
                    <td>호주 달러(Australian Dollar)</td>
                </tr>
                <tr>
                    <td>CAD</td>
                    <td>캐나다</td>
                    <td>캐나다 달러(Canadian Dollar)</td>
                </tr>
                <tr>
                    <td>CHF</td>
                    <td>스위스</td>
                    <td>스위스 프랑(Swiss Franc)</td>
                </tr>
                <tr>
                    <td>HKD</td>
                    <td>홍콩</td>
                    <td>홍콩 달러(Hong kong Dollar)</td>
                </tr>
                <tr>
                    <td>SGD</td>
                    <td>싱가포르</td>
                    <td>싱가포르 달러(Singapore Dollar)</td>
                </tr>
                <tr>
                    <td>NZD</td>
                    <td>뉴질랜드</td>
                    <td>뉴질랜드 달러(New zealand Dollar)</td>
                </tr>
                <tr>
                    <td>RUB</td>
                    <td>러시아</td>
                    <td>러시아 루블(Russian Ruble)</td>
                </tr>
            </tbody>
        </table>
        <hr>
        <fmt:formatNumber value="123456.789" pattern="#,#00.00"/><br>
        <fmt:formatNumber value="123456.789" pattern="#,#00.00#"/><br>
        <fmt:formatNumber value="123456.789" pattern="#,#00.0000"/><br>
        <fmt:formatNumber value="123456.789" pattern="#,000.00#"/><br>

        <fmt:formatNumber value="12345.6789" maxFractionDigits="2"/><br>
        <fmt:formatNumber value="12345.6789" maxIntegerDigits="3"/><br>
        <fmt:formatNumber value="12345.6789" maxIntegerDigits="4" maxFractionDigits="3"/><br>
        
    </body>
</html>
