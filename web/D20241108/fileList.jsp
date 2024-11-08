<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="D20241108.dao.MyFileDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="D20241108.dto.MyFileDTO" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-08
  Time: 오전 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>File List</title>
    </head>
    <body>
        <h1>DB에 등록된 파일 목록 보기</h1>
        <a href="/D20241108/fileUploadMain.jsp">파일 등록하기</a>
        <%
            MyFileDAO myFileDAO = new MyFileDAO();
            List<MyFileDTO> myFileList = myFileDAO.selectAll();
            myFileDAO.close();
        %>

        <table border="1">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>이름</th>
                    <th>제목</th>
                    <th>카테고리</th>
                    <th>파일</th>
                    <th>일자</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="file" varStatus="status" items="<%= myFileList%>">
                    <tr>
                        <td>${file.idx}</td>
                        <td>${file.name}</td>
                        <td>${file.title}</td>
                        <td>${file.cate}</td>
                        <td><a href="/D20241108/uploads/${file.sfile}" download="${file.ofile}">${file.ofile}</a></td>
                        <td>${file.postdate}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
