<%@ page import="D20241108.db.DBConnPool" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-08
  Time: 오전 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>fileUploadMain</title>
    </head>
    <body>
        <h3>파일 업로드</h3>
        <span style="color: red;">${errMessage}</span>
        <form name="fileForm" action="/D20241108/UploadProcess.jsp" method="post" enctype="multipart/form-data" onsubmit="return validateForm(this);">
            작성자: <input type="text" name="name"><br>
            제목: <input type="text" name="title"><br>
            카테고리(선택사항) :<br>
            <input type="checkbox" name="cate" value="사진" checked>사진
            <input type="checkbox" name="cate" value="과제" checked>과제
            <input type="checkbox" name="cate" value="워드" checked>워드
            <input type="checkbox" name="cate" value="음원" checked>음원<br>
            파일: <input type="file" name="attachedFile"><br>

            <input type="submit" value="전송">
        </form>

        <a href="/D20241108/fileList.jsp">리스트로</a>
    </body>
</html>

<script>
    function validateForm(form){
        if (form.name.value == ""){
            alert("작성자를 입력하세요");
            form.name.focus();
            return false
        }

        if (form.title.value == ""){
            alert("제목을 입력하세요");
            form.title.focus();
            return false;
        }

        if (form.attachedFile.value == ""){
            alert("첨부파일은 필수입니다.");
            return false;
        }


    }
</script>
