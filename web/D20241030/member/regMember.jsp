<%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-10-30
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        width: 40%;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        height: 50px;
        font-size: 2rem;
    }

    input[type=text], input[type=date] {
        font-size: 2rem;
        width: 60%;
    }

    input[type=submit] {
        font-size: 2rem;
        width: 50%;
    }

    input {
        text-align: center;
        font-size: 2rem;
        width: 50%;
    }
</style>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <form action="/registerMember" method="post" id="frm">

            <div class="container">
                <div class="items">
                    <label>이름</label>
                    <input type="text" name="name" class="required">
                </div>
                <div class="items">
                    <label>전화번호</label>
                    <input type="text" name="phone" class="required">
                </div>
                <div class="items">
                    <label>주소</label>
                    <input type="text" name="addr" class="required">
                </div>
                <div class="items">
                    <label>생일</label>
                    <input type="date" name="birth" class="required">
                </div>
                <div class="items">
                    <input id="sub-btn" type="submit" value="등록하기">
                    <input id="return-btn" value="목록보기" type="button" onclick="location.href='/getMemberList'">
                </div>
            </div>
        </form>
    </body>
</html>

<script>

    document.querySelector("#sub-btn").addEventListener("click", function (e) {
        e.preventDefault();

        const inputs = document.querySelectorAll(".required");

        for (const input of inputs) {
            if (input.value == "") {
                input.focus();
                alert(input.name + "을 입력해 주세요.");
                return
            }
        }

        document.querySelector("#frm").submit();
    })


</script>
