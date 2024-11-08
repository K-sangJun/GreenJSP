<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-07
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <h1>업로드할 파일을 뽑!으시오~</h1>
    <hr>
    <body>
        <form action="/singleUpload" method="post" enctype="multipart/form-data" >
            작성자 : <input type="text" name="author"><br>
            업로드파일 : <input type="file" name="fileName"><br>
            <input type="submit">
        </form>
    </body>
</html>
