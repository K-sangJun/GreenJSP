<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-28
  Time: 오전 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("id") != null){
        response.sendRedirect("success.jsp");
    }
%>
<html>
<style>
    .container {
        width: 100%;
        height: 90vh;
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        align-items: center;
    }

    .items {
        width: 300px;
        font-size: 2rem;
        margin: 10px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
    }

    input{
        width: 60%;
        height: 90%;
        font-size: 2rem;
    }

    input:hover{
        background-color: rgba(136, 136, 255, 0.57);
    }

    form{
        border: 1px solid black;
        border-radius: 10px;
        box-shadow: 10px 10px 10px rgba(75, 75, 75, 0.6);
    }

</style>
<head>
    <title>Title</title>
</head>
<body>
<h1>회원가입</h1>
<div class="container">
    <form action="/register" method="post" id="frm">
        <div class="items">
            <span>ID </span>
            <input type="text" name="id" class="required">
        </div>
        <div class="items">
            <span>PW </span>
            <input type="password" name="pw" class="required">
        </div>

        <div class="items">
            <span>Name </span>
            <input type="text" name="name" class="required">
        </div>

        <div class="items" style="justify-content: center">
            <input type="submit" value="회원가입" id="sub_btn">
        </div>
    </form>
</div>
</body>
</html>

<script>

    document.querySelector("#sub_btn").addEventListener("click", function (e){
        e.preventDefault();

        let requires = document.querySelectorAll(".required");

        for (let require of requires){
            if (require.value == ""){
                require.focus();
                alert(require.name + "를 입력하세요");
                return;
            }
        }

        document.querySelector("#frm").submit();
    });

</script>
